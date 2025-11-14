Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571F323D7DD
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763089794; cv=none; b=Z2r5f7CywZgYCfmiqFKVjOwiYG/IYSSdzof7iFAVgGAvpqTAm8aeHfj1ACajO7cIbZcFrjeMTq0Ftdif+JAmLFisjqYilSqUgE04DzvgJAmD/mtVhaeac37V7vMVymN1Wlqj8khU4pH8K0Gcj48mElwBmiEzS/u51agVYhRybyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763089794; c=relaxed/simple;
	bh=/kieFX7pYXZDxfbCkKxYwq766ERQhsPnnvbuw7clHnE=;
	h=To:Subject:From:Message-Id:Date; b=WcYgjGuxIc0es0Tuy9dl6jkNPz+2c7CAk8Z+xyJMU/xfan2RUYJYDFflwxZTZwNYMHedrmh++TErxGDo1hRSvp8CNvz9BuJABqeFYtDd+Smjiq4XNBfSpDMLALIlF67i8OUq69KRobFi5Iv1O9PgQSp2npjNnjNGJaXb386n36A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=po/iOQK5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="po/iOQK5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C29E6C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763089793;
	bh=/kieFX7pYXZDxfbCkKxYwq766ERQhsPnnvbuw7clHnE=;
	h=To:Subject:From:Date:From;
	b=po/iOQK5KJBHqX4AkC5snwBEHNtL7goMbijOEGCR34Qv4JF41292Na3XAJERGVFzq
	 /nGpA6xpc3N68Zb2DGJrQTE6J9CzQeA0jTvgB8HMP/PUHt0hKTCQH08VC6IN7lXiiB
	 tDV/xVl/mV8S0HB2FocMuP9XO6CIijoIJobPJ888BsUQ86eAh0DtVHuXuk1kgYVcdj
	 FptgXOt6lOEdF3pRO1v0pZikGqnd/zPN3IrCACTHHPHYQjH029p6immaHzn7rRiAnf
	 OFXz7gPdbNPdmSrQDWJVI/LkVGtUtu2c67QDWGtwn1bkWOrxZuwJnkKOPCFTphQS6y
	 iQUAvkLqqCGmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC69CDB47D
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176308979370.12633.2407965344037392841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f713b99c850e241fd35229266d4b89bdf85fc690366fec91818ea9acf2b8ee4
Date: Fri, 14 Nov 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763089793
