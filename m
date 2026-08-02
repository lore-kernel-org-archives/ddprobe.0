Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4462E1FBEA8
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785676234; cv=none; b=iLuGYCle/J0svWfjR0hgzFR7flJmRyrbEQstue9If11+Rd7FU3BJp3LZRBeHq4pdQsz2xNlacAY6OnuxM6bFSKFgqBneA/T/HUoiE+VbK0LO7OzgBy9vataza4i/BRFM4ppEAmEN9JcBiAbxBDanT8l4vgNeXbkUkewYVWh8PKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785676234; c=relaxed/simple;
	bh=dwAlGZag/H//eeFf1yNo3ddCNCmf7RgKlkhAcCgwDxY=;
	h=To:Subject:From:Message-Id:Date; b=nmcldMP4Loo/YPSl824zD3i6avgkYkRcqzOMlFTEqKXfGscs0PA6Eh1OXQFjYCob9Jvc5t0zvwipV7LpaIfCcgMI83xV4BCJiI50fp6iUNxU8s49YypeDD1X6ZG0e4+T8GkihlEFTnORAKLRotayoiTnDtY7UK9DW2Rh1fBQTKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dPzLDgXT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dPzLDgXT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB7DFC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785676233;
	bh=dwAlGZag/H//eeFf1yNo3ddCNCmf7RgKlkhAcCgwDxY=;
	h=To:Subject:From:Date:From;
	b=dPzLDgXTIZ/hXb5hMGz+96RTtmwgu1E2s5pgyoijx1MJ+6dPsNpIZwXZ6HQmhW/iQ
	 lYaDF+sd0IDCIfY7b1hzFoXxpfn9JfOmFWhfdsnUp/TgvvYYpbn/anAC95dMqtLnOg
	 IeWTfYedrqUmVjOvFdE6eDV474k5oLY+YXuDv37UoMR3nsGmTer8zlUzDcWOcSAPy+
	 TJurs1BTao546ao0R59xdHCZEaVS9W0hOG1BwPCD7oXkQv7m+yZt9XAfUu8/MEQe51
	 kN1w58FarUTJaRpZuDF6r+6hW1MtHNE42pUZqY/aeugi112vpAPdTvlmX8kiXru3Ez
	 LMpY3c7ubQ5kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EC9C55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178567623368.26488.10686373821531280181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14b61e706cc1e152df1f625afad2afcd65894040a4ed145f98e9ee60beae4723
Date: Sun, 02 Aug 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785676233
