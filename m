Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F6D2DCF57
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 23:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780788874; cv=none; b=AYdg2exGuvz5LsIXUxq6y+hF2cigzX3RHkmfQNK8JUHKnrrwK8uAbUJJIcu66iPUGJw17ODTD00Cm8GHxcDzH2Y95bt1GKLcK1Uggia7wNkHnKgaYkR0RwzyziCTbcQfEwdIweogm4eOcXiptoeGrYAFJnYGgGXL9mfDxH287AQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780788874; c=relaxed/simple;
	bh=+UDFS5h9COSMgLHiEiwnl5grKQWytep7IBDJAaF8poM=;
	h=To:Subject:From:Message-Id:Date; b=CLjfJs9/sgOPqgDSBxgapIDOKOuzgCVZ84+ZMegH958soqDoHNhdTzVPYumiwgKQG1xMeaIk6tcAP3VLzy7QeM6o4n4babS2An3lAy5V25RZnao1nd20ZYUFmBl+7CZGc/84Ai1atrNMrf6huq4fFR3iMH6TR4MRFpusYjwtX1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=grkASWp/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="grkASWp/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD409C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 23:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780788873;
	bh=+UDFS5h9COSMgLHiEiwnl5grKQWytep7IBDJAaF8poM=;
	h=To:Subject:From:Date:From;
	b=grkASWp/q/otK0oZyHnGkL1vFI0eQnW5vCySuxC3yES+58z7zeZP4jU5bsaYtxEpx
	 pk3YabPFil1G2iiHtAbCVszJZMaVnxKpESY9owNSJoabAvek/da1CKFNOz21kIWJpZ
	 kRqsG27b/wfCb3cVTGGTuoZ3aYYam+xtucdDcIMAmWDQZ38O6wjMQqP+ZPPJFw2KUk
	 Vn/Yg3FP2EHKYq4T+zA8iHF6qGwsT98Stfcs4L13sEFoM2jy/E+e27LYrVEDNYbZ1T
	 kAnI8P1unhLkdJLu2ySgR0ZtNBaqovIhWvKifsBjG2O4O+CTDP8cSNSb2+NVVvKWUM
	 s0o5PIkg0dbNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEF2CD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 23:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178078887368.30480.8605203287383515632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38af06a3d3849288ca0bac80c815011df989714c7f2b853965b39f63e275d75e
Date: Sat, 06 Jun 2026 23:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780788873
