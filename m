Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E483937F72A
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 21:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778535634; cv=none; b=HhmpTNljzQBZYlxbuKD5l+llAkYMMYC4Sm2w4+QzFZxTy3IIuYUUOmjI2hR/IYFI7Gcbj+2KiJw0KWS4xIsVrqzDW9AlfqwBzPq5o3l3BeoNBOLsOCGhLiJjbOIDsvYS14Aj/PJifeI3suDnnlg0yLTKGCBRFY9q1/caxDz3K7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778535634; c=relaxed/simple;
	bh=VI59SG35ZyI0RkalUkCK1E2vOhTEzL9juT532PBx82o=;
	h=To:Subject:From:Message-Id:Date; b=Coh/Tpvylqyn89ZakUYVy06IFYcPnDKjnMojUvMuRYciWXcQK/wePfwlBL2wKudXHDzcgOPiaEg6MreLlBLVPGFzmW+3MKYYMEx20BaSncnBKHnOM1PRyInimYl7Z5Zb01CT4PJpGlkXQwcWP6tlF4W9aF2ilWvDhdhmB2aRLg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fyOnCUAC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fyOnCUAC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC046C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778535633;
	bh=VI59SG35ZyI0RkalUkCK1E2vOhTEzL9juT532PBx82o=;
	h=To:Subject:From:Date:From;
	b=fyOnCUACSuOZI4q+Ee0EL0YUgroSd3VNMs58JpQx5YKAI+13VlLgdlMDyarkgcdCA
	 RKgqpgMgsnslsA3j5cBo2cf/S7sSqLW0+CQBhw8oTiRuSf8MGuJA1c4ZnVPMpU3lap
	 HNnAKfaHmlWRQUSuEaRGoSHVnKCnPRrP5DvEa3z/WehzZWllFRtWJF3/9JL5F471yk
	 YdGepBAaZQrYCvD6E1+S2eX825uXWXba9H+f53N2aOizAZnh5nI33LiZpOGGqHkCRH
	 7lA7eCH5TtsOebY7das98MP2AKJVhjR0eqcW4TKG/xF2vm0361x7O5RbYBWwjKvn2T
	 l0uMp4bFdl1Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCE8CD37BE
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177853563368.15612.2467955033548877366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b13500c7157bd768fef42fe477443c62e7a31958911b2fb5ada6c3f04ffee49f
Date: Mon, 11 May 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778535633
