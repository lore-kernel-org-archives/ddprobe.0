Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 729EB3D8107
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 06:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782455254; cv=none; b=MFPr8G9sQYj0pyfDZo63V6XrEs30Yp0+fzYfHzawaoFKD20xKncRrya7n1R7mWst9+pdkSkoTaGESbD5N8ymFnoIWLyJEJPvXYyusg0jDrR2B/1GMW+C3sf885wBVSPwHBVJSWyeXkuTAP3LvGXe/MzUDw9DPcvMzpTojHd0YJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782455254; c=relaxed/simple;
	bh=WqYw1hFcBTM6XGYZDvV2e1xkdViDYgupOA0sU74rKrU=;
	h=To:Subject:From:Message-Id:Date; b=eHrYaPWxz1RhOeaD4JVi0eEkRFaSH3rNAt7ojgwzLjT8voL+r1hdS/g7qPE7p/r+EV9KzoYqt7VhE7q4R2wOgB0gdWIskpG4EGIKLSFNzD3IphTrfEEWBE+7w+3iLSO1vBJbbA656nQg0Dryj1DgvpanV5NGX3NWtatrBfROsrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJPG8Mka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJPG8Mka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8685C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 06:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782455253;
	bh=WqYw1hFcBTM6XGYZDvV2e1xkdViDYgupOA0sU74rKrU=;
	h=To:Subject:From:Date:From;
	b=qJPG8MkaGxPv172uLs33FgUpdGquMWHlzq//NIvklAFjls8e/AdNWbU18ngzSxd2l
	 v27HfemEjOv09cSsK2m+5OWHgFDngwQ33cCzUoGUgaRR60zdbWdNRncePjRXEBEKrb
	 4icoGyBLsU8upsRKpiNGcPICxkw5uje894NNh9vNdwr1eLwga35Fik9e1mp74Pyrkx
	 e6tv1gb2VGP9CKSZ6PSw9qAcy7niE84gDmVeRBMRjG9IF0gxl2DwH6zv20rbnCnbJh
	 gAk2QNB3lo5rHYH3zYgtkQkk7fbTNIz3o5/C0Lgym6T864Zr5Km3Ux/YDZ1m0XHkZr
	 EaO0rc476RNxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7469CD4F26
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 06:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178245525373.3788.16190181081783308401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e892984117e1a072be6a521330a96dd409eaa0067dea2e4ef967f3acf05041d
Date: Fri, 26 Jun 2026 06:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782455253
