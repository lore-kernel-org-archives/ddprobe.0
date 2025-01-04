Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297B4846D
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735976154; cv=none; b=pQ/wQcc3F9Druf834CqPVHM2wjrnmYmA2Kgd/+hLcPC3b0PGzCqUzokOhW9jZXZf+3IYPifnddkp4UARHF8cvU1XTENjWczQgW5N7ygxUYATA6m21tQLEeF4ixlyhWNb6RNeoBxoyeCTPWrE172avSkvDCYMn29fOh++1P1cryg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735976154; c=relaxed/simple;
	bh=VqjrRI3yOd0zCNgiGHMAsuW/cX/DOxQTTARtiCTMWIc=;
	h=To:Subject:From:Message-Id:Date; b=CgsIxMnEGIJwsm+T3Mz2rIDVpS4Twe+oWr06gZMRF2E1gqnV346891grpJc6JEjnR82yJgoP+OBWKdIVZG/60gRYNiZmMLDBCfN2KExQGgO/W558cFTgSqzHEbtIdizNHa9uWR6serCb6YsTKoabykoKks2MLsYXzBmbGRVmcFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MMPm3XrB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MMPm3XrB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDE4C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735976153;
	bh=VqjrRI3yOd0zCNgiGHMAsuW/cX/DOxQTTARtiCTMWIc=;
	h=To:Subject:From:Date:From;
	b=MMPm3XrBhPpB9AQHWPl8N8YKQyJPZVeAAmBJ3XNJkLqbOmuiqnjtlbffx6SCqSp8O
	 N7uSoMlbfmX57SFtwiDOMAKmfLA4lhcB8T0lnTfC4St3E4wzxoNC/E1wb3Af6vjb7n
	 wBM5lP6dfgGDfFB8OpHXGRHyYXK4L1HDyC2R2M6vmnmTANcAORZve4ARY9KO54wV4n
	 dFVNURAk6YYMdHTS7U+h09gmm1Cs8rEcnu6sPdfPYSDWw5GIeEZudxd0b8K3L3P0Ia
	 cLkQ/AnsFn3N7XJOrTe1QQxvm6m7V5CPA8P79RsO2wzmOMh28LBFrgzxo3umxaMhhn
	 6II/5mlLTKvuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F30E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173597615359.31284.4069720148572186595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f1ca03a1f0bb5a40581139a80b03e7fc5d82891120302d0a827d730e1b7c07c
Date: Sat, 04 Jan 2025 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735976153
