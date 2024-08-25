Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C73801
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724616954; cv=none; b=BD/6VoiX6E/lBWuBFu3oELY7eSJDYKgkJnKlQOEfF40b58TIx7lasH698KFzrGOwJkRS5qWe/G+0n/CVrUgBWO5S+WObGSlyrHFCiHVMri0MJgqb1cd5jBlo79sqkm++P76njUSkHRMbvQ8riIRCo987eleX1CTrOBqTlRAuY4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724616954; c=relaxed/simple;
	bh=xKdlpfoV+rDNjo0ewpu8ibLHuyjvsbqgAWSH2C6UwhI=;
	h=To:Subject:From:Message-Id:Date; b=tFCKpZB+FqlrAIBMXuXENc9jeZgky7lfxLmtUOlvWzAPKDWzyxe5Z7etEbgNfUTcfGSkbAd1qI3lqJBhIuCKykprghLqm4ys/OWnNo9HkTq3DtFCRdYjAF2ZhookBY65uv4Q5jSbplg8i7TKBwMj7LKux3KtrzZZfyW4Ga7HHh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nvhpL3wL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nvhpL3wL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70A1C4AF63
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724616953;
	bh=xKdlpfoV+rDNjo0ewpu8ibLHuyjvsbqgAWSH2C6UwhI=;
	h=To:Subject:From:Date:From;
	b=nvhpL3wLmGzlqZZyb0QRkxcX1jjxgeqyYOhiItNITkLmyaEM4copDLQ2UqxM83T4L
	 iWcTpJHImQdC4cIZfTfHvno4qL5SkepAPA2s8wDgDlpBigGD6ko+sqOGlREP4c9hjY
	 0MhPepolJMqMKZsLaq+MJ5AV8KKJyF7L7vVyYs+nhupUh/iIDjAoVRNN5JIZ+q9DTl
	 53oU3whX4AwNxOMQDaVMg3hXY/j6SQaZK9q/PgeEC01w7PdbLOUloLBqYXn+xkEAij
	 lpmLVSDoT8iryN+Z/Ec70+jdT90RFoXQSigonxGvKsk27KyxTQmgCU7vnS3IFiwdZg
	 ux1ccgU95HDFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9672AC5320E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172461695359.4470.17608935449340670806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b6aa941929ab9b62c4a8216b87e75deac68269c6b56155c74223863b200e27c
Date: Sun, 25 Aug 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724616953
