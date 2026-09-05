Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0E2288C2C
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788609634; cv=none; b=cS19auoijiyDLcSFKfpY6FmRjZucKEu8bo12+yXZM8OYiIjUDB/JxrcxJpI/k08N6jZU+eU+0jlZXTof2H243F/Yi8UFXg7WBpxQM5xrT0/CNvlD47yvfPzm60BO4WBB7+lTLb1b6PZhn3a3HYkj5k7oOX+zB4AuJRQs8sxK1RU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788609634; c=relaxed/simple;
	bh=zU+x9w+iD6+rtanw85lgQ62Axl826E2NvvV9PmcKbA8=;
	h=To:Subject:From:Message-Id:Date; b=VU/yZPsOAfUhYScHx2/oNLdRNxx5vNuxe9C77l2r+s9/W4gsh6isP2Gpp4TGMMivOkK/tI5VOLOaurJbbIVTiDpMRVqwdkU/EUZGXHNU+vFqiGolVNer+0rcbmpAShZ7qDetjdrXL1LoOyby3dMvkkds8U3fkS2D0AEv3VI1vt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qoc4hPuC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qoc4hPuC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE598C2BCF5
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788609633;
	bh=zU+x9w+iD6+rtanw85lgQ62Axl826E2NvvV9PmcKbA8=;
	h=To:Subject:From:Date:From;
	b=Qoc4hPuCdmiwN7C1fTWs8bPa6RIkTXr8WNlV5p0Emre/03nrumuNPPtAfrClYaZGH
	 eFqVEyCLksziBZ3MneMzAIE2ZimP/62bWWKUCGiAyq1N1mtcz4eR3XN4mYi6o7GT4j
	 va4tL48Nnqk2Wtgd+8e1J5Eu6i04reTsQgixN3MArWeMYhpmlC+8WnruCJU61dlJug
	 g657HV0Y4DqYR4zxSukQJjmWM+35ynoTG6X5gvnm0YSikBpsP+vUtvO4UjA05UK+z+
	 vDmkXorKsl2FonVk9f4tWAimgXegpRXImfdZjkygV2Hlu6Ejww7C3HuZg/wf2wk0SA
	 fNWFPnznBQidg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2CDC624D3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178860963369.25679.11900103467098759034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd984780b2b5440d605cee3aca7f72392365068d458ab00dca8cc358ac2e423e
Date: Sat, 05 Sep 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788609633
