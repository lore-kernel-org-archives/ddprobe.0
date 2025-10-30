Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA6E3595D
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761808194; cv=none; b=L2k9eSyl7fFWocqth48TeDLG9sAMD9ITuqdzsXQHLNgx/WY9yX6rPx+N+6mE41OP3skyfbN6IIwhwkOGFwDbd+ESynxbSZJUg1/NHVtJBy27THfCiPdVpAlO8zbTYOXn8ehy0ZJSEzKfsLVh1H0m0xlhGDcPkFT2U49N7JpVBz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761808194; c=relaxed/simple;
	bh=ErcBb5c+rhQtKsy8+aGSr2m3Dn6q7lroNNl0h8Sjh/g=;
	h=To:Subject:From:Message-Id:Date; b=CFS/UrVHjXMsvLqct48Gc2XW9IpqS8UVj/wU47tEkmRPRRP0Mwl4yWn8seONoz+LFWboffq79jSRFzAi8asNOGuJWFIh5T2ewBFI/dHJI/HXF/m01az0mPxrgjJln3VtuR10WrkYzEJs0qDhSt7mR01Y5rZqSRVX4yjzpgQPERE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nhPm3NBs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nhPm3NBs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2BBC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761808193;
	bh=ErcBb5c+rhQtKsy8+aGSr2m3Dn6q7lroNNl0h8Sjh/g=;
	h=To:Subject:From:Date:From;
	b=nhPm3NBsfoK5/r0W74zgipr5zAMuFUT49I/QxG1wPKgmK892KuqHduu+ZcrAg322m
	 6T6+lzP3Vzgb9h2s1YjcmGvUAooHloH5dtAfLxOWAiOFHDeGogzjr2QoLeLSeU6Zdq
	 acPx9gJxgJ0lckRkHFbfJyBorBEZ1zVYJNLXAYWbEF2DQFOv3x5MQ7MP6YsnDaPxGg
	 dPlg18yGhFQD/6vRL5nanSrYg+2lbCfFKSJPWyZWepfO4qtBezCn2WoKK86dVGBePN
	 pmxq42C6cz6dNNt32HeFb1YftzcTgiitBs+3q/RTQhCH6yKPVMvoidBs6o9EWVNjVV
	 ZHN7hwKsFe6XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0FECCF9F6
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176180819357.15713.11985931370301743797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d04c780dca95844222a1642ffc50d7d4abacd16f666d73ec2f5e304cac41d4c
Date: Thu, 30 Oct 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761808193
