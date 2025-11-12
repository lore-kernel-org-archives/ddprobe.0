Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C60022C11E6
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762979393; cv=none; b=hwm5VAZ9ZRLyjr9lXVI6P0IdhRDwdjlyrVPXnTDcSegnQAfMj7JOQ8/3Dywpl6V3ZP6VjpDaAXKiKhGynSTv1w1CKRAItd5HBxW16vWVLs+d03N8wKuGpfz2TuxsnhVz3YHvtI4KtowPCeBJ3l/BQRmgIDrhsXT24HAMkiYz64Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762979393; c=relaxed/simple;
	bh=+FdSNpPAQsSaDuFR0WiWem91jT6cq3nMvlZYuexbXxM=;
	h=To:Subject:From:Message-Id:Date; b=b/LWKpmQ/4kI07LuQP+c3C8OWWq7SagvNxNeG0ynS0oNocMAAW8tZDdeQUtq0P7n7tHlPl/mvjkNQxyYcq6RaFV+Mpgv9yv0TvFjK6fv2+aRDxTwm+BYrxHS8HyGii154O9994itTThIWAAQeJ4NMHIRsLB2cDkFRAmgh7ZD/SU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=koVyuxGT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="koVyuxGT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4999C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762979393;
	bh=+FdSNpPAQsSaDuFR0WiWem91jT6cq3nMvlZYuexbXxM=;
	h=To:Subject:From:Date:From;
	b=koVyuxGTKNTDr4GfWB9KSEeK5svk416lJIpT79dYPXDg5Qs+uVd3/qzxGaYIszu0C
	 /hfD6N4vqw/4NbL1j1+Q8sOiBiUm4QP/yZJG/PdBHvvMe835PQq57zyE2vdX+3L9H3
	 aCJthHwtD3snpC+AXA1m36FihswGzu/oxZtgEDT9BxTvTXDBFoNnYSGiUrKP0IefyQ
	 sRyctpNXK+/YD+S0bkebV3jhj7CXOPj189cNfHAeX2XaPxIgQ7dzTrOjLW63l1k0vt
	 T9f5/jf1dWvXD8UPTdLSWrpU9DklAJphmRtFFEd5G4/suYKY0wFH3asUbCZg4HuFte
	 lVYUMkCVWiB3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D2FCD37BB
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176297939360.22992.3142895364031941793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 092daf989e75c279822b6e6d9091a5d4770ee662439f4b64362c63cca41a7661
Date: Wed, 12 Nov 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762979393
