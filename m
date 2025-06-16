Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D1A8488
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750095594; cv=none; b=YfNiHwJVhrN5Y1FO30th9/95Cz2zGhHMq2oVarLapwBa5VO3XphXu22BhVrObuLAM2/7b8V7RZHiYToDtFe/3Qnq1slsWN42y3XUWn3ig9g7m9bVLvf6x4XYTLiKQoamoKflHiSLWcd+eyL85qqcBX7tCWWFh6i5VonJArx3Xx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750095594; c=relaxed/simple;
	bh=5KH89FXfPClu9xXfg9ziEDVWF/FwKE+7TNcuqtBOjt0=;
	h=To:Subject:From:Message-Id:Date; b=Rd7oV2hUePp5XCeJmeX0pPuCw/6wwG+ZGROFvey4XeJIL/MqeykoMEXG8NIgGpb4zEfLEA/jAoY9UoCnULUavQbFGCHgwtldHLZ7MmThZqBsApFyW83FX6WYRF0Ls2ycM5c4hTP7oI7AwVzL9/YE9zbF/hhOLLJoAuwEtzt2FOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rt7OkLas; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rt7OkLas"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A605BC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750095593;
	bh=5KH89FXfPClu9xXfg9ziEDVWF/FwKE+7TNcuqtBOjt0=;
	h=To:Subject:From:Date:From;
	b=Rt7OkLaswR7R3k6AoAlxgUHcO0DqYTkyU+/4qkjj2oIBmwySeklx0r0SpADZ/MrUg
	 CY5wUlKNVRJwuPhyiOlyreEQPXmiOcemEGWPm56yOAHnk9c/SAOkX7MTlSmj7ZOkuB
	 h2CSjBq9nMZOtTqF/Ei74REanTiWyzzY+FT/1gI3W3ANEcyXhyGh26odKIcQvDgGIK
	 0glxSI/LKh3IYdD0+Atvvl+Tmxrwr95V5s9lKkdicnSt4mYRREIk6zYv6rgO/Y4sNC
	 or37CfohOJK6/6IUVk9vt0oH08VIC9juGuaEvaef7kj8BCwbp4OC4N/r/AAy2PmfE1
	 VGsO4VxEkE2zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910F8C71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175009559358.19691.8951128115350295178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecb841794a1686c0863b3ce8000d4920cd690ab392002e9ba3b02a3c83c6a628
Date: Mon, 16 Jun 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750095593
