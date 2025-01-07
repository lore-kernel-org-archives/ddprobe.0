Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2060618C937
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736276754; cv=none; b=NfH4SFm/PaDMooLZWUApHb1I4a07H3wkAhYi8l1hBOACHOw3uQUAe+RA2/uo8SH1McZOl72vwus5KZMLBttWpPHpGM78JEZiBavl3bCnUo8yJN0eWSA/nnE6mGBTRDeU774qFb70B11Q7ddcyuE1IbNBfutHds3AAt0wDIZi5/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736276754; c=relaxed/simple;
	bh=mtGy+/0Qia5P/QE/91au06VFPs0g1IGM+YgLkkelfSA=;
	h=To:Subject:From:Message-Id:Date; b=GaG7PTzgODJrYDdEq5/qN7xNMILU3NOHXThE/f4033ybqqQtV9+17sjCG0+EMB2hZtlzDB02k+gmw0+n0G13Kavd3G41Gk8iUeIxR/PoY/Qau3KMnHhha349PT8U9eTkBzsowHVyKx4ASgf5S1OUnXjozSfzLwf26Fq+4Tw/NnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXchIvni; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXchIvni"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2EF0C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736276753;
	bh=mtGy+/0Qia5P/QE/91au06VFPs0g1IGM+YgLkkelfSA=;
	h=To:Subject:From:Date:From;
	b=UXchIvniQsVXNF3CIrGCNgcqSjiYa9YXuEwa+ldSmJEkflyROThs8Bi6cPzcRRjcR
	 NQYHKx/sHKKOamPHsJtL/TZ4s0KYYb0w50yaOzmZKT11cQJoQMVf/tqHp/Jyw3Rx4+
	 JphCPfeT0j4eTsI8JI4U8D6s8VDuagaCH7mkh6Ht1/Aoj7JtFRLIs41sM3Aj0yVdcP
	 u2/3PkQ+GbIGXrlUaWkY2GbLpIgH9CEjOZsw9wdo0B+nJdiFGfiMuwGF5osEsPOIJu
	 q27PyHLtDAZw6cX2ZnsrbMdQ5RufQ4BVdhjcRstxdsV76fSVWeYdOuIxRp1qSHZXJZ
	 w/TtAJtMOPGvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97783E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173627675361.4998.4484968376996867985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 198ca1b172c44786d6f397b869bd4194fcb4e16ae445f8576a37b69ba0313b80
Date: Tue, 07 Jan 2025 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736276753
