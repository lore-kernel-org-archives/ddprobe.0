Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4298E14F70
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747140594; cv=none; b=ZfJyOC2mq/W0Vc9S2iZW/w5PgQDXo29QRhlD++74cs6eaS6ujYp0j0Ko1vOlqlpiAdTRMC2SPpXU/gxR5NY2cUjxQdPz0XvAzSWHjkfWoKlnN6+C62y16XduVK02hDZf0d1fu0Y3+3EzOh+poWOsTuFXpxdr9lbTONFqCtVUwfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747140594; c=relaxed/simple;
	bh=QRQczWZfA7OOVB394xEaMObGKQUbPeGTG1qXrUCyXcY=;
	h=To:Subject:From:Message-Id:Date; b=JjTo8VvLJ2wTWNn9CPTA3rCb2kyaEqYR0DEN7lYCOuiSb40QdcV/iWo/OLLB7L5rwsrFoSdAMUdGAXus27Nn6StnTeaHi180oZ5TSn0TAHPSjhpO0OpTsr+UwfcV0lKq+weI4Oh85NnnQKReF/VbYAxZaLsHGKsI7nsBfv0uIdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DD0P66BL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DD0P66BL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41A2C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747140593;
	bh=QRQczWZfA7OOVB394xEaMObGKQUbPeGTG1qXrUCyXcY=;
	h=To:Subject:From:Date:From;
	b=DD0P66BLdDxYQVCOLKHqVSzof1Kr2SOl1Ho1Kud2aJBGsVDbDDaH/RqWJ1t2/4XvJ
	 1YJish0GhlmkCJTb/xtlxFFxR+ij227R7NQEnEIdqq1M9phX4Hm0/CUuWUSTdx7i23
	 jehOuAyDSUtp1A1SpgumjQVEmztDeX0vCWDqAhn70olcNLmrYDiBokZN7Yc3XCSdKb
	 vC7pA/wXZROAGF8wWULhFmGRyr4Wo16k/XtiJKz2s+PDlxoNNDXZW+Hd2yQvLNLjs6
	 P2grqgnASs0KflTcu8PlLLGn3w/45NA6a7U6fMNAIgvpbYz5qmQcyqe7EjdCUNNm+4
	 bkpmwdcqvCqxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA16C3ABCC
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174714059358.17389.6809690347725182443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc83b16aed66313998087e791e420f9f85a28557e6cca3c0015cf9eb7b863d73
Date: Tue, 13 May 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747140593
