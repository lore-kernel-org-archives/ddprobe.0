Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BA6292B4B
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762151394; cv=none; b=SCUTMWTB4MJjEbi4jMCtQ0q3UAlwOxSrTOQCXEaKymw7vSYxmur/jESAsxLilJ+nlN+SK1jhPVWChlSzByKfSXJ0uHOmcOb/ag7L8VSyCgACtj/UQlDIAeL902XD+0l7kKv3jlqVDcvmiSgYxklLt6C/nZgrZqWO1UzYtuhcZNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762151394; c=relaxed/simple;
	bh=ToHKhEJdBg6Ryzn9Gn8QVRRtaWUp2YUHxSWmY/e0X1k=;
	h=To:Subject:From:Message-Id:Date; b=N/QpnULl7/QQQY4+pCBF2qg40Fo1+N+tMN0amnktCG9CnsSBsrG4PAVaazugyfrmr12t2yKZM9U6j5IE0aNa6XruM/efVCCMhL3ByluhYaGt58QmRnprR7rbBxdvTKWqBGeESV/EO9PlZVqOssZLkUk3Ff5miamaa3emdEulfHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LYCzyPu4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LYCzyPu4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A418DC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762151393;
	bh=ToHKhEJdBg6Ryzn9Gn8QVRRtaWUp2YUHxSWmY/e0X1k=;
	h=To:Subject:From:Date:From;
	b=LYCzyPu4sOYtBj+vJ65uzamZS008L+8JlhI9XDXk9jZfUMk24kfIDpHjHowaYXeNh
	 CSwqxIWCcTjSzBPwyImFCTwllMqyxxLVEi+3wQumAL+HQv6A4U5OD2FtXd2zmm0QA4
	 4tOpeLTDif0OxJpf+BzGew9Pfzt/IPdAolHdLkgyYM4nDX1c5noaqRoI0CBuD4RyEf
	 WGVbOiGy2F9o6H73+o9cBCY4AodXSilt42ThhoUuepgFyAkGZKpxxsbFFI4V2HqCjn
	 al2K7RBsYM8QyC8mX+CLgzXUANo2C+fmBKHCVGoS9VvvWhu2onpYw1jX0acKpHubho
	 SbrzXYvIp5J2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901C6CCF9FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176215139358.32427.4509387488100970031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04854cf58fbb06846ac55866b0d06944ad95eb708f1db701a10dbfd01c2bbf1c
Date: Mon, 03 Nov 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762151393
