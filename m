Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278DF2309B2
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 18:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777141654; cv=none; b=nmAE7j9+Sy3P6Iq8H8QEa8aQHPFsqojAeSIwd4l0jnnga9WK12Nq7NDUaxJqlbXaNYrDzjBxAV8ZSGs8zxY50DlolxhyLS7+8dbHLL4w19DTz9z62ZjKVEXcrInbykudiV7L2YPEKvLRanUb/Z8d2FAKib4e6gdq9+Rp7PHiUI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777141654; c=relaxed/simple;
	bh=3QM+sFD0ejCnUlnEUGOj8B6MKAGrpjFcqKLgZSh5+7k=;
	h=To:Subject:From:Message-Id:Date; b=UzZlM/v/sXANBsGQHzZHcIiH15Os9F7mmcCL4Hqpj1wS6RI7ZI6WGEDDAjnE2t1KKer7Cs9q5V6/IG5botKlY94wnh1nhJSlVPfO4jHtx8J6PFp79BpLur5cei0OrBnmuBV5GY4UNGugbEaVbk6mYjZlxLdBTkYGHeFIrxvxXg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4H9J8+a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4H9J8+a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD8DEC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 18:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777141653;
	bh=3QM+sFD0ejCnUlnEUGOj8B6MKAGrpjFcqKLgZSh5+7k=;
	h=To:Subject:From:Date:From;
	b=I4H9J8+axKRYbubmFWrSxWtOAE3RCxoGof1157Mf+d+HmOSvMfJMTGjd6D555ud9S
	 DO7VHL5kdOtWakVUOtd4PbQ9qCxMto/Y1k83nmF4fK4Gj6Meb42iJfE4jLVB9FKl7O
	 ZmMmuST7neOC5flAil5IjRBXJiU3O+UlG5woNlCvJLXYaNzt3ZxmYRl0imUxYMCY3k
	 4RgcTl5GmWgOdSItWnhuWrOd0k2jwAiTgXBhQ5HHx8/QRGiPWNqb07Apn3I5TQGHQa
	 rUB6VWvMndkf0nZpmhUELVm9scvDmZ5ClKzWl1LD3xS3l133PChxbtMXBF7TeDYSco
	 tzwlxxlSUKD1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE978FF8860
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 18:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177714165369.26865.5024238993774563559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89afd7b481e8a7fe220a40ed8cd3d693dea8b4479c623d03ad1be3eeab445fad
Date: Sat, 25 Apr 2026 18:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777141653
