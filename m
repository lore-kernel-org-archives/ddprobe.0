Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2EF1384B8
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 20:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708027697; cv=none; b=tFP7JkRXh4Z8939WOXRMGVBRPJQYib0M9n6KlNZclFLPzulFHLDBHySPJ1RYGovWsuXOV7lBSk2I98H9nnUlVNfl61za9rPv1mpINNjmc9Spq12HZwYLfiyJ/WRVD7SO0XdZ0fFBAYiL6aY+HiViZUmi3nvmFoVlpd9nNJNyyAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708027697; c=relaxed/simple;
	bh=2fvJlmEf5brh1iIW1lJVpDqCWHz9aDq/Tu6IpKZR/VI=;
	h=To:Subject:From:Message-Id:Date; b=Luaco+5uBU8G80p2m2RU+f5Ad/mLyRaTp/fHeDq5w25kpyAxGgf3F/+hl1Hp25s6+kZd7CKKO1A+IUXleEEFJUxqRGr8SfIfzQq3YFADch/BrVzDOXGJmew2hp9sADEqqO0YtdBGgrkCBSYkmun5aB/4LgFdIv41QacaBWENeYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V1JvxwYX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V1JvxwYX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9290CC433F1
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 20:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708027696;
	bh=2fvJlmEf5brh1iIW1lJVpDqCWHz9aDq/Tu6IpKZR/VI=;
	h=To:Subject:From:Date:From;
	b=V1JvxwYX9950hQuuuXnXJHrffgKkWmKOn8QLkjAdhTUep8N6fprgE3gcsVWfb3IAR
	 4x912wyIDS2i2/5Yg1gQCf0M7idoOlZGhESP8e5yBkG/6siEoSilQ0Co9ySdK9lAFf
	 JaHIx5b9b0SwvRvueEqMHJa1nKTisealfHJ13Zf3Ov+3kvlqLUbya7gVwQDD1X3JzY
	 OSk9kKgTn+J24J2FNTEUgbQRTLgXsrwbsKXXUnwCr5Z2djpaVChCUDgfv9xj5ux6t1
	 Fo1OtzsdgpMYnAdNcXxxT4veFaJJ76NdcMXXFOx810FSkhoUpq0t8JZ2lSDOr+5AIs
	 tgrENtzsekEOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75213C4829E
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 20:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170802769646.12611.5272908304431836813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af6ba131caa5dfb0a0e4ab4f9577abb7351525ff32a25a1d08d733ccb3dbbaf7
Date: Thu, 15 Feb 2024 20:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708027696
