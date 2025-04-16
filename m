Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D54118E1A
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744786194; cv=none; b=h2T2ECM7XHzjkcUCDMmihaOTQrLaw9xdX1Y56cmaGaQk1jSOr/nSmR3JTaHkioRR6lbmuPVA40Yj+cVvEydf8NS8tSRc/3lciLp03sDRel7uw1tYIm+sL4pebViNZWbkRjpCusR3YhnmFUV93+NQFcWc2RuKhgHfF7XBKtG/fic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744786194; c=relaxed/simple;
	bh=j6K0ceW/AMYOR6GbdBudfNZ5sv84UHptqmH8DWPn1Gc=;
	h=To:Subject:From:Message-Id:Date; b=BKaRv2zcMsEfH2/At8irK2mY+mMD8Hu9ypumj2SD+l4ju7AfsGs+LM7irFQOHycTScuWewQECtZ3owPaE8WsYrNh7DSA2lL17p43m3MtfcVMBGl/sEnpYlzRtgT3il7OEwluG/fyXJIrPMCLwm7rRVXoOW2o4rOjrcNYYGF3qVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p64/EA3G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p64/EA3G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2C69C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744786193;
	bh=j6K0ceW/AMYOR6GbdBudfNZ5sv84UHptqmH8DWPn1Gc=;
	h=To:Subject:From:Date:From;
	b=p64/EA3GCD/fhil+X6pX0yvkbtlkyjS057dn3PkPvlNT8wiLgeB17IoOruwb//oRu
	 ev/fq68CRRYZkwbY4NmmBumhB2JQ4oi51sTuIVxS/HcNYS5kuRUsMCtn3b2jzMklzy
	 SNmDkvWUGchZPvUmYocOfsJhEOvSc59WKuNExRBQmXkRJYnxoLsfgqwG1ca4ddhjso
	 LvPoazfX49sfPhoiH8oKnISuug1GglPaOXT9n2CYatcPWSkG0BRIol0XumI2NfUpUs
	 6/X/aBPPS2JgqwgaHOgypzl4VnnMRZ8YSVXv/+ZcDTGMXoeAmjZplGDxijtvVAI+ss
	 J4fssZq1iRRkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BEAC369B1
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174478619361.32716.1752326229042025978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c79e2d9f1481b7d40eb6a58e7adf4d033f0ee624af4ab66b9eda4ee996f85dfb
Date: Wed, 16 Apr 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744786193
