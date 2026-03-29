Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01749279DCC
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774796694; cv=none; b=VD3EMJrlE3nIU4+4dY1OTNjTlshfe6wPaDE6q7a0hdRbWlA+drg0SV4KOqbijUUrwpa29yyBBXDSloGqZfBVLih8eRwcda7JAZv8JPtd+MJpKwOZhQPR4Di56LkISUjQ3mXIS257ZZ7WvrWga1BhAGnRfJPhCwGvh1P3OLSaRNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774796694; c=relaxed/simple;
	bh=YBoFXmNTm3oTSzb6XCtmsJKSIenCIK8QGpuYBGGFq30=;
	h=To:Subject:From:Message-Id:Date; b=dvUYc7qnJ7YVEFivftBcgx4vNpuHOSAAorePbh+4i4h+Mbu1uwsq9Qs6YnBlKEnq7pfhK1Lzrozo78I/QjR/xVwupWSudLI8I/WDO8v52oJfDJ/X3hhZ2aa/KC1zB+9VzrOMo5hlhI7+LcqVNera15MTZipYtyGXl5cDpeEFAwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=juMTeZzn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="juMTeZzn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99435C2BC9E
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774796693;
	bh=YBoFXmNTm3oTSzb6XCtmsJKSIenCIK8QGpuYBGGFq30=;
	h=To:Subject:From:Date:From;
	b=juMTeZzn7cFCUD2t6VPXtvRmidh6hDAcUBbvMl/3vxBzrdU4Dn7N2bUtqiHVqOfrO
	 7RnCUSLgqkEtsdIH9adH55IDdmugljxXtx54UyJUikYb9aK4M3+Jw7SD9H/95sSIrj
	 S3oohq/h+excp/kvU2Bn9t0YbhIhvqUUwKxoono41hX94ACvrfBzCTd1G0Ng/W1o27
	 BSQQLmyhPScLvxDN9J3b8WAL5LlYAS5UBHiXgi105r91OQY5i4Uek2oi8pkTwqU6e6
	 9MQ12y0rONFZGK+bQunfejk9I2XTDIF2RcO+pFy2sPP0Y6ZPwP0ZRK673w/kmAqELK
	 B2zo6I2cVF8gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916CDF3D5FB
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177479669358.31417.5758626197595842458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a8509c55a9095b7b1a6c155be4d8d71164dcaa255b6a421c00d1cbe87c12fa5
Date: Sun, 29 Mar 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774796693
