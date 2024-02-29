Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D633A1BA
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 03:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709176097; cv=none; b=gVOVx6Q1MbxKKhCKwWkml1JQNrw1GMpnDSdO+I1COtyx73QDxW3Ru2IEVcEa4tiqkTxo32WuOWsQcTT8vrdqhNveQYN5Y6sY4hg7GCXq/4mDTGcbN5eBVpo67kHteNTrfa6nByHeaxT6CjwelyHYh2eaoWW8I9I1+u+Vmwz3vNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709176097; c=relaxed/simple;
	bh=N6VlCEoOiCy9XVmrDJzq33Az8ni+0mhIHkizmEBvZrA=;
	h=To:Subject:From:Message-Id:Date; b=lrj+BCzobYwLJPfL11MnmqhuSd/z8dXoHk98xGJxlm61Ash4a0bmKkSd2mnpWZdt8e0aFGPjGjPXCBiRV17LMGReBV48tYkUwVi3XPNBc+mv8uyfS+EmJet9Im/sLOXpi2U9q7CtfDkyeYuoqonxRXujOuqK83FtXSVy9ISCfGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mfPaihM+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mfPaihM+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F1ADC433F1
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 03:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709176096;
	bh=N6VlCEoOiCy9XVmrDJzq33Az8ni+0mhIHkizmEBvZrA=;
	h=To:Subject:From:Date:From;
	b=mfPaihM+te7j9Nu4XwD6wZ1DCyCNefqZYwrdzO9A2xyUQErgIp75HXukVJrYFqb3V
	 f1D0faneNlGdY/t7miraLWw01qlInCiBicmxSIJHTgW3hofzz54GMzNH1yVDq1J/jA
	 T2CSX5tG1rD/z0qKK/Z0MF6qCx4TUUMzyas65gMGiGbFoWyFqmoeztheNZ2k6aV/A0
	 WzcBrMTbqxuWBtjmVgQOOyJ9ATmm40hrY2Cxph8Q/D71QOhsl4Xc3DTx2mlRGhjjP/
	 5C9TtRVu5HBHJxruv04AHEm/iTODiHR2VVS4pHsO3+uT5kLZd1i77inNfYFa7/aNSF
	 JlO8qVd55oosA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 635B1C5478C
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 03:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170917609637.6831.9915229804333963632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7967fbf21efd07facedb13825a30f2af68d2a6fb49ff3ae7e7c01d87ecb221b
Date: Thu, 29 Feb 2024 03:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709176096
