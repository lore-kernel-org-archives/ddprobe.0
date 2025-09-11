Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D326184
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757549994; cv=none; b=YDbNirbj9eEM4SN4jmDzBgty2Fk5C5LhX2hDxozBLOtWilwkH5e1eOSXuyQZbbDdD0mahVIPfoe2HRJbeGXrhArA8uSHYH2Eu7SNbc/kjvZWS/oSp0r9u6p+HAHjA/Q5kw5BaB3WyERnYCOAtkvLSab31Fw8hUyi58wljWqeIaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757549994; c=relaxed/simple;
	bh=Yj4z3xlbL/Cp/uJ79+xIwZsV5yTlEQxnInbSEz6g+30=;
	h=To:Subject:From:Message-Id:Date; b=jNuFvOmceLup1Iouqy2OagwB1hoL0XAG4Ska6hAEFBZtjYDyXyt6bMNmDouPOVsdgynlACbq944+9nlneKd2HGbQaxkgO0jP6GbvAFqBrl0kZGfVxT91ylu5WBhNrHVfrqesYFZIWzZ0bN/ZsuKFlze656W0UB0r/4323aPBPb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GvkCvdDp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GvkCvdDp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5335C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757549993;
	bh=Yj4z3xlbL/Cp/uJ79+xIwZsV5yTlEQxnInbSEz6g+30=;
	h=To:Subject:From:Date:From;
	b=GvkCvdDplUWRRRGyzurhU/+2J/Rx7f7V0q/nhKhjAtgXIObUs2gA1B6woXagoAOwR
	 QOhCRhLuN3NPLODfVBp8Z3dBtjq0ceLidCeRP5C2jwHMsWQnKp1JOYraeVJbXsApa4
	 IHXC+JUFBrVt+4mt+jSNSWCSnvzzQqL4hNj9LSEZS6YWG8GKzoZTkdqK6JLb82aztM
	 EUqFHtm5XgscXHZlCm/QlPXes/S2pYIeDGKYP69YjDzjzMSBr7oxt+/sqm7ilR6wXm
	 GzZEpIp2cb1mj1pu9lOIzSTZcIOMW1qQCCZD9OxmexUyl/Erd7qq0EMZV/NU0PZU8X
	 RWBHlPC9kKv/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914FFCAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175754999357.3940.3270838349958980305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a653573a8c25a3b7767640e906dbda985d6f3776e1ca6e677f1f8f5e38b21ff2
Date: Thu, 11 Sep 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757549993
