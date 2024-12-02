Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE4E1F9EA6
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733129754; cv=none; b=PbUaJU+iiGbTQVfdvtZb1gzt0O1PfDhbKZbSBVHlfd6Ux8QR8wX7GqmJB+xRbEIyfmghU03DNY++v2TCIX100uME61U1ZmpaorSMDuTaWa3KFkGzKs6Y5EanfDfO2o5x6Vy+lPgu3w3xsRXclvlUzughAQQnV/48pz07+znCOVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733129754; c=relaxed/simple;
	bh=7CdW9AkN6d/ec4GsYtbrEHcKON37TaZFt8gpGQoVp1c=;
	h=To:Subject:From:Message-Id:Date; b=bl0b/3M+xx+/oIPt1zrTw1fe4TsDAEd+FOHU6rwr5Odhd1TIOR4OCeXhzV2cHuwZSRDenDv+N7Mk9R5nfyR/qHUcDxJVMc9RAWXfH91Ta/G2HXLMT5YHakHjeAdvEiMia2g0kP8JEcU4sZE+BFXoJSI4bopVRIrbvwwiJAZDOH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z0qNikqT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z0qNikqT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B28A7C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733129753;
	bh=7CdW9AkN6d/ec4GsYtbrEHcKON37TaZFt8gpGQoVp1c=;
	h=To:Subject:From:Date:From;
	b=Z0qNikqTvQaR4Z5dzNBWxRkvfMntehPEpOZU59SJWGMq+TpX+AoUx81uZFQBXoBOf
	 nnj6jrH13wS+WnW87/A/p1jpSaD0Ok+IjI22e+kPrrmxW/CKURm1m+UHMuQuSyWWQI
	 b0cFsWXLt5c/S3ejFUQuqtWumhYpPg8a1Ik4Fnghz/NgKoOgzskpRpWoKIifvxRLaq
	 JkTGe+z/5rze2jgEMMrmNMMDmOpSsdlUt9mqsyBtgLRoMHZHVUsk61kwGm2j7jBTsz
	 aiDvcg4kZYIWHY0hz/3N/HUdKE8gaWLv7srvy5NL9oIlv0vz6DZw2VmlFA4RBFba05
	 7Johiq1mHQXRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A344D10DCF
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173312975361.22568.8048694193840819539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 688d30c8a4746720188a037c8e294d126a24c4435f7aed86e3192f4764da3b9f
Date: Mon, 02 Dec 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733129753
