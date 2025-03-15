Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337C663D
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 03:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742010534; cv=none; b=ZE0LZHd9bAwIeCjkQ9HBGjTTGX2Qw3JAPb1gIJ3dyFNRvA9/M15S4OVfRRLJ/A4FLLXKsikiFUIrkTRlyLD/wV3rGGGuwMULSB7kUYGWU15wGEhQXibLopFqviIkZ3pVSsPU1MPBOflkDuTcrYgyYC7Hi2QYq3l75ejDw0wYpHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742010534; c=relaxed/simple;
	bh=FdUmsS1HUo5Ezx7aBBgNkbMqQcm/BNasyBvTSutlPhI=;
	h=To:Subject:From:Message-Id:Date; b=Hu1gj2rIPMEYowzVws8DOx98PxYyNpyRMOu/tYc0YFTBucn5CRGOqQno9qDuFJ6DGudaudIr3VR0H7NBTt32Hao+bSGjUqyT88L0dsRN8mtWL1oerg+y/bD1fnz7w3pJn0jtLXI15O4CD2N4IXsae8HzTmimf6fQu/6wcTwFadc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BW2V2y+t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BW2V2y+t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B35B0C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 03:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742010533;
	bh=FdUmsS1HUo5Ezx7aBBgNkbMqQcm/BNasyBvTSutlPhI=;
	h=To:Subject:From:Date:From;
	b=BW2V2y+tM/fWQyaNvG1kIPJeFYtHeqyQ8mEvt2WGaW3hk7rQ06VWEdEk4jJaUGFo6
	 HgZRLAHxLt5VM+CPVIDSnDdv30Ed7jl1uMiknbY/DBnsIRYbT4Ygr0vBldEEsKvtL6
	 smb0gF0FUsx4zpe/HW0s+rCCaTcDkWMHulmlM1//w7qJuLFu29+x29jmeJyLE+ONg1
	 Bykq0FDqsFbW8ganD5mSO7pnrxC5zvAudB1SEpwX34x/lPiaHxKyUmlPsn9wJ96Nim
	 SteVrcB1NxrEIQnZnLN/H3T9PNxSddNFhZrr9zK1Hid+GtawyWiBlJTMvEtfUZebE4
	 oE9KBBqh1AJYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA74C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 03:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174201053362.23529.13080041127652602709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acc0bc15e219617919dba9e183d61de336bc6adafdfd8df74285657586c98730
Date: Sat, 15 Mar 2025 03:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742010533
