Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ADDC6F311
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 09:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717060463; cv=none; b=V+FLyFHkYxPGkkJYuBbyItbWjYDQgZbSC8YCVDdgUrMncm2JiL/SZfEGDvs5AOQBje4FOFWD53KVxVJ0gGZuPdTfDHlpzyJB3LmNhZ6/4Hrchocw/sdgtwcRyMNBS4WO8vLd6PdxSJRJDFhFeJAIl3sMyz9MqVa90jl18S1TL2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717060463; c=relaxed/simple;
	bh=N32sMWXuRmaV3FVuvvPAR+f5WDpRZeix7Ds0/a0ekOM=;
	h=To:Subject:From:Message-Id:Date; b=YvgB6l1CagjgWldYKbA+iomcGc1xIMo1MqtvyZs5b9EL8LWet6fQrarOT+0A/8BuzGXro9wCX309Qegapz4daPfssFuidOtH8NcaCCNx6jyz+M5P+zXaFMhBnV5NyZ7skyL6vTi9YjeNPU0fRBJrKM7w69duJ03CgwvDj3C9bnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ye3q+vMY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ye3q+vMY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEDF7C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 09:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717060463;
	bh=N32sMWXuRmaV3FVuvvPAR+f5WDpRZeix7Ds0/a0ekOM=;
	h=To:Subject:From:Date:From;
	b=Ye3q+vMYH4++ECIhRN+hDBYuQV4Es/AWxQKygtAM2s3BiPNkKQc8+deJ/L8iGEnyG
	 Kb6e0x+JZpjBpHOrAJmlvQrTOSUctDb0VaCwQBp5+T5gI/QCrOhjmCLl8AuojEBUjW
	 7a7R/HG6pqk1DhBK6+8KfRA5Uq8Jhe0ZxLcd+93SQaQO3G8tXUs1OIGImquX7QukqE
	 yrd5hUVTfzhsj4XA06TnnOIz90fkQQz4CIXxA6Yr+uDEM6FvADtVpJMmoKU9tO/4Jx
	 gkYQMaxV1538k8daZgb67yKphvHTC6BnF/ATu4P11hEwfhYqTEdJDli5tWHKuB2SKB
	 rm/kC8WhDgPmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFB19C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 09:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171706046283.20784.16254303174854691699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 608cb113c1486e631e88793293602ddbebfd6ed7e8a1e8a2156f34db5e023958
Date: Thu, 30 May 2024 09:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717060462
