Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E79D2D480E
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767430434; cv=none; b=muQFCJQwBux6dSwHE6OvEyyMiZGM+vY2gM/IctdeUriO8EJHIFtqN3Umx4Z1tajLzCo7ylhH/4c2RVN9HYks/Y0L8+46C9jUx0rCSlokxF+LeDztOcT+NqUi0iEJNETHzqt/PbbV3ZyEdGJEy7D6Q9lPyj7LtM1nm5/izU8seY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767430434; c=relaxed/simple;
	bh=TzOvtSk98Z8+DxBzRM3LTYVgGr39KF/qYfEZtPF4+2I=;
	h=To:Subject:From:Message-Id:Date; b=HQqJxZEbOVX+XgQEsRSuc30nijImP7CBGFrqKa4LQzAHn7XxViMJlQneyRsZgcTKq1rrNqNkiKEjHM/8RBu042GlPMKWOPntrMJHdDk922ctaf1h7HPx4j9Fxttf2buoVkpkt2RfNqEKEOH/q6O5HqvAOPJDMVkhNS3VWXbD7iY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XeTStDny; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XeTStDny"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2185C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767430433;
	bh=TzOvtSk98Z8+DxBzRM3LTYVgGr39KF/qYfEZtPF4+2I=;
	h=To:Subject:From:Date:From;
	b=XeTStDnyZIgNGD2kZhnMMcIvqUq8o2QdU1hednIBGZiTF3ZaJm2io9sWHBJw1cxcL
	 3eh94DxKK716bUscjtC/pW63OTAcegAgsW1aft47iA4atQki2BvOWCjoxT4iu0/Gsj
	 YhCzL9/Pi5Dymy2jp/ADAM5vRxjB+1VMTzucuWxCTDxmDk7z/NqxchQsYyZRblHZVy
	 PMlC78Afb3frAS3hhDtBjGqL8AmldPFANTrtD1mZtdoLVNhD0qgUqarWAzxEB4dpgY
	 rsigXG7YuuSNxGQdmoipKc2B18E6Npth9kt3BlD3f69r+mT4YhOpvFdRoByf5iyfiS
	 1WqzRosPOAS1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91007FC6177
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176743043358.11925.12448988733887435951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf7c34bcfd7b633b387c93e01ff497ea763df61b3212024252e6ec6f15edd03c
Date: Sat, 03 Jan 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767430433
