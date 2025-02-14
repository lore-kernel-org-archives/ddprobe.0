Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACE325A64B
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 11:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739534335; cv=none; b=gLywdI62T56A4wDGET+J167rEqX08h9rOFOo5HoJOpVqlPTdSNTpByOYodRNexdEs3TgqZ8GA90jOVDkGbLRe+QNStEhsub+PEPjipjhL8rG/K2FqxYoBlGw+U9MF4iIEeJMFf0XdL1oO//Wgr0wVzqRQ4wrSmmbMNludzEa34U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739534335; c=relaxed/simple;
	bh=YCmAL/27PXLkzkJuAKml8JNi++2Ae4XJGtAI8Sqsivo=;
	h=To:Subject:From:Message-Id:Date; b=V9L7dRCdUYbgbj98r+uzT+4bpJRQRcc7vYRgBMGVjx43AJq51xxcnv90p3v2f2arJ15HVpvrEvp8r2vqxoTEvm1QfjbF+U/bl7+XN6JddqqDif2vzR91xg6N6PuaLhh4IXfO+XsmGfncSBJlGLVEnZrupaPxVfMJlzvbp8iBve8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fXvkBGxj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fXvkBGxj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4FDC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 11:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739534333;
	bh=YCmAL/27PXLkzkJuAKml8JNi++2Ae4XJGtAI8Sqsivo=;
	h=To:Subject:From:Date:From;
	b=fXvkBGxjAM5QLNrsuNgfakM3f2s8+wx10Wa9sOuC6G+gvsVPaVxhVU8qCMOmO/7xH
	 UeDSgAPZ0rz8QtC3w8oEZlmw+l/A8GZyx04niyChNFrTjS0+qsQYkWaLz2CishpXq4
	 AzXTNE/nJ+5sT9YBKihKLvbw1pQlfepRLGlonQK/Qtt0s70/amykMJEsgAHXqFC3We
	 fpYwHM2qy9vs1jrVQplfgci0FtvhOciMSn4QyNc3Jp46i4W+ye/aUPJpH1CdgPxf92
	 /hOdbtwrWxLPr5mSqGjqBXKbdjltzkm+3qX8sJFjDKG1Pe0IaFHdETB8hUJeQvIW9y
	 MQ9hEoaWJnUWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92955C021A4
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 11:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173953433359.31097.13365312157615313115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2190d30ff42f8b7019d85d060d916aca4faf8d600562c2111f617263e58d8060
Date: Fri, 14 Feb 2025 11:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739534333
