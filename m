Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BC50A32
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 02:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713578423; cv=none; b=fElzgPDNmY9jf9j3yALjl+14jVoabGgkbVXCwUEUHWReujGHK3Ghytb4pYM+ptBg7VFmuUI6GNDY62K4YGXVYPZE5lDaW+t69pLWudZOREKHKTB7euMFUnBORHuSrJQanvo1swB0rCFHrEKAVrFSKrQkVCr4GDwYZ8FDpUPw67M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713578423; c=relaxed/simple;
	bh=pvnUH6MdP6YEEeJIdnonY25cMhTeHOps7J86WyuHQrs=;
	h=To:Subject:From:Message-Id:Date; b=OcgYoXdjt7rVsRVJeUOB3fYk9rGzebrlr11E71a5BI7rn9dvaTg36OW+GVE8YeaxWOxEegrsI5CSJJedhf800HLvZBMmLBpokeHHBSC6a0yzt5Lf1PD7ggzQjU2N/RFPomvl4i8rQFaosr2R6d66ypy/OSQQMmtoNucQRO5VcdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TF/2gYrR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TF/2gYrR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA5E3C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 02:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713578422;
	bh=pvnUH6MdP6YEEeJIdnonY25cMhTeHOps7J86WyuHQrs=;
	h=To:Subject:From:Date:From;
	b=TF/2gYrR5jpLgWMHYQapyHsUWuNFjcxSnPWoX+5DaduIk+IMTuqBC8ddWYbPqopNE
	 y8j3PijdCJUJTpKtU4u5zX5sbLR2d0+BneZToTBUWRSdT/CUxv8qbOJuq4oQIgikCR
	 bcBT7DW9usnCCmEBuVG9iDnA31vbg1aKKM0UthqO6hwMoOyaOmF272U0LvbnYxpRwn
	 3ZwhKI+vype9R2BOGeeRj85IqVcWjqFH1p4/9YqEjUw79jwi00lEMkhe0wslLYMNrU
	 nO5AT6AM/mnEe4pb/R8dp9uwoU/klJn1Apgou8qv/BcWzQYTudL4x+vEbv8uFL+Ur+
	 KucDZW7N6PH1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4380C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 02:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171357842277.30222.13450223666273269972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 715f17a1748611a18eae366fce8999ba628edc50586f4f0153eb9e5980f6bfb8
Date: Sat, 20 Apr 2024 02:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713578422
