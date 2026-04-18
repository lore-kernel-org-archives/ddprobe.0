Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA2CE2F744F
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 18:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776535653; cv=none; b=oHJD1BNdMZ8kSCpFeBZBg9yHVD3IIo8/MR6s8pgOwMhYJpNJX/aN9maZXiOYxBzHqD4I9xE1fR2S3/qwLwqoe2yWjeh5zsc/AqI4A6zzW7OWFaYVtfMret+htoezmtZrLa6E8JDXAlsEMsVfHe0g8ssTf/oO4kHAVbWs81WBGzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776535653; c=relaxed/simple;
	bh=xXeBj111eqy0IV4sR+RINNLEHucbTJXywoOJqShy1KE=;
	h=To:Subject:From:Message-Id:Date; b=DzmVVLG0wz+GW/Rzxpbt6hh6RxvBdVbxejUx1BTInG/mBjHA2R0+j6diIe9lA6hKtKiYjB1DXzmxSiCvZifwIdxBnAJHMyvkNYILrX/mmpagDk2L3VTRtssn2sJdnOJ4OK01a2tBMa6aq5TWNjQNszsz+OAx0aODPFCbVSkPhtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CgkmOWTs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CgkmOWTs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD8DCC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 18:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776535653;
	bh=xXeBj111eqy0IV4sR+RINNLEHucbTJXywoOJqShy1KE=;
	h=To:Subject:From:Date:From;
	b=CgkmOWTsL5vINmRTzUgs58Qfw97hzzStNQh+dYjomE1v88nuAYNQUURSw8mBGIZM+
	 A47xHFv1E0fa++fjzPecMN/BI+jy83iCxjuMf1X63CLMp7CVyj3dS1ZhmNEUNZxv1A
	 8+vvf7ewlOrU18KJvFl6s2qzo8jrcvMR5ceHvkjDsMSXVOR/xO61vyK/0VTaWr/KOj
	 u/72psPAFfgRioIx79LZVwEJlrhGEbJkOfXFqdcsTma+blZ9NJN+xWVnle6b5oE1Y5
	 L+ttrJfsU7HGZrT2XEhU02MTRCMihfkSTvkE1kCrkzwGxndHvNMOrtaJH0w17Tkae4
	 +P94nz9u4FsJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDFDF99C7E
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 18:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177653565368.21181.6863379111639137941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbac88c057a0d78bc6401ba9dffbe49db6d7bbb39bd42af7f3c45fcf48505678
Date: Sat, 18 Apr 2026 18:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776535653
