Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442CDEEBB
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 07:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764658974; cv=none; b=Ea6d2ZfYy0kuCppQxUcnO9icr2jCR/s79nIRPeLAtiIiKgNY+dqURYRA3LuQKbPEs9nMLwa5aJXWtE7ftrdT42GkknZ+hLdoyk+MZjYz1IShwUIPxM3VhlAHViLw6AgxoOottQ2QlBA37O/6205CWjyg4a0Ej2v2zIdOpSo5xGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764658974; c=relaxed/simple;
	bh=pFqi+uOJ2IYskGlo+e8IEf4Sgwf9LiEdJt0Cajip28M=;
	h=To:Subject:From:Message-Id:Date; b=Oyrx69gTa2Wa+3xxs8ONTaFdxZ7k5OMSF3lyju+pVFyD/5rgba2hrb1iGlnV+SzabEmK8SMYD8SrypVRDy2smQV//cH5kFSKkZtaK0XfIzH8fs61s1uhdeZ8WYEFls+gflaBizIVoy4lK1ksL6HkIdtmtTJAIP49++glMMDKj10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=putIxMJm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="putIxMJm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD82CC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 07:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764658973;
	bh=pFqi+uOJ2IYskGlo+e8IEf4Sgwf9LiEdJt0Cajip28M=;
	h=To:Subject:From:Date:From;
	b=putIxMJmLKqCKIbxyi06v+WoKu4fIlCtTf++28wNZ/M9o6dgsUdK6zf9S+LHRIjFG
	 GIwjzrASBBbnUCKOnU938z07yUN3AcDLS8xcFLbu3pycL8Bb6CuW4Qlbwt6U8jKa+Q
	 VG2z/tDAno8MyL2SIjgTfEPRW1NaAx1i1fKla3AEDSAbtdbtVkfV53gtgZEbPn1krJ
	 MyaE8zzbQJoqaJLjOQXwsUBAn0pY+owBdRVj9l8ExOJr6IqVsCIzOl+2Fjoesw6PcW
	 EKqxenok/8LwQSjzLuOz5IZXIbuxn0vSXPyfzbnjkPRRTzcsgL4S68z+xzOi3C4tcS
	 SCY46hg7VsgDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988FBCFD376
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 07:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176465897361.12037.48487473515266270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcfe3db48f8772fe5485562a4741b0c42ef0f34c46f6a3efbca581f5d3a127f5
Date: Tue, 02 Dec 2025 07:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764658973
