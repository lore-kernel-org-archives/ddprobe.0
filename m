Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31628EEC0
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760126394; cv=none; b=uZus8QboVVYTlBMMmSaM2NdzlLBzmjvTuG3fasZDGNyK7onCm6ghWUffwHJmpC2aBPg+FAFHj4tK3GncxAs/7IkdYkGOwfI+FUWXcd5zNsDMh17VrFaeuaWIiG/kX2NjH7GfeMRI1/LOqTEJ1DWsMzuYNpGvh1A0ZwcjPnna4oU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760126394; c=relaxed/simple;
	bh=IQBbSmDrFzLAS8tjSKWh0Uxp7B9mbyXgF9CE0n/yB+4=;
	h=To:Subject:From:Message-Id:Date; b=KK0jo46ZfxbqLXtPh064VTuGjZwhu9bo90o78dgcpiSgO2qUIe4sBMpZT0ALZEbHZAGUQ9jFPdEjhyyZh+vNRM+lafnt3ATpSbxwMjgnOotcP86EPRAyjQwSdPi958QwK0YcR5ldhQVQz+s/tNuQH2Y/Ao1jDfoQTyxHt6OFLSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dsp4kYuy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dsp4kYuy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DF5C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760126393;
	bh=IQBbSmDrFzLAS8tjSKWh0Uxp7B9mbyXgF9CE0n/yB+4=;
	h=To:Subject:From:Date:From;
	b=Dsp4kYuyoiK2S936N3Qi45FJ2saQBM+sbQ0Ffy5kmd7CL/E6Ok9QJoJYt6Q9YjwlY
	 beKrFFpLtMJNNji3KBp2ktE56Puv6jIaU0VkNVzP6ahQ2pE+nzEP8pxA/W/ob61AoI
	 r4akFAvnnUxe2AHzvNaHd+wxOkead5Foe1E9pKUydGKtzvobemUxUp//Yx/yXngPVt
	 2VKFit5BQSfUG3rEU1lmJxl89VoSUrMNy4sEi6aD5Pcf0q/Pmjs3vPLjhmqCamJNzG
	 bWDbgMrXVG59OKw/sMJ+WODeZfGJk6O7XXfhjr6Ag4mKrLnRLlvjPqCIVzc0dTIZdu
	 v52TI6RmeMCFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94431CCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176012639359.19374.2281028908475901288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2bb3afdd9c8fb39d2ed63cd7ef845892731c63bf4b23758b266030286f59be5
Date: Fri, 10 Oct 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760126393
