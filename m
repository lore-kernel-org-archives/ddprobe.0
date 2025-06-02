Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F36E32C8B
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748827795; cv=none; b=eoIFCPowmawF65cJ/lxlzl4Vk8lH2Fv+ygdZ7s9RT7/yG1ajpCoCDVztI8zi90oR+bgp8+0U6hNaMXy/yJfP+F1vvfIEkDoHyrfJr5xe8nvKhrhTrsbISQqsJDOX1s7De6CNxdKpii32cuayTKj/3jMa1QXkHElXtnGPm80C3Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748827795; c=relaxed/simple;
	bh=kdIGDNHd6kVPUwvWn6gYS1Ni9e2PCKucaF/TxeFPnNo=;
	h=To:Subject:From:Message-Id:Date; b=WA+dyTJ/rOU/xh9HDVUSwL7o+0xzDycsQrerhrQ9kySGgfq768cZFkJLVKdeKecDdlcIM6FU6nUxVbLJah6ly+wgwv5R9jhwrT147n/E/K7PvYFR1eaBBu3mhR9ajnjQ3d5gn6huMJ4Gw7XOg3eycVjdlaF0BVixRo4AsDKih70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gIRwHU45; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gIRwHU45"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CBFC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748827793;
	bh=kdIGDNHd6kVPUwvWn6gYS1Ni9e2PCKucaF/TxeFPnNo=;
	h=To:Subject:From:Date:From;
	b=gIRwHU45hb6fE4Ljt27oBucPp7uaIkrjnzFWm0Auuv+ciWCrQ66Pv3JUz+QRNNHcw
	 DP3EiMOerZeRZZzXGI8BE+EMh8t6KPyJkXtxTiPGGEIkbYT0Et8+mvQOP1czJXZyYQ
	 NCogj2orRsHZqjYLfUMefdryuFG2kp+b9uTfDT1j3/MIBfb74bsJbgKEeVaOSLfnUL
	 reOrOdHntw1MntknmXsKi2kg2Y3o8YANUvl45WxglRrokWwPZDL7SCbc/IXlSPfOY+
	 Tx1o+ZV3u+wQZT3CEt1mb9B+pMiMUXbNjhlXeuMqt31B4crf/mYPSeN1Q6UPszEPlF
	 DDJneydf02ilQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6F5C5B543
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174882779357.15159.2571977160148982937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71bd9f287221b0f76e69369a53a1f64547db710bf8b7f6cde6bdaa332e166aef
Date: Mon, 02 Jun 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748827793
