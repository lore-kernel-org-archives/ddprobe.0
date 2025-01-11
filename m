Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AACD1494D9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736588754; cv=none; b=usmmLrs2Wyr4t+8K3ST24HnWgS/EFEoTiOTz/kV7CcDTZXKbbjlDNnSm0+dEDWPSuucEgLp1tekV4ftkSL8FW7FX86QqK98AQYoKbryQoRRCDl/vIUxjyX0k4S98dC9Bv2ZfSN3tMuDK/4pN9iL5fBfmMfnOmeBplhXrYZKekwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736588754; c=relaxed/simple;
	bh=IbQzYk606VmhLiDhg6/ghYT436uIzw6u33qL1bq/wcQ=;
	h=To:Subject:From:Message-Id:Date; b=os3wIhY2PJicpvgLJqOL8EpYv+jD1BoAul78Drlb3eJPPebZ5L2RPusTIKqENuYS+gn++td7I8wZMmC/6fJuuZRg/lNBGBX4UPNjCxBmVSc0Tg6/WmLOPnG7VUFURDGO59kaxfDt18D7L1jzqdjrCDVm4N4SLEh1gvXZUT0odsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iiWS93pF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iiWS93pF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B24C5C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736588753;
	bh=IbQzYk606VmhLiDhg6/ghYT436uIzw6u33qL1bq/wcQ=;
	h=To:Subject:From:Date:From;
	b=iiWS93pFRPD7+ul0jMX4Kr8QJic4fe2pOMWfzrUYCcWlqocVi+7QCn+hZbXFGNPpA
	 XDdZ3rUL8Gs3Xzq60c1XCbCRcs+mJgU3+Sb3QISb3oORZwUNQ3HLf/4/fH4krmJwNh
	 vxKbA36Vdr+GLFHISTXCnEifu5aY7vXqdMjm8mjvhIoOMO+sMgUpJaCOyvfm1FZgpy
	 ym0jBSQX9OHC0wpIKqAW3bkumM6oMKOkawQDorwLZKyHHh8Vn2Mun5/8oIA8//pj1o
	 WY+Bsy012o8YhbCwOvqJg8+K6byFdTOePKhFxvnXj5BUwhK3DihZcchND1ecDHPZgd
	 ICI840t9Lc9Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B506E7719C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173658875359.16732.4365123286514002315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf2fe75141cb0db1642e31fe52644c54a9ca896b5b0135df7610d0291374cc11
Date: Sat, 11 Jan 2025 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736588753
