Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 694D222AE65
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791940234; cv=none; b=j1/+PNhFBv6uJnjfd5ahoVo+3Vz9vMPy8Zrq0no0tlleWJMs8v3Fc1qQh9OLe1v7J1yjrlJ2X4S/PG2N1k8epiJyYbP7VVQzS3/9zZucQA9FATuSdlAz4rkZvduZRUxMjc8CbSpqZJ4RSYwMxeUu87u9XXmAgK/R5m27mqcCSuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791940234; c=relaxed/simple;
	bh=t5rXQs5dprevnK1alNqsZf8uFIA6RHEAjxGiFyv+USA=;
	h=To:Subject:From:Message-Id:Date; b=gMmfyC8mp5ZEMWBYlSgBkVuaNbWrgPaH+be96sRN0w0gRPx8DqDxEOIVZROxxQ3SW2QnMc8hPN5ZpojSYvZMY3L9BXTc9J0n6l0ENm9zvN6uE8KWI+GtC1kXbY3Owu4esk4DtH2/JNgf47HSqWRCDZlv+oZ6KNeM6c+gXc5G6xA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sCxwgdte; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sCxwgdte"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3108C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791940233;
	bh=t5rXQs5dprevnK1alNqsZf8uFIA6RHEAjxGiFyv+USA=;
	h=To:Subject:From:Date:From;
	b=sCxwgdtet7UPNoak0ZoyqxfMv33wCiKhDgdmsXUzt5sc/WeGW0gNOJhHHgezZoLsJ
	 dPZXGFPK65Wd22psGcfnErteFDinoCoFWf236NI4pS+G/D7jq6tD6v7zRA9tKwMdqC
	 70lo4G0jDJkTwiXkLxSuhBRoEQo/xNgkPQEb/vfeYJnN5JIOnk3RGSEh5Sa9sSkdu2
	 mEXVizty2xnRkwlimV5i5spcDc/Ir29cs7tkCtxFYNs66oK7vbOmr/G2SOz7WiNxee
	 d4CHQHGApJ0QjBverVJ/QWcf93E/B65lU+HFre+LN6ahEcN7uC3t4Yady9AUK3InJ4
	 uaDiXkYMhdDmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF46CC6B19
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179194023369.23776.18104949524930767752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c51731697b91f9096f8e4e934f75eeb1e5bb2425d6230a2b73740a78c7217102
Date: Wed, 14 Oct 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791940233
