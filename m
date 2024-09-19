Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24346154442
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726745754; cv=none; b=om73yHAQPWJR75l3tjRpQU8oWrhKsR89rtrNEciCgV6KeB4H9WiYwGVYdS7mwGBrcFwomCcOIXf6oowwcABuojRDS31gDTAkhj3X2P6aXPOsUvs3Yn4ULTILHNCNlyHeaUZZvEkqpIk+qOJYG7rfQlpYskwG1dr1nl/MLUBhAX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726745754; c=relaxed/simple;
	bh=Hz3A0/0R+45b0xVWtEZousmpZfR2ld3QsqhKH92Gvg4=;
	h=To:Subject:From:Message-Id:Date; b=BCJusxZmRvIGHyQuUp/rYbhmzL1f6XDJqvc97ieul82no9A1CkKn1e8HO5rBjvmalBPRwirNpCYcE5rf49yyapXL0MkocAHushNzJAxldad8ow4f9x/ifi8cnIuJDv2OZBkBLDJdlAFdgDXeSQOR8tdR26joiw3MV/bJ08YkEQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e6X4vgd1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e6X4vgd1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8D0C4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726745753;
	bh=Hz3A0/0R+45b0xVWtEZousmpZfR2ld3QsqhKH92Gvg4=;
	h=To:Subject:From:Date:From;
	b=e6X4vgd19lgP0TZ97DcXPKbpSirNXB1rrChSvmrE3sXgV1rbVDbmkfY6NSkWBUlKI
	 UKKWyH/IeogP4eGuSZbekZ9XhFOu7DwoQo6yfmEsq1B++iDyO1vlPKuOmjrnzkuqf7
	 abI+btl9boB1lhKDSz7nH8CrzOaPtcrKFhFu1lTX0T7LRZJYusRJWSN2V6If1rxJEW
	 yakXOfw4yUnURwba1CkH8OpiUKW4OdZVYg9m8ayDi1zIDCVjUTQjZ7eD8UxWU0cKHB
	 EC83vxUsTzDNHRbQwggsqeZ9ZKz+vw1gKANyR/ETM+n3+vup3rufunrfuS4vr/tFjN
	 VNRCwITIAEcAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97881CE8D78
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172674575361.20223.17215683530476654582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a36376be1739aa79e3ca1c023ae6722778beebf788a696fda81d5dafbd76f262
Date: Thu, 19 Sep 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726745753
