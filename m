Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F251B815
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 19:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720467383; cv=none; b=NPs+i8xYGtLFochgBhauErgwzjVQdHm9zV2dpg6yaYJmMMNl0Pj7+PYh1kJT4A4agKEE9JvhfTM5j0N1wor0ykbHAm5Q37PIJhK4zuFXuHuDBs4K9ekZzye++QA3vnv0UeJ0WobPAWNNlc9SZnNDKEqaj6YLjl/ZxUtTSJ+cPB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720467383; c=relaxed/simple;
	bh=buLvrAle/a01kQu9GQPvFnIEauqrMen8D7hysb4YI4A=;
	h=To:Subject:From:Message-Id:Date; b=inB/DuepxGywovWy+TWKLb9xW83U7gjvGE8yPvYIpCpFxQC/V0R7Gwen8azAH/p7Fz9Z07FxQ8F6YVXmkWbGRAUIlMFc+w1ErZt2OGsG4nkcHF7q8sNzIprLNOQI2OJLr1foXgIh+Lpi8lsSdpgTBEtaNXt3UbAmwHzkdxM9QXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gF2Musam; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gF2Musam"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C33C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 19:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720467382;
	bh=buLvrAle/a01kQu9GQPvFnIEauqrMen8D7hysb4YI4A=;
	h=To:Subject:From:Date:From;
	b=gF2MusamdKoRoSkrQaQIh+ydZUmGAU2STGCs6s3wTSjuJ4P/+1p8lUGVt9JE2bS2W
	 vKAjtaZuW3bNt0ZTy+OWEwrPEOVV591xeNwYEwVIO3phmHNDCrj2lmf8KrE2uaqSgd
	 2QnNClD0GEnENAmPUVzq7dn79+XH5yk/tL/cKBCIur3eXeylKSO88GSZ1Rj5GSIdY/
	 gpPS6QSQ3wCLI1Z3A0Tebyi4QZQp95G4xInPyhkcqUZgCOJx3AwS67a5U4PMDqInBk
	 4D0zjVCUfWWurWeP0D9diCu83km5eNvXim5EDHw8r8SY8CdENT+ds5cyxnMbyzFqpd
	 1ubjgttCnIcIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1BC0C3DA42
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 19:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172046738278.1215.18293643780205199807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a793d795801eced2c4398be82b6ef6b0eab7db456167414af87ce1be50d2b39
Date: Mon, 08 Jul 2024 19:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720467382
