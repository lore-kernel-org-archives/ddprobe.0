Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF0A33CEA5
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787841635; cv=none; b=AuTIaVfSX3dsiDaq/b9i24NVoT+eS0U6mH/yMQvnVE8X/s4d+abHId0WLRy2Z5Ji1K3vmMo63MqkG+EZPVa2QLfv8IrrEIqEgmKSpOOjE7qjp5RBFEYBFnnZ+QYsWzf7X8beDr6TYsycGvAfGmCTcs7Dzc4mqyIhrNFDhR0sS98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787841635; c=relaxed/simple;
	bh=y6cd3wJZ1BdNm5YxD8uXKH7y74y3jX15mf4wuz/jUO8=;
	h=To:Subject:From:Message-Id:Date; b=MLS7jgui2f7+WPqn2ESNXrsTxSf1/3EM8CAYV0DS9Pltmcb3vyZzhL75ndB1jtMzw0rfNdj3ccySYKdMnLzXoLjLnyYGuYsEjgwVsKWdeThpbBrNRTYbci2YaiYzWIHYkZsE9clN3/CHgwcUotBQ69GaxSxfBoLLMTcqDgYWEoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UWgbpvhm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UWgbpvhm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5CAC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787841633;
	bh=y6cd3wJZ1BdNm5YxD8uXKH7y74y3jX15mf4wuz/jUO8=;
	h=To:Subject:From:Date:From;
	b=UWgbpvhmVWLSYEZ7dbAIGes2+67OaH18JminWrz0DDPE4fHZsBjlXZ/Q7UyKzvz6B
	 wklKhrixTjugru+pkorN46kOuTzsNVdE30trhnOlElHhSIPoqa60pbfQS2oEHLRCY5
	 LdHVW/wEnUI56dBj1vYrNgWrd8W7CiFDa43QAqPuNbmOU6DatLsWfEX2fM4L3DmFuG
	 nVO9ISMVqx0SsSW7XXUXNA6eGMXSzCfsBBu/Opt4ZokIc5arsEaVfGyhLPnqkhyJ7o
	 /MfmqZUGTxcsGDe15CyvcbtxfP7wNsw6UIQIF4my1S3LdE0OGZECzDW14ebtuoWO9S
	 udZ58VEcmF+MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE7FC61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178784163368.4497.7806344966420500337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c95b9a3e3a0c42bfa3497872e5cd7f850bfa9643531547355e9192db3d4f1f9
Date: Thu, 27 Aug 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787841633
