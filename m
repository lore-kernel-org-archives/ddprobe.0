Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E68634751B
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 22:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784239714; cv=none; b=hztI5mZnXHE3GioR0y2fCDt8NGDWkDrOmJ4gSfcYe66zKbGJLLEejw+tNOGOZ7k2WdUBdIawCaUd4B3iCOyYufpYhD36IuGcj0q+tRZdhapnGxFDbpMmdMLRqyc8/JRctELlzWoscVGbYEdnj3auOCliZq9qMGKWPmTvaX9l5VU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784239714; c=relaxed/simple;
	bh=dyzs7eC/7+uFxvfupr/xQnwWUVzsPXWLcYps6lzC2oI=;
	h=To:Subject:From:Message-Id:Date; b=s+KCU6joCA7kOzWnGx2hmXqxGsygvIAMjs7FFRlraF6ABk3b2FO4pOm/ZhUEIaQ13bp10GjR8zkDS9he3N2d7dYqaPKs3ytCpCWWP76CEhRLdaySg8c5VOl+wcxP1Rms2h19jR52KU2SyQR8QbpQRT7PYyH3nCVnfralOYH5Spg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l1itc9FT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l1itc9FT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E70C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 22:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784239713;
	bh=dyzs7eC/7+uFxvfupr/xQnwWUVzsPXWLcYps6lzC2oI=;
	h=To:Subject:From:Date:From;
	b=l1itc9FTdVYCPMc+uIhnuFvZ+iRXnweFXDW8xQC8q+MdkwVzLvBxlN4WcSon+mPO8
	 hDPDZPCdhEWGGgy+22h1udgM7qjkTeJwjf47sVyVEI4+YvK1DXTUQd9eYOXEgxoS/4
	 Y3UTEZJ0ALtsrl9gfnhl29dSfi3++E04VHZjed1fYymHLGi1jvR1vfX0EqV/n/t9+h
	 NJiuGwtDXif3A5HBJ3v7h99ZEfcz42G9a6ugvmxrcKVJTP1MJupWLvirDthqqy103t
	 8HwXhavXOl9UYjM+h3uKb3I7wcDGHElEyrrmHQPUUqUGqMbS3o/g5TIOdoj3Xuvy6u
	 56F8w+ntfIm5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD16C44512
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 22:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178423971368.24558.14185848496189368603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2146e8b1247360f9b590865bd67cbb7a103a3b1d347ce589608b7e4a963fc10b
Date: Thu, 16 Jul 2026 22:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784239713
