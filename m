Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1346936E487
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 12:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775480134; cv=none; b=I/16zp7jgvnFY8cm2DKhI/8QSowEeoVLfq+sJOV1qsYAOgly0UtTGFpHA+RH0bhQJzPE+rmwcsYZMMxUNCxGEMj+4R269ESy56LQxdYWs9j8FitWCX6geSxTeeIZ6S8mZBuYYb21btiI36ZLCOqc2xEgFD/4vQXZQrV+hDbc2Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775480134; c=relaxed/simple;
	bh=kkTfMFk/0pPs08AoR4sbPjCtAkJjPVILSABo7Yehok4=;
	h=To:Subject:From:Message-Id:Date; b=WUUtbervdzJDFAhMiw1wCweDs3i8eUlObNlEoOXxuLvMz2VmlV5POK3rOQSw/Y+W0QwWM0npbO4fK/tiofX6FCOWg6cjdNCzdLRUWH4iS8jBPZ+tGBK/f4EBblV1eY+NHclGHcq7sQvHDrbM48o4mF6Dy05BLWjVGDZEew/63W0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iNbR8ynC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iNbR8ynC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE777C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 12:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775480133;
	bh=kkTfMFk/0pPs08AoR4sbPjCtAkJjPVILSABo7Yehok4=;
	h=To:Subject:From:Date:From;
	b=iNbR8ynC6ub/4/JZ4qZK7mbShhC8SyYWhaSRchRZJIv38yofb535UUgK7RdlOfOcL
	 yR11aoy5nfkkGkN4J8JwGGPaqixzkXUWhqgqfobVlsP+XmAu1UB5n1sEwZjP1MCkCc
	 MQJy/1ZiUeBhQYfYHW82YbIBltfUL0WKGTmrdXnlqPu+HKzlsIdz55I6i30VPw3mgc
	 ozw9zzBKMKN52KtZiuqpjxsRFCcri//v9nDSP34uk1GPE+4cL+o1yGmhirU/45TcuG
	 RvmdHJbaJQgYwjvrerJfnZUAkRKbwQmulGW0nwrjlLiEo6LoPmCuiejK3CJHYj62h/
	 IH7rqj0TXk5qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB305EF4EDE
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 12:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177548013369.17855.11365760337351413698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1acac7ab84a0026b58b3ea336ea9eef18ccc0b587a82a31f71809e98b18ae527
Date: Mon, 06 Apr 2026 12:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775480133
