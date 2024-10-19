Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17153156C4D
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729302354; cv=none; b=eBDEFD5r2IGwEPPJ4tlxo8hSScPDJZHe0BXJZJEw3L4mw1LMaFYjaSSMsXNU8e027FeKCv8Vk0ebybZnsYN0beuLLKjPNeMPPwIVctSyDaiDqgGpbp+/+0w0qShkLVe2JFwxHig/0Y/bWOIpsuSbj/QbRb4J0zgL7c9xUVkc77M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729302354; c=relaxed/simple;
	bh=lara3qqRESVTXO/3GZxDWHMcrSMIKy/w2qEL8PfD2WQ=;
	h=To:Subject:From:Message-Id:Date; b=UiTAmf1dP2nH1KV1/LCIKFXrL/HsN47Z8zM11YIF3wqQbXgCDbzj4Wbf+STtDV3HPUhrfv63mzPEffgfzLhET/lPSNfQUqKrsf8LWLOgIMMiRWf04zH0H8KhbiEGUXpQvSI/5jcV9693TV8Xd9a+aYs+1Y/1qOi+Tm/43SFKBzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mPaFAtLL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mPaFAtLL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1178C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729302353;
	bh=lara3qqRESVTXO/3GZxDWHMcrSMIKy/w2qEL8PfD2WQ=;
	h=To:Subject:From:Date:From;
	b=mPaFAtLLEUEkhaKlnxssPDVX7h5bM6WKjVn4Njf66Mps0dcoCl8q8ganeDme5uDIe
	 h3GvXGAuXyboDbQ0S8B7IQ7qOreNKylHp1y8KAgx7zoIhlZQXh5dJJz5lB6qhYALeY
	 395Y5AtUwb0ezU0DuiWdZVIXN7udsOZGivfUwCYpSmF+Zr6TKWrReGhUvlG3VTrMIq
	 0mXIyKSSpGU63HSMXOIQngqFW2FaT6yT9iSlsr6gCk1J/yF/BACfKygGE6mNtJo25q
	 67k482VH5za7C9HmojVgKqqn/cpr70OtbR0uA1SSic+KhkDm8DGrMEtkDZAPIgL04I
	 n0jIoUvOdy6mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6F2D3E194
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172930235357.314.16747087276971876078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87532d2dbe4bc732db8e5239d5c0866ceda064a57db2c3f3e09fb21d4779bc3f
Date: Sat, 19 Oct 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729302353
