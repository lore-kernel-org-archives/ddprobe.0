Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A529E55A
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758764394; cv=none; b=CwGKC2HsOqjlvUXLvKYA5N625mvkMWgloXqoitotbpTJkN6Csl/LX78Yh2MCxfKXLPucjaf/iEGEakx6W2m6m2+vfYtuTPYO6N2cjWgPd6q62tnflZxY88uU0X2bxlwiN8/tFp+Tc6y/VAhtXoc7R6zSOb0L9cx0GTHCEYvIKDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758764394; c=relaxed/simple;
	bh=c+TtF6JPBsTs9JViVKeqMg8vwkojbQziO2VdEqxOzeI=;
	h=To:Subject:From:Message-Id:Date; b=fsKXv7i3CNDMauCtj5FWgVohUHnIQiMhAcwOIWMGu8dvvCyQ7poz19xYEvVO/22xo+eEzocpzqcuRE3TLc/WLNNwXbYGFN62qlh9I7dfVTHEDGdnErt43IB/LQx8p0vAl8bxZ+K6YF0wUFw/lXlmvmaV88biy7toYnOXG8iuJwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T1HGv9Gf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T1HGv9Gf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2108C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758764393;
	bh=c+TtF6JPBsTs9JViVKeqMg8vwkojbQziO2VdEqxOzeI=;
	h=To:Subject:From:Date:From;
	b=T1HGv9GfJ90rql7PkQpA0RuKFKwemqkEtSf70Htz4S+cyHC1Pld1sTjDkU1IiPXD3
	 3+yoIawXXiCcyFojrOqhSMkBRWWiU6MBPWjkSZO/n+APvUh4VY9qwoHuwZphR/Ny3J
	 FXxv0GCP4fPS9rZl51Ci5BZdpom2DuXHBY++D1VEfZVP45ZzUbOWB3RA4y45H+tYLD
	 MMkvdIUtjgrEqHZdupezGVHF/7QMGcn4g3xogKWL47RO/MZnTQj0w6Miedmpr2KCrT
	 AjcboaDQxM+a/S/EF0/9vFxvvfWOHd9o6pbWKf1BsLFNwgkkSh2OkqdJQV8KMu9fo3
	 PwZJCfW/4idLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BB2CAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175876439358.15251.2039467638189696437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c65782678006739345ee4fb5e259bd81b9cb4ff84c343ae633f9e899c91ee74
Date: Thu, 25 Sep 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758764393
