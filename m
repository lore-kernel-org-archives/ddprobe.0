Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D32883A7E01
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768841035; cv=none; b=r+FTMeKrYjID46R7JpYh0vuLTfP0a6jEbBqenf4K2qafQdmx2NdgokxlOatt4WDqoMRq5y2EL5BpN6JlgIrpPV0NrngFHFmE5aTm20ocGUubc6fn7Gu4kEfMCl+tfEYpDMZfHvJNusvbSStAphMg3Q4zQuNu42Joc/dD9Y5VLWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768841035; c=relaxed/simple;
	bh=+TlZI0O9ueGDbHQlAEn1xvatgfLBBMiGUww6LPHh+wU=;
	h=To:Subject:From:Message-Id:Date; b=rGqEycCVql9ei4rFsJb8qfJ9UUuKCoePzoqtyzpdPhCJELCwtOZKkkWi96nUnp9sDziYbcBiFwffUdZRMoEgIKSUn7ctOx4/tiJLEzcYqZMhvrKGkDfTf9K62H5rkPxAOG6Tdq0OCFrTgg73WI5eo4y5XC58C+4NMvcAIkIReos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iGTUx4kG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iGTUx4kG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D773C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768841033;
	bh=+TlZI0O9ueGDbHQlAEn1xvatgfLBBMiGUww6LPHh+wU=;
	h=To:Subject:From:Date:From;
	b=iGTUx4kGt8elL69TeGcfDP4p/MmmoEEwz8V2bSIXKY7D6DTmFcFrzGnGlieyYQrO/
	 MDkaKdK5CA8zyQoKmM7csTVumcovmGdT6m+YK1tnK3OzCiSZEizxtuagtNHVKE7U7N
	 fMmk6atBkjaoMIrVUsImmqZG08XA38Q0Dr7JKIIkHL+rF9VZDHlqwFW0d4wjEEyPzQ
	 lb02UmQblA4jrz+wsiyryT6YRDGbYb038J6ZQ5t3YGpclVxn9swD7S5Pl99ewKvpTD
	 QmcsAa+G2oiWsjQRzmM64XfGw2JyF7tmJGAW7Ql5tFIO/5tRDL518kG6YQrcA3ifkr
	 R/5csb8AdAfQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9A5D29C46
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176884103357.11794.11516276986708771698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1a517e5cd4cbdc4bf9dd284358ce5ca3cc62baa0032852408e53e3340bd4be8
Date: Mon, 19 Jan 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768841033
