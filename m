Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62A1239FCBF
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790140834; cv=none; b=ZThOIr0tXajBtGs4miqG8ma2M7yyZbIWszJ9NLNv9YJi5x8WlLEoOS7a8Nkumbq7h3CwNwWIkNQiF+2j+pr01QO6oR7vDhx02+f/4a+2pfl1dYAlBUf5GZguNpdhDxEc/xLc+t/rIVD9BokXyMYovzZ95ZL8oL0lIsAZIgpNtBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790140834; c=relaxed/simple;
	bh=FPLT5XhwF+lBH0zFuNhAUgPr64XvQLKppjXeEQX3U4Y=;
	h=To:Subject:From:Message-Id:Date; b=eps0q9/+huNR2zyb1/GiHV96Za4fmW1vVx8ccgjJKZviPOztH3BfN6+36ZCfbDIEhAEKWwfd75jzzXTLXiNoTqqj+3c0GNIQQHm2YA4OROsdW56/4y9vWlq+6HK9fwPYB6krFTLiEVMVZEr3kg8h9IQliY0xJekagvoqDyS/8q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3XsATF9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3XsATF9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA036C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790140833;
	bh=FPLT5XhwF+lBH0zFuNhAUgPr64XvQLKppjXeEQX3U4Y=;
	h=To:Subject:From:Date:From;
	b=K3XsATF9MAoFgTkY+QdnQanp2n1FwtpZEJVq/1IkjohLC6aNk6QW2e51C509wmSpD
	 puwrYK4qbcAV260VL6OzApQRTxHA+J0uo5i/uVKDqmXixA+K57V4j/00cchfyxj9/d
	 JJONRRdRBYPMADgh4imVJHwn9tUTTKLosT81aVJMPX6F27tW+wo8pe6g702SAFrGfy
	 dcKqLX8YEER2ZJqZ7yoZinqoiT/28wHUQi1jlgCMMZAijP5WSmloHUoF8OAP5U5tKy
	 aswIhxpOzyi+39ejRusGV2Nbqy0vD8rW4d7jrkEtF5CyaeRfXg1zDvengCHiW620al
	 LimIhHET+MtLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5814C98302
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179014083370.20814.2679584264888931123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53a20a72356d61bacb4f830f1451e51025bf31935d103e0d29e31bc466e9b06a
Date: Wed, 23 Sep 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790140833
