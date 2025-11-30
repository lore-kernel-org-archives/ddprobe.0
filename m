Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB0E36D51A
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 22:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764540774; cv=none; b=MWvZoxXSbWF5w6kLdnHDJybTRhJYe0JRXb8HD2cTBDuWfxWX/DiFus8fg4vnjr7L4bH9KRmALAnYsBxhsR60Yj7a3mzlOaXaWGgrhLltYCTfitja6WpTVySLevReNwNKuFUFrsrRONAWwVpX5o/VYsKrmGBz0mnsu7AIVDhxBS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764540774; c=relaxed/simple;
	bh=Q7ISbikrJWJ83OF3egkEsn5seOqeWB4Gea/rUGWscEw=;
	h=To:Subject:From:Message-Id:Date; b=WgTk5Xi8Au6ET1b4Sg3YSx798SNlihXV2KdRVS0W4mVtaVthv3GtX1/aqSfjEhV5e/HMfFwIWiDRoDJA4FDScQwVtCMwEgHLjB8Qoja9ihBgaR2LMGIYgVT3Ya6KF9R9f5Kl5/99GTcU3MfboKWqKc/T/UBSuYzCHOes2+tZy1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IvHb8K0l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IvHb8K0l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7664C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 22:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764540773;
	bh=Q7ISbikrJWJ83OF3egkEsn5seOqeWB4Gea/rUGWscEw=;
	h=To:Subject:From:Date:From;
	b=IvHb8K0lKc4J26lDZSlsUnCOIikbA/YhA/2bI8/EfgyBPAH7tFhy0yTcvDoyha3RW
	 HviE16O7GL8DExeaPsCaIEdkyF2hpX6+n+b8LHUmNpvJfxL4hX6YpgKGuosMaUVK5t
	 +NGVyBH3soa7zVwKm4WzJgFR3y8o2zuTD2h1aFxma2e11Zbiz5Mh8mKoRpYNnslZCY
	 EPdo0bN0h60be3FsPIP/nzd7Iu1pQw+JgrmNdW4spMrN8NfRiAYiRYhBp9coW+cztY
	 8f2yyw0mxXdN47XOnGCcXY5+0es4R1y6ak75CpMvHMDWtgvTNghITuOM1xxEhe9tiV
	 IPXtL4NfkoXNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CC7D111A8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 22:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176454077359.30821.955894483363316431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e285b07ce8654ed8afb2d1091903a9bc2239a2349bad8c395f90a9d3f279f02
Date: Sun, 30 Nov 2025 22:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764540773
