Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2153C3CE4B6
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 16:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775061334; cv=none; b=uOWthu13sjrABmp2BsEDSa1o94AAKTj+GrMXOna2Dgralfxe6jfF3OWS9tL/vqK1z4yTEfmGVyjqgd3V3TuAnStPrXZdokV2Kg7Rr7JWcDqWo2A4i3DITdlkpDRjxPRmxLUpN7R2jAGdXsq+UT2X2wSyOQieC3BKs0iU7ImV5Go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775061334; c=relaxed/simple;
	bh=9UxnyQhfEyz0ccLhvpoBKfuSB14uDQdZhlMTdNAaMIk=;
	h=To:Subject:From:Message-Id:Date; b=cMNP4jVrGF2tLvwamFTLAqrOhDDTaWX90GKD7Z+NF97+T7CRudChi0PXXG3hFeqs+/UT6Q8/097l60kFuf5UfL2LrhYUsk7icjqtHjVOiE3+BRsi3DfijdL48zHLF+nOUxBGfG4lPHUlg/0rC5sRdK+gwh+N5WUl/tqJAaNwTDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M20Y+vJ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M20Y+vJ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEB4DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 16:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775061333;
	bh=9UxnyQhfEyz0ccLhvpoBKfuSB14uDQdZhlMTdNAaMIk=;
	h=To:Subject:From:Date:From;
	b=M20Y+vJ1SkRsXkrLcPEHHZJyBOqCsYBU72ssuDXLuru2wCdMSCIQlqrI9/uffS+1I
	 +JbNqLGVQE8fMuezKtVMySC3FoGd3sRh5I16cg3cxeui5/JPRu+uEag3HXD1Py7NJ4
	 KHHvDN7o6nZBdDFIrkrJX5StZQrGQlP6ZMWNEM1Sgriou3pX8gZ1H1nwOzi5qJx3UQ
	 kAUzutnI2VoHMFTeFZbTLGNxvulrY3IeESvrqheroAFEuBU7vw3bkR9r6HW2JPPL/M
	 hSze8dbEQf9iCeI1QZF6dqxuU/9oeeDFHOY52BQxV9bEFyg/VDVa+qeJIfpFQZit3Q
	 AXSynSFPkq7zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB779D35165
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 16:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177506133369.2048.10351551978818695812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea67ea01458a06dd72a8789b9a93ca943c6181dd5dc6805a69db61020a89c60d
Date: Wed, 01 Apr 2026 16:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775061333
