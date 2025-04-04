Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C08155316
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743748794; cv=none; b=KuJxeeFEshpkBuM8kvwqsMVX0ByiSI+WNt/OdCMbT09a6I02Xsq3Nl4hBSrGsPjkf5D0w/LiWFtSiRRiBeoCcmD+CbZGUucQvqxUTIdrcBvN0mMj+4GELVcMLkDURkv5wZ1Doee3KLSHvC7mPQJb9cO6mPMUdf7UuArHKCY/Ngk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743748794; c=relaxed/simple;
	bh=eb4Hor47AW272J1/D7gC17tKY8Y4SeCJZmPtXdcFD2s=;
	h=To:Subject:From:Message-Id:Date; b=py+gbsYKFNVxBgBq9LbY8SpcZCZLA7YXSQIwq6hDgoTYy4gdVInmHhmuygUvP7GqxgrSRp5eSlBUO4hIRjB3ns1TtWZnpd0lFnB+2LlZqleLdB5yK2i1Oq8LZakItRMhjSkxkd/BcUDUzcnDyK2n1twro7HLNdRnJYNDLIHvvSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XA7RegZM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XA7RegZM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7ACAC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743748793;
	bh=eb4Hor47AW272J1/D7gC17tKY8Y4SeCJZmPtXdcFD2s=;
	h=To:Subject:From:Date:From;
	b=XA7RegZM/iRpzdfvS5BE74zMYEmuosuU0VqsJEfROXRDTXnwEz20wDWbzRQ6EHAA9
	 UHnzmErHbvwZTHn78L7DrPc5qk5X2IkKgnXufxopRe08bNePmjdvMeTjPRlEMCQI3N
	 r56IIrtWpDuhoe1rDqE/Hrp0AtI58GvzL07dh6CmBmfqSVai4/QOpKFFmoLhOLObRO
	 67PcxYQzzfjJplrg28KW2kMCAXuiwOCZO5QdLPKH71aPka8tsS/lRRkCHgDPWUG8bP
	 zIjzQv0heRFbP+S94gmP0QaOFIFrbr/0au/pyM51c+bMcHwMgqUiqu0JbZfLFBfluw
	 9GmXlNnc8+K3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90683C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174374879358.13341.15334661701375483935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f10c57c67d3816b0f2b285d430d71a70dd6980468415f50abe07a9a45c27a039
Date: Fri, 04 Apr 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743748793
