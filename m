Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8623B41B366
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 14:02:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779458555; cv=none; b=CVBMbFM5PV3DAG+aX1C9ZbU3mSgSYtc+I5jx+SuWnb9hcAFg3VPVdL+vy5zln7HNUrSUsE85JBCkCufsWEbZ1b+MC0vzOHF85R36WZ97zcR5ppUYYbirUhMqdTNb90lKXCL3OhK2ue924XfC89vfJzqmLDevf+rwjRFQeYIRNS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779458555; c=relaxed/simple;
	bh=93378AqVofPzOougK4jrtWoX4S0PEi54RAVETx0olCg=;
	h=To:Subject:From:Message-Id:Date; b=LkqomnDxVu1OHwmwjQUpI1CKcaem+op2vHwulmROKmczJFT/AHJ5fqNVn/HmEv3G3O90gQoumDZJ/nWYleVwFf831caHBWR+MfYgnj7A2ns0COT62wxW+FFxS3GisvXIB/vrr8YLxVHpnJ2whJcjdBEf2MtEaOFEE/9vjdKnhqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CjwfXghp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CjwfXghp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C26ACC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 14:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779458553;
	bh=93378AqVofPzOougK4jrtWoX4S0PEi54RAVETx0olCg=;
	h=To:Subject:From:Date:From;
	b=CjwfXghpTSmGR0WGhuU1gfGyC0kU2PB4LX8G7PkVx1aKkc+Vug6Go/TZ5ulDDAA4r
	 cUM9CKpIZ8pWtrPZaiGjxhG34zLM3hPSEhj81FrRarcGtsdkJZQyLeg8fPNuDXfyTw
	 lVTAzc2xpFezBCD+rTMlVe5xQsH7JXDFW1QqEd70skSV5R4XH8lav8T4oh4H0F2RFw
	 D7ivSO2qRZinwPWQzq9RcUya6Xi1olC05SG84ywEwtI2k4Em6Qci0Q6Yg6tbakT+qR
	 ga4oLzW+JBSWbqnqcZ9SD3ra29iAMqXZ4ZCIeRsqKhUuJ2JT5Y3gc2OVoXT6fu9zxw
	 Hd8oF+dQBfMWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA866CD5BB4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 14:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177945855369.4547.17273441792330947375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2237767a53bd34c0441c9171669ced1064ac91e23e682d847813c194e4c9103e
Date: Fri, 22 May 2026 14:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779458553
