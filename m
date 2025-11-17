Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C5FA319862
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 08:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763367114; cv=none; b=IyC4B5qXv3HvqIJVqD/sCNJ6CSreYeFk82GJUW4QrEXJdLcm5PCyuTv/6ElwGqremtyEH06V5Q1hswHpKsaQB53KmuUv6JAZ5Jt5mRH1sNLekXJqvTFwvZUTcFRYViHgUql6C3hINct17nPpWwC45ihEIdwlsrbcyvkn3EvXPbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763367114; c=relaxed/simple;
	bh=vPh3abrH5OQgyW5hvIMaDFebKWMoT9O4HFBJSG07jp4=;
	h=To:Subject:From:Message-Id:Date; b=GsGjAP8URyM/uD9GQkRLJhsTAkosKbV6tQ6aGRPp1R2o6vPp8a4qUG5FOa7WFSuu62+IjxIKxO4K+K2ymI460q5/NB7xk2F98vNYrU/xjO19ks4pfhfClfzJpsoNQKlmNrDSKi82C+24Imz7zZCajVEnDvrVMORnF0JfvLJFJjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pmIGULy1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pmIGULy1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7138C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 08:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763367113;
	bh=vPh3abrH5OQgyW5hvIMaDFebKWMoT9O4HFBJSG07jp4=;
	h=To:Subject:From:Date:From;
	b=pmIGULy12UUd2vjTqQ4aJL/CgbV/gGb/AomdU/F68qjNLaSutm9HB8sIMUFQpGeIR
	 BKsmttFreLd6D/4+NCTRUmUsvR7AjAMuApguvWuU4KiPx43zQwuB/uZ+KMxgllfndP
	 26hQTFsUOP0/xfHUs/MDB+VLAePecfDqiGgGGvH6qY9lRd8G4eFafEDy2h4ZiOpSzv
	 LXsR/QTme2Pi4Qh5mnL4XOebhsc69cMxyzOBpH4X03++BSofkVzcQSATsl2Dkk//pA
	 7Kjse5rl+iWf6LUdd8C2PZVf/smWdWkQ+E/aAoksxJDsAeL5zgzPdjLnPvbyp/VLgn
	 vSbFykJAeESCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97976CE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 08:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176336711361.1219.14111828309544525494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fd54cb36ad66b11fe3e988865be90a18efa158910927f0564608561901b40c2
Date: Mon, 17 Nov 2025 08:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763367113
