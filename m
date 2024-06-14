Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C0382C67
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 20:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718398703; cv=none; b=hiUfyauGZE99YmVLT+MY2NVV9LQo/zSMrzAZU6qotzCaL0Pm1GMvmZQj+zGBVOx5OViDFTvPO6TjSRpuV/7DET6UufORxsn23XEpUrqII6MvPpn/O5nzqZxIRXjzbT6zt1audVCxAZ+pVFOTp28WtlkMNUKCt+9ybuK2K+n/4E8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718398703; c=relaxed/simple;
	bh=lo88F1a/spA6LTNmGGlFALV/79DhbsWndK9dnxCovP8=;
	h=To:Subject:From:Message-Id:Date; b=GuqEcJtvMAf0FzWaVDDzvQO8l/J2YHnv1bXTyoRmFRIBzxnIWPRsbTGp6Gblq1fJAJ+t7QUfGddQkapfxyHcjTKjaPxHRy8Mlm8pZZrp70DI1m43whbkuC4+++LU14fmmMBwIovaO6Gawjp0FBEEuzGWKOG8iNpQ5nU2pyIt4YA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ku8IWL+u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ku8IWL+u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAC09C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 20:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718398702;
	bh=lo88F1a/spA6LTNmGGlFALV/79DhbsWndK9dnxCovP8=;
	h=To:Subject:From:Date:From;
	b=ku8IWL+uxF7pNxfhiPuA3IJ3MAV2MA/DIWtSYzHG18KWtLKqTC3tMfif0XwigiN09
	 u9izdsdCPyD3Emtp8KIIrwf+8ubUdZmHLy/d7xv7v7hwsXkgHHGG1rSKAOYQcPH3eM
	 SvQhvDNTbDNqP/n/3+dYdNPSbsn0TJnX8oXWj75O2NXjbFQb7YwFmZTCUxr/jSEkOE
	 vUVHZsvh65BK3I1AamLN3onj/h0vDCeoi68zvSoTAfWwE07rgSe4IMAsGp86JDs9Qe
	 euWp03ZtJaZaRoWLDGTd3XJuSooIiD9+Ymv9598RLTxlRmVCzL0UFnB55BakoMqysN
	 jm84A1MwZMYqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6B74C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 20:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171839870280.21309.6028348460842209841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 514d643bf62817bff393c1db868e05a8e4cd57c55c7e694ddce43b0363606770
Date: Fri, 14 Jun 2024 20:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718398702
