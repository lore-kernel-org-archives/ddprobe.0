Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5DE95026F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706021896; cv=none; b=nwCqP+gSgtyVDvBosck3JhNoPz8Vp4/UYrWfyZgE0xceQ1kvB25hT/4zhmt2dIZyMuMuCySCfWNMpPrMXQL/Qke9CWhF0fuYH77cB0fGgyGi2lho66vwUrgkc2uiX+eJFEHZ7T9IMOxQLhYP61P631VHsHINRMnGkljjz3LB7ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706021896; c=relaxed/simple;
	bh=xcZtWQnq7qxvMpblg93m94krD4hY6sr90CORCosJSjE=;
	h=To:Subject:From:Message-Id:Date; b=hQJdAl2aOg0Y19dTqysiJ5FrLfL0JDIjHUW4uR7ppfTlKWGLJVljI+TcVUMzz1lpTO6m/LGLmdQNt7D5w4N3o/RGKdLfxtG5J7bKbOmmyauDMVsLjNpVoXuka/ETFV3coTVDNBWoTKrQB31oLFiz15YdrCFNUkeSb1+QfCHX3Zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NR/xuPTV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NR/xuPTV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72FBBC433F1
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706021896;
	bh=xcZtWQnq7qxvMpblg93m94krD4hY6sr90CORCosJSjE=;
	h=To:Subject:From:Date:From;
	b=NR/xuPTV1knfpqPo6BnFjnobhXzwff2YRm4yY/sWzuX3HLtiME2quGf5qNAq/BQep
	 D9JkKYtueOWwJCZHY7VtWhvc6igGz/Um2bACPtDAssoZBPInD00RHHov6bc1AWr8h9
	 GV6C/rzXtKnpT8+qVMvbDV6YM9F8HO/DxmWkokSXVHVY65Vg9CpQTvRBceMPPo0AA/
	 b/TcGwjZgp42e5lB9WLZI8ijtV+N4N/BFLgHSLH2i/medeBqChkWVRjWY+UY6a3IXa
	 /bHFDTg8DhS43h5sxuCY8Hq49PvWCIRj8y1hrtZYZcCOwxz1pdnhJIMzVaGJKsU3XY
	 45qoUoDsIjWew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B481C47DDB
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170602189636.10332.2508738671097989002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22f5728f2aba56a5a18c400e6c5470b54509d68689254625565b0743a8527b0b
Date: Tue, 23 Jan 2024 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706021896
