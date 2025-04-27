Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3127941C72
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745795995; cv=none; b=gSr5ebQBi3qO9P8xmsO6h/cCyufKLjgzdmRBbJe2aPxmeTdaBJrtf2P5wB9uMBvHsVJ/IkwVMMyj8Klb+Ii2HtYuhZpm2D9dBYgv5QQ89jwyQWGqtM5YeVF+aQzjSC97dEtbpn+08sO2lUatKaI4skO7mTOqWvGswuslTAEoCqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745795995; c=relaxed/simple;
	bh=amK5lFPD/YeJhiBT8EgqGMvir7GgsTz/dXhr2+O7E2s=;
	h=To:Subject:From:Message-Id:Date; b=lytXIlmm2ISm4SdarUGnZkADqxUWOQT3BnhWaaA+U20oXRMXZCbynIsIiIAaTo4PSQqCgCZ93U2vCVKEEQC8iNghpRjA6SRhcB4yMphAczjroAW9GoMoTt4ql04VNcEqbLSL1HX0rz5A8/Jz1dtQ0RIeM0W/JEhQdewA+gr6Vvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YfMsTw65; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YfMsTw65"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A639BC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745795993;
	bh=amK5lFPD/YeJhiBT8EgqGMvir7GgsTz/dXhr2+O7E2s=;
	h=To:Subject:From:Date:From;
	b=YfMsTw653a+lazkdKZZOc+50l4aC4kmOM00uaThob97v+boHphuH6baswY9kChJyN
	 LvvjltzJmsE3D3Qn+gMAO8ahsf47xlEtaOr2xgF/w61vG1kG/d3dB3ic6H/RFAj+in
	 6aKErL6t9pC771GH7YDFPnASABuoXMp4cJ+zg7rAHeeWeAmZu4O8aFv07Wq1wnSmS1
	 e8/epTVqg+SGrJVlBpPjrghfcpdvrm4D9HEODRsnQXnHj9dOo3GHGUV+Wd/j+bTLb1
	 ExjfTdoNbk5pSCHW9rbij0EedqbT+1MqTmOAamfGwlFUBAGFsUKY+hXK+Ge1Iw2CDB
	 dQhHswFz/1nAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92158C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174579599357.24003.10520894187034415233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5255188485886da670ff5a0bb6358eb15a1ba930319e8c485bf35eebcacea999
Date: Sun, 27 Apr 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745795993
