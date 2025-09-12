Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2019B30149A
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757677194; cv=none; b=epm3qDYsp/rE9Z+KVXqYywtTbrebp6N4LH5hbh7QYNF8PSK9GhqaBfTr/6lYbpRB3G1mwwAsaSPqpXH5TpvSOfE3QmQrAJ3Caz3eZZ9EwI7tmsVgVjocFT56JMSMzy0YbRecb6ukVaEh6cmNCJw16PHwwuNmVSRCFTA8Kal43Hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757677194; c=relaxed/simple;
	bh=EkLlAdH8ZDfBM1pHYCMBOfoN/zX0KMKvaGbolMRylgY=;
	h=To:Subject:From:Message-Id:Date; b=TLx2ahOfRFDEC308qaDftLx0yYBEqyCFcPqlEu1FCAJh4gibl1U2ZPBJ0yCtIxFDC0BW1kVfJp+HOJoiJgrzrYZM1uTSggdow+aQCXyewtvox9ls23vr9efFlaNJy8FsWC5SMUkznU8E2j0WbwLGogdcLJKTYrnYzXBvsGJmjtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jILqaIFS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jILqaIFS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09ADC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757677193;
	bh=EkLlAdH8ZDfBM1pHYCMBOfoN/zX0KMKvaGbolMRylgY=;
	h=To:Subject:From:Date:From;
	b=jILqaIFSQe/Ia6NUZOD5iO3XYa/VMfUZQuG0Sd7kObccGD3NeMg9JB94qa9ckEN+1
	 v5FaXy916XIB/bh6WDmQ886S68YDb2mxutsvE5UaC+Wb8Ek6Sj/KkleFFbV5bHCiqY
	 cIHEaiJzNSD3dr8pk2wL9DeiVElIWVLqpBOxjwBReQZtOwwq07WAnIBUvKaanQ+Xl7
	 ytlFKA90DBf+pfCLLaNb/A+WbuNjqOdRV0rNWz56kqFhdwGj4AXlAoDXcG8ktxKFyG
	 I86Av3X16w6Iq+6PrJYJinBlj03heQZFTNPKC2YM5fL0dQOBEE5gMOZUtG6/4yZeZ2
	 ft5pzGthjPkkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91903CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175767719358.1382.9592526319020362232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3821bc380d80f1e59998874bc1cf34ed9da013344a29284983aafe25515cff8b
Date: Fri, 12 Sep 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757677193
