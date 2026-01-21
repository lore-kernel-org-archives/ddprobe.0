Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5813E95BF
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769004234; cv=none; b=Op1PjWEmXSNiNea2HKGwj+Fa77UIQH8qHAPrZ8PE5t0X8tnLK7sHXG70+k4nyyv4YDPXInj6DelsVD/cq8ob+YdWLUVlSA+F0Qgi2taoZLEY4/5SJnE8hweD9IAqtm1KSHykUbVWyiTz+zGBeExM1PcNGS8YqplJtnuuHp/afTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769004234; c=relaxed/simple;
	bh=+jBLy6GQjuF4pJVPhe4wOxuaFJIoLdzTP88C2eexzRQ=;
	h=To:Subject:From:Message-Id:Date; b=GFaAB1fioP3GVkVeIX6DFPvp6FjDKM6+iG349Cm4nDSNACoQzjEnm2gaAHtlFagkaGSD3phvhroruhF3+Ina+0afkabh05m2MmzF4PP2XCrZOKkdeHUnMuPLS6Bv9FNiLsRuu+7ic7Pk6pXECnzuqXWzJ61G99pj3EiD+KLRocU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ds5/+Uou; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ds5/+Uou"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54AEC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769004233;
	bh=+jBLy6GQjuF4pJVPhe4wOxuaFJIoLdzTP88C2eexzRQ=;
	h=To:Subject:From:Date:From;
	b=ds5/+UouMnO3+xRlEt05pNm/193XViB84hbVTZlvBfmxCEDobTRJFqxeowQ00Pt+3
	 Aky7eMJxqsskIdWKGoxPH6y9PlWGqUbdB6bgBVS9J98UHp/qlTLCjCyHBMWPdv4sjk
	 +zsT8XiETz3AvhWu+esoIPCBJvRhms8SZ8lqyQo4WYE4amPVr2EBXG+EpnAKz3Uj2Y
	 fdPam5a6xvJ3d3ARijgWgBMGSqPedA+Ni3iDh0VZOEdmAFVHXTUMzONOcbOTO2Eodv
	 ZJitoY4EgYoeGMnDcdjnXdNdkY4Oe6HfxcI+SJvEHwbZdzaxx+XGA9ZeyJYUkIILpA
	 V7oGxRlvEex5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E33C4453D
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176900423358.21486.2458775737899758232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5481b6c2b705d831dce8662d3c27ea717e0cd488ae87ec6466c6277ce26456f8
Date: Wed, 21 Jan 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769004233
