Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0783A4501A
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 06:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720505183; cv=none; b=B9bqPL0gn1oDyU19Oi1tLWkdGBEax3n5g9uAcUu+THHBuEEglMnmdrRIYDjfmM4+ndWvvwI0kOqpgEtnX11Dog4Keauvby9mvJfmiR1WfFA+wmdNDr7d8EmPtGEDrcnd/Xn0NDIduIn3k8JBs1Is65y5EyRVTdZce4ZpKrLk5yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720505183; c=relaxed/simple;
	bh=ptYtIp5IKiFgg4WREfCyGNbCC+4NKk44JyWNs08/3MQ=;
	h=To:Subject:From:Message-Id:Date; b=JEH/wFaitX1IsJnO+F1LCM1MqkcBtLc+7OijlcsAWaDT6lWiTQq94GvjO1nQUZm/EwU7piz4EPDp+mq6gqo/XXfNQXdX29gRpHRarLQ5dy2uWEbHUScSjlTGz2NeRMprNJXbI/97VkSEb7iv0KevjKOuD4fyky4C8dX+cLNQVLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O0I4VgcL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O0I4VgcL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB7FCC4AF0A
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 06:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720505182;
	bh=ptYtIp5IKiFgg4WREfCyGNbCC+4NKk44JyWNs08/3MQ=;
	h=To:Subject:From:Date:From;
	b=O0I4VgcLrvQ/iokYZEw8umZGmfasYld5dFgH22o7U5eV0aVElPjoV3OmClnUjy0A8
	 XpOk+9rilu6lYxDSUAf+LnTWjnsmO4qUCXj7bbYq1Q2mlP0uuTopvMaA25yS1eH5ZV
	 xV/Bspyn43TQ6WYb7J7OE4Jt5HhTI2+7VuZwF0iZjw60QxYZKxXnmde44R7Dmx20hk
	 JevlNCH9OK8+1Cb1oQmDEYrjrCe18mgNJdFwy4ho+dnIGHy+hJPRaGohDUXKnoVDLG
	 b9xebl9b45G7PFB0QENqE03C30VN3url/u5Jw3GbcN17BWwrkRAhk4PK+9+VK96vsJ
	 FhR5OCOGlFfLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C91ADC3DA41
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 06:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172050518278.32287.7698866683511155614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecdc13a889d3db10de24030705d02607a1f2725d5c4aa5b1a99c796abd251e95
Date: Tue, 09 Jul 2024 06:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720505182
