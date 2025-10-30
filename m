Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 084C2AD5A
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761831594; cv=none; b=dm4n8bcUaGhRJYugRX7kILGqsbAZ427AmKrH6L0sggq9h8v2RMx7fRVV5oIfhl1qq9WP7PtfUd4Tia37NfeXk/zKazXzCa2nUeIIQTxcN+mCuWyqizEqOS5klusrBb0oFew7202Rh6kfvew9KKyEHF6V4Nl/VFryOnd594qvmOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761831594; c=relaxed/simple;
	bh=OtoMWzIP1YW4SQKCupJMo+gLbcV5xyidHFArE7XUFzQ=;
	h=To:Subject:From:Message-Id:Date; b=MEtOZ055nOAvajW/EoM9o3ruEBSPlrlvkr+Zza7TV92dvYrHD2D/2WN/1c6oPc06Acg49oBinspZYaUnBnEk9acrah+dKSBLMlBRaXw4JNDjpDaavZBtqHJaW4IVHrsV7fXIAdMCejyRCDXIHXxi4Eih27o0EU3zkCwFCXyyRWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qj7fXhdI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qj7fXhdI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC599C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761831593;
	bh=OtoMWzIP1YW4SQKCupJMo+gLbcV5xyidHFArE7XUFzQ=;
	h=To:Subject:From:Date:From;
	b=qj7fXhdIDHooCxPilePBqO+XBfEvHCy2wPgrw+x8e+KsSHiHlaP7GWuN6yNnbarFe
	 lA6vYat1PxiWLDNAMvOE/a5X7lV44p8VvjYWh7uOIfrswz86GuZ5F2Zs6e9xNuHJAm
	 2Gy2X8VGs1PK/tKabDAiqgcA+KdHPXsd3GzswHnklUP/ola6HgLmGlZ48BmodHj0e/
	 FfzNayiZ0hmkhTveMo4QjvmLeLG7ZxAixtk8f2Oht0Yxr8ppQcbsGGMh6lcH3CNkDF
	 BU1Ke0Lorg/ah9u7j37Hes01PLF4Mx0EHlID6Ry2MYwAN3RuGFFHn1LFaGzmbPjeq2
	 3jqPAzt/+EoBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99254CCF9FC
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176183159361.30859.12580532421255202397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfa0aea77f0998803ac4f42e49c02ec30f9904fb4ea55c4d72166ae77eb2990a
Date: Thu, 30 Oct 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761831593
