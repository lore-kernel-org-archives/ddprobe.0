Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DB41BA868
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 15:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719933923; cv=none; b=DBwIMdqkqRVSLZin+hH7aOe1Kq3Irs7yzuiwX6OxI7vgIXqhgPF5IGbg78NDhk+jqepRSUxTwp+mwN/gvRXrGKSOemWcXaH/3DM2LJi2h5wOFoypQrroRCQPDKKfPkvyuqCCRY13ukviJyKd7ReHcar+zpWXQMsHq521WOvG4B4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719933923; c=relaxed/simple;
	bh=Z+HfqGnFDapEBy8BoUyk3y4h8n7c+xokc7Dj2xzpEMQ=;
	h=To:Subject:From:Message-Id:Date; b=Rw6FFGZvepB0TLOnPlllWfeWuWIhOJMlJbGNg5xYC/0+UiBA8cG7GAaowNCWLvlo41qozmCNunhZGi3hPXPN6MpHCOQyorqvxkRlLEq9I1YOioEiJDJewsgVkzUgj/2BXpxFhPZvhMPmwllNQJD7atR7RApR37SW+Ph4QajHIR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jNMTwXn3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jNMTwXn3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A3CC4AF0D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 15:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719933922;
	bh=Z+HfqGnFDapEBy8BoUyk3y4h8n7c+xokc7Dj2xzpEMQ=;
	h=To:Subject:From:Date:From;
	b=jNMTwXn36UpZuROWxzS9Fg7+/uUiRHBFwMGhK5aEGlGoqg46qiDIIvGhFg6u4EeVa
	 TStEcZQTER35S+24KYs9vJ3ilpct7q9Js1wI4fCrjmfYNX4vuD88WhDIneIM38W0Te
	 rK6L0PCFZBnPVCeF9S4bPRDptJqHFclRhH8a0Qxt4fDHIDbVvSDnmJm+NEqdAKRD77
	 TyvLpTlUsaJrYOMHSqOAxbfnOmHDk2BNvuoIv3a/FTCp8hP3YfdiIOZ0X08xVcI3Mr
	 HhgcUlHg8pVZ4LgNKGZKIuaLaWPtjSbGevuCQIsSIpMLrdRDQjttASvpADkcNyvrzF
	 FY3m6a+5/8dRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE8D8C3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 15:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171993392276.14632.1440378306555881358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 584d6f8d6175ddd4d4928ca0cb0c3d6da8f40c4c13ae315779632196dafff660
Date: Tue, 02 Jul 2024 15:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719933922
