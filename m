Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E1C58248C
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739142954; cv=none; b=tT6m3ZCRinCQzVb+HP8lenIAcnAqx6OI0HGOhj4RuW4enLPPZ7U6IQT6GbMWbqlRlym7u3QClxXuFdrH8N7n6/nuufnyVYpxwIS1NCD4gnRwUFj+sACPVSlPaenjORqTZWtq/VdgeaTFXbmD0ckA4SL6syIhaAitdgRI7sXoKQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739142954; c=relaxed/simple;
	bh=RDutSw5VmqqLyYpDXPBsjrMsjzbk5M/Vg/0itJqmRRU=;
	h=To:Subject:From:Message-Id:Date; b=dsXr4xAeD21olcbNhB0nslH42Qusd4oCIVI1Z2+RvWoMNbEm8VBiRaGq9UNJplccCC4TOEiH4pFjA/AgmfKrhBdqVHcGjgQl4BGJ6j8Et8wy5TbZ8Uzvs4lqL9vCwX9kKU8RiX9WeFgWePJmTjmi8VB3FFv9mbOOOtBF5EZ0x60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u8oUa2xh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8oUa2xh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5FACC4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739142953;
	bh=RDutSw5VmqqLyYpDXPBsjrMsjzbk5M/Vg/0itJqmRRU=;
	h=To:Subject:From:Date:From;
	b=u8oUa2xhZ+MGNGSfvLo2SU7YBCIZt4lPrJZ9OlUUF+TwZDdrOmJgwpD/8SUULcczK
	 r6g/r/++L1kGx8JokbCntnB0bzOwlAYTr04+m4OakQMguY3Czm174hFPPji0w/OAv2
	 MSQ8i3mAVeos0l07t1ffcHA7eADY/dgiQy7WSaSJ9Z6iTZ6wxMcfzxM5xSS/Ov/JHD
	 VFh7j75IMoi4LFxNkJxaPwM+BO3dwBpUsGNIX2KDPIVdsp6ad/iy6I+e9gq0UtUJdl
	 eaOhx0X2ClQUDp+tAk8m7b0+3T/DntVSUKBNshPkmAF0bEvzaVANUjXJgbmAH3xUR8
	 0VhrnvAY+o1vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA000C0219B
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173914295364.17555.9651149928234253988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d89f083d8daa1b28827425f3f188c2d075981206e06f68c03a99168cdbdc4ab
Date: Sun, 09 Feb 2025 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739142953
