Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A5E6F08A
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 12:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716900863; cv=none; b=StEKAUJ7EDW0vR3Enf/NPJYxStus4jx9Ou7RKlzP9KMkaVbB+8lFo9g/VrXzRg5weAGQk2Sgy2L93P9c3K59uO3zet/86eJsjFX1H+usc5+xESgKmAbX2zWBcdw3ueJhsmiHXZ0QEBHt1ImRzhUpH0oWIPQHPT1S4PqBjY8/Msk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716900863; c=relaxed/simple;
	bh=6tk8kJK5BMYP2ZCVt5TPY1UItSUjeLqvEI3T6DviQnY=;
	h=To:Subject:From:Message-Id:Date; b=co3aL/z8ytWUN8USaSES1kv19X9NhMoSmrF2qf3BZZW0oIhQDBMaOzCyKXr/zIPArl674QvmmeLfji8bPWfrbS3Dk99VHTStO0QzyqRfIyR4hoiJF9f0XPWfaciimL32e7fZ5yd0xHlg8XERAvsQRgZuDraqdsngefCfTbNIXk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hlxAf1KT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hlxAf1KT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E02EFC32782
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 12:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716900862;
	bh=6tk8kJK5BMYP2ZCVt5TPY1UItSUjeLqvEI3T6DviQnY=;
	h=To:Subject:From:Date:From;
	b=hlxAf1KTxiOMH4ef4Okpl82N/zYAGuh+idLUgEGiwI+KYJI6HKhVSUaDzzO60+pt+
	 zUSrjbkBLnTmeP0xwifTrmW5mxWetSpdLmTMZOqz2GanGQkvrogT+ggwue8GGLaj+5
	 qO0dwXK8+H1vNZ7hw6z+LO31GFM03F9/UuHq5FUJz0IsKsvbyjQIc70L78nbfb2ch6
	 nu/loQF9Dtul5BuYX+R9f30M2LSqWF4O9RlQlXS4fEipBtY0x0MpkZpYzuDBhcyfvo
	 7PPdRee3bhgjPHGoANb44+Zu03wL7B+Fyr8qWRpx6nLOdiH6r4lryoyLCyNYtw1PS2
	 lm2lxLtflgeYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9ECEC25B7C
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 12:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171690086281.13192.264083986955673033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02acf49fb9be9913e38b2956dfdc3ad27bb4aa8bb04467c7edc5f4933ca8d57b
Date: Tue, 28 May 2024 12:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716900862
