Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402C03FE4
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748918994; cv=none; b=AIR5/A8ShR9iZc1ZyRZYfodWH8Ed5knWvjW01lBWuZx0YBoS3EJmvQl+V/0UFdaAj2um/ctiAvw35ubKxy/EUwEGyfOVSPc6HbxSsVeMF6+VQh3Bn4WYQ7zo/ORawAODMR9tmXTx8ULuxSh6tebt0zuKS562k37ZWp0qzMMEoos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748918994; c=relaxed/simple;
	bh=pBKgtd/iw5dgzO6DHdrISPla0EcUJbLakoHeZs1Uxe0=;
	h=To:Subject:From:Message-Id:Date; b=DLg9FE7qB5SFDipjXOqsNrgCkHcpypWGruiwQDio0W1aZFPNLr6Wp1FRKyQe2Fl6oCad3eSRfQzFvZNd849Z8lm8G/SJozPl/RA/z2/fFqGrTFFJ1QFbhgNJC/9pDTtkiwvvGjkwM5uC6DSaPhWwJ24jvIN7k7IvjxYFJQTXoSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KurQpV57; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KurQpV57"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BC9C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748918993;
	bh=pBKgtd/iw5dgzO6DHdrISPla0EcUJbLakoHeZs1Uxe0=;
	h=To:Subject:From:Date:From;
	b=KurQpV57CZXqsx37aBAI4fdFLBCVimiQ8JAaJpvltTZfMJUj1FhvQ46vGNdk61Q+4
	 0+I+dKhOZo0DYYQFUmWBc2ew2yzdAoR3OoRO6C2OUXvjr0ZiOV39ViQ0c3pbRbLa6e
	 9NH4qNgtOUBfL/F73yayHWRBnj00e+x55SXxGyE3t34uC2Rhjl2Xeg6WfHEgsDn/yY
	 beSVEPRYJHd4qZ8cY/NbpE+51nf159UniT3fjMMS5/G6mcqcip9Ge64xt6L9oZmbiB
	 HVcfOeK2cpkcBOPb8iRWLnv0t6Hb5tzFKU4XUg3GFgKXz0BxqbViq4I5BBMh8XPgEo
	 5YOFxXl28w3Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9615CC5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174891899360.29020.2890815006402827864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d4ab130939b3ea68b9c3bb4f64c540abd09a2cbb35a80f24dd1f1d93c573299
Date: Tue, 03 Jun 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748918993
