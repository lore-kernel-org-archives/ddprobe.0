Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234CA481DD
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762071594; cv=none; b=IEGXR0l0iYj1XfHa1AcaTF84fiR5DYrjraOeAj7aOf7mNsggjm4xxY3XRNu7EY2Zfx1MZ9UxnmtHGcuR7RlEuYQsrFPt2cFo4yuHpctTjn0Tdcoi8tiVdgaHlLPOji5ib7S1P22HVZ94lmamqm/a9uCkCQFlQcnIoeCT/9F7nIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762071594; c=relaxed/simple;
	bh=cw/+1U4JPK+IK8pHpfrKbdqPGEIYUInz/MBj93NVdYM=;
	h=To:Subject:From:Message-Id:Date; b=pLCCXKTTgsJ4hxX+YTYM1rVpg4q9927ZqWOTWMSkVXyanWpGPyLaAo6EnpjQ1XcvIo1+x8utTCFD1FEbbzB11ggWkL9TkB2MrfqY0/9TMLBevxV58GwGtqkTc6zMcekY/KygXXIL789gqrtb+QidaDhPX4/MqJdNZQ3jod3dT4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ml8FVgiN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ml8FVgiN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFC9C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762071593;
	bh=cw/+1U4JPK+IK8pHpfrKbdqPGEIYUInz/MBj93NVdYM=;
	h=To:Subject:From:Date:From;
	b=ml8FVgiNmCEdcIw3BJWIjzE0krLUEsIojaviYU4CvD47nAWNiujW8CZQAcRYngd94
	 IEzmYMU8AwGMeyIHTehYI85sPxne5ptNCEb2rN9971lwgvGunLXW/+qYLsaXZcseHz
	 cO+TvV5QyHocBtDke/x0a3e08688IXbnfxTeHoBcqbUE7EHl76fG4S9DIFqTjNHZBH
	 Swp9OlZPKllC2uMN2NGCkiHo2o1dwNKG2lr9IKZNHCELQRNktDKxr9Bn04ttrxpwQm
	 qLhTYv7OtjGEgZazvNFePLfAibRjMAJAF5QPNAYlMc4oZ7Kct4HiU6nbIrFiBspcn+
	 F3y2jge4pyJ4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963BBCCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176207159360.18778.9311932445587999874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47b6c870ddb54d64e72af90d87437860d64a9bd2e9cdcdcd1f7cb43e7b4c9af2
Date: Sun, 02 Nov 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762071593
