Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3859629A0
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743300594; cv=none; b=SiTXk9bvnI30mKoXFuAAL88Vqi27a8OK6O1heX95YshbY1qEhUkbX/QyvlXCV2jZ1V70OWh+jp1PkJ7TgwCjepmJ8vgKvhI/DvpLxmROqMyjS3buwywpajA+QG3pljx97cOFLfDeZcbbplEfSyEj+fVV2j7vEiZXD7OGjO+YTtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743300594; c=relaxed/simple;
	bh=PtpTTHc0d1YLOgxCewjk5gnoGQ+nFP347WbFQ1iuegw=;
	h=To:Subject:From:Message-Id:Date; b=afKEaZn0dctq5jay8a+JLYkakYn+8Y8QlIMfZz3a9dNs4qkxSBtK3nzcGirmLlrm2lEmvhN5alJ2NcLAttC0YpAzi7Q6PzdwJ22i4wGtwxTWKJkNZGhrnsJClq4KobgwGqRCD9yH2fUwFjsLhMicUNLWdyBnSsQ2yrqCDzverwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3RXc24x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3RXc24x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC122C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743300593;
	bh=PtpTTHc0d1YLOgxCewjk5gnoGQ+nFP347WbFQ1iuegw=;
	h=To:Subject:From:Date:From;
	b=Z3RXc24xxKxRV4wd5kyjKWaHOoDSLuW7JgNT/hdsWgLkaxllVwNTAthPjlFJgMwzx
	 uwSyTdymGLlZZeKxGkGly7W57DGuNxODi0IRKTEhUVnc/nqNXQcl5PKa/QCSDafKhc
	 +/Cwt9ZKSMSOBiyt9e30xhmiwpLMum2QhHlPXy6dznlrS1lzE+eQSHwhwl4is1Kje2
	 9SNrh4zpNAGLISvpehx7ZTUBMWpcTEM+BG4PJ+Lt/izxYonH+S3I5DGs4B7ZJVuEGo
	 YSH2oLrQjvV7RQeBLkG+mGzJrnDboEpz7E5YT1imNjujXCBit3QUXNvaL25MkVLdX3
	 lMpzg2PnsfvPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BFCC36008
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174330059358.29641.11838464953289610331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82e68d9a8f997169892e2cd0dd508ee3725875845d170f80726578fa5880159e
Date: Sun, 30 Mar 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743300593
