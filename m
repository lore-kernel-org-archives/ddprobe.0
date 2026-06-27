Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48EE5211466
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 10:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782554914; cv=none; b=Syhp4FZ8Ra7Pb1ZANHLCTku/uGR0XVnDWslpk/hoV9X2aILiTuJ7MjPvKh7S62y32Dl14aNguO4NiHkvzQsAIfAM3JTYxHd41NZmERz+LQdVLn9pk8AAQK28h6M5biKhqm0PVsKB/636sZEMVcSaG6mSu0QHeeacuQAGcbQ0AfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782554914; c=relaxed/simple;
	bh=rdpJ7nW4Pn4FUQ6y/JaSL/9JbiD+v5/J7L+LTZi4Okc=;
	h=To:Subject:From:Message-Id:Date; b=Vt8X3Z5FsdPcsBQ32dYPHLXiRld81qUK86RZ59r/jBUAYq1Tx/dUhLjnBAREJeZ00OzFjf4ySBvsnAxgVnBJV0mJDX41KrvdiuIWtyiorxzIk02mJswwQa8Su4ckvs9+aa/fJx/FzmYn4G8eeO5RH4sPyTUwLTi+8YYPV5n7Vgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UgX6CIUQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UgX6CIUQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2E67C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 10:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782554913;
	bh=rdpJ7nW4Pn4FUQ6y/JaSL/9JbiD+v5/J7L+LTZi4Okc=;
	h=To:Subject:From:Date:From;
	b=UgX6CIUQ6lvA2HwYxIwh0xhYE9SZeiBrc990gH4myM8MPWhW9S8g5chrHeDnZ1DK+
	 KAE0KSlkaQuyVl0K/dYbddnkPsZh7lLNF7Ttdd0auycwbVamuj+/TXR7RQmC9NnmY6
	 wfRPoQzdvMPU7C5hNLDor2AMjGXJFpLI2SofF4Lz+VUEGvs7BvapK11lJNfEFFqZCW
	 +B6/B6lsyvMnNABpIkYV3/8/6y+Z4XE0HsH+PpscDkOykcLg0fzlKM8T+LNcZ+srVl
	 APka6OnMLBgDQw11XebaK2+zmvdCac+FB+sneXi/dx09dwXL3yQafll4y7zE7B57Qi
	 em63YzK8MNVuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A950BC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 10:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178255491368.23423.7520252527125688999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80a897289601087b712eecbad06481b746b4811453e3db3a264eb69b7e974c8c
Date: Sat, 27 Jun 2026 10:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782554913
