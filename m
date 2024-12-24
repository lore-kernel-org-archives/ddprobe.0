Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FFD11DFD1
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735053954; cv=none; b=guMYe9Iulvib1UWdYfyqqqtiuIS2tVl4lQu4xAaLoUNqamX7eCnYyruJRcDNMPyCiiBsQRMC7SZP8kbipgBcERcmFsbP0yIJL1aDzfp8+q5ENVpd19GgvCAMmb1iucpNlha5jnke5kLvztjVWNfYS7FQyEXjMK6KnbfB9fgfKoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735053954; c=relaxed/simple;
	bh=iCZ4pUHb2yoRzpMc2ILsrlwtvijy6xH3LwQnWsDqG+c=;
	h=To:Subject:From:Message-Id:Date; b=UF29eMBpo8kqpu3y5vWjvOmcP39p1rST4XWoILcMyhhWP2w1jKQmIbvtjfBG0JiAgeOgtKs1jyRk+PyOCPXtPMfN+qsr8/Dfm/GIhjfs7LKRNmWqLT3EqHKaJR1CrqyrEEy+Wm5wnfye3vq77hmRZ6EAjM8xGexGtj+DWThFLbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iaUDaYy8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iaUDaYy8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE875C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735053953;
	bh=iCZ4pUHb2yoRzpMc2ILsrlwtvijy6xH3LwQnWsDqG+c=;
	h=To:Subject:From:Date:From;
	b=iaUDaYy8shuoNqvnP/mkp5a92xi6ef2nQQEzP087YL7Qcxr/js+yj9SkK67EPY+/G
	 S5s7VCHU74IdW9gfDvmAMNikYm/glqzht3E6icTYxIPO3ibcHq8Hf1KvFuTV3thuPf
	 c8dMx3/MKhToqB/U5vjT2mFRY0d4s7kM8zwnY0nUXA+QaQ0ZqErdjuk1G3cDahxiqB
	 PaeQjulKejtuihtF3BWi+O/DJLYgcqnYgtxXfEhMj3UHez4x8ShrAo1arOygbSdtB8
	 jKNlSxzukpP5i9zMvXiGsosMk00Qul6Px1z5yxZqrLGI/wQMF3PJMHFceV7gAuSqeA
	 SAkAjEUMFnbCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A02BE7718D
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173505395362.26737.13826418561055118791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbedc8da46be0841b2da94f8c8086c9701e9d524204135f9c3c4729ce4acca66
Date: Tue, 24 Dec 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735053953
