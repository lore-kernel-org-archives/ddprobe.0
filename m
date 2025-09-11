Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3595F2459FE
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 07:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757575795; cv=none; b=bVvUtTgPlZWZjefhX+ZoE07jmQIFT8xxUtTOM7Y+KcsIO8TANM/uZOmQlseDmPCC2lQadwxGer3Ejo11e77ioMH9dmDj4Andhj3eteV+HL/Z/SRpQY0h8zr2MFMPo3+Y0NV4cggx36qE+LDvn80RhmnYFqDbke26uw0ZQ04MraU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757575795; c=relaxed/simple;
	bh=cZQ1iimkm8siwkZdVsfAls1sCRS7R/fe+7vVHW5lYGI=;
	h=To:Subject:From:Message-Id:Date; b=E5gW1AvKWfz2A9FW/EwE+SXnDc/Xp25IUlHZMnQifkRzg7xPPCPc8vfPC7Nt9VylMulYUGR/7221CAHGzMyNXvGkisXpIqpAoCsyVMAnp2Fk4JQpcU1bdSuZvNK8cn1REMxc2A3z33pwUnub76Rf7zN5PhHjHAbpQ+9kVzJzWZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dphlGA3g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dphlGA3g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CE4C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757575794;
	bh=cZQ1iimkm8siwkZdVsfAls1sCRS7R/fe+7vVHW5lYGI=;
	h=To:Subject:From:Date:From;
	b=dphlGA3glQ1og6nwJ8h5oInd1K62SyV7dBbYS7kSO/c+tVtLnXCgycHgrxrXWYgtl
	 Fur73jdQ227p5tNSA0TgbFi4t2/E4tPb1C4L4yVZncRGjxlVxvs46oJXHbKXg5G+B4
	 PQ61uUIXXheCOt5TMJIHMdQyvpcxsMsP2PTXbxEHVi+mYSpH1n8+AeCgluq82x7BSI
	 7YG2ACor6nnRRKeH6bAEo6bPmPjcYsk2phAR0cwH2KjUi4qWlm5iDeI0jeEsUnUHkh
	 VVW5z+mKQIdRLqHvHW8V8s1Pij2mAnaeoZK7UOMbsNfb3IOspiUnqMC/0LrQRmSeWZ
	 nAmBVnyCpTKyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91450CAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175757579358.18253.8808302406719572935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6b26567285a9f34a72776e943d9736830b09196e56162f8f98ce32d17262c26
Date: Thu, 11 Sep 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757575793
