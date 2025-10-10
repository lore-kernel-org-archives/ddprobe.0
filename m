Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 099811DF252
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760070594; cv=none; b=JcPWXCqOx3MX4zaKS5ReYKuC7tpfidSJGvQmDnJVtQ1VIygE9tokpiYc76q2/tmqvys43UWVDzO43Ru6nSw3VrWnqdy2d13aS5DWX1GN6IVsd0dhsRv9fRZwMFsIlgk3NWSPDnrHa22QIo3iVnJG3PkZFfW45Jqd3MQnpKTAp8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760070594; c=relaxed/simple;
	bh=eoNO2kJ4ZK8MRa+xrtdk2HvPA2EDXAyeCuMBygiPLF4=;
	h=To:Subject:From:Message-Id:Date; b=lLZN9AJ63A08/r687p7N88B2UvwDaKEU9G3L1GNgsEeuSgRtsCE0LqU3G3Fz6aYrvFbnEaOoF8Lmt/FDLe04ObJSmy75yIX4ZqMENSwcbcBttnqM98F4wwrj5mmS8MlEE+5EVnRnrfjlbr9TU+xbn3aHnru8parRqEAk4Wbwjqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dx2/h5h4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dx2/h5h4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48CDC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760070593;
	bh=eoNO2kJ4ZK8MRa+xrtdk2HvPA2EDXAyeCuMBygiPLF4=;
	h=To:Subject:From:Date:From;
	b=Dx2/h5h4ndHTRnWIYZXS/6pF0D/vqDt9IllMVa55TB5pEtoVC3ddFtTsRblIjodOz
	 tmMbRjYSKvOJzxq/ttR2C6revqPJa1Lv9SedU0Wq8MCP5Y5HQnOwJ1uS7I85tQ61HH
	 frPTT/5osUHgkv2wsFJ178Smjqd4BqI9FwfJ3Gk3p1qku5Jhw8Vb0oCS2ULLtA5S/z
	 yVicA5QfUIMuWYqebP+1Irvv+rGSiZXkeZvhD3h0DzpJZBbzH+DevoCIv6425wv3Mm
	 279JN9T64tgDxfVFYflC7MIfh9+ndpBwRXB/wzJGB0imP3ZcWWB/WiIOvks/Nm0jR6
	 8fIMc1MplwThA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940C4CCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176007059359.15584.6026471124715402203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b9a2a6f4261e90fd55b0aa1b6258a5a3130b12eedb8268d4552ea7ad9e6d8ae
Date: Fri, 10 Oct 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760070593
