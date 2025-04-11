Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D291401C
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744415994; cv=none; b=Pj0uE1pVAhFUELvg5A2Z+UIBFxZlfQmS7DNjNOBoEKjCxZUdSE5R/oEumWTRIKeC2DpFNYFsddG/ZHfiULpAhX4f5cpq9zY0S2cujCm/uswFXOIa6V2trEsBrmUMaOg5iNBo/KeI1jessXlTK9WXPUjoHKk03WkRHfNIcblCyTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744415994; c=relaxed/simple;
	bh=619Nm/xdSrhunwPj6dq4JxBxDoT6bu5nSLnq/ae38lE=;
	h=To:Subject:From:Message-Id:Date; b=H29QdzGQDc+WtqSIQzeCVV3ZLiYrK6OSwazp7h5B5WlbKuDR76+BH6i+IapjCMwymbbCLORUpZZQSbYt6gNUV+kc40rM0+eOcQObJRpMaXal5Zhm3IzUdITJ+GHKlR9O7NYYJLS44i3Ue0QiiMaIaffhhMU0h7/9NY8OQ44SSZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zj0nuzV6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zj0nuzV6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB004C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744415993;
	bh=619Nm/xdSrhunwPj6dq4JxBxDoT6bu5nSLnq/ae38lE=;
	h=To:Subject:From:Date:From;
	b=Zj0nuzV644GZBBfk97bmRJvwXwjrLs6OOeQ5sCTs+QbhiGee4Kd+UdHKVdjuc3v5n
	 eaZTISQ0B2m5fL8jY3+MFVYFeDBBE+W1pKQUU7RzEyFUlaQ/T5V7HZHNgpBRfJhnks
	 Jp1b4jtRBd0bQDphDEwSL9dCawpAVu34kfQ1qRWqubCqjc+C4VhuKHo217Gj+4stZZ
	 oQAeF8E8FokkpP3Us32wk54pL1bgXQaAyvnxHO5FkOIXPxYpXmjJhTJ52XvAhOQ1u0
	 w23xoiEI9BAYnh+VMC9ODEDM6t55joHdM18lezvO2IqksdJKt10rDK9qQ3YV8SDIl7
	 c45XIR+MDkm8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965FCC369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174441599360.6459.2863006812511986979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee6182608ed83431d8935f587849f1fdd2c8ce865a9716c637443a218da38218
Date: Fri, 11 Apr 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744415993
