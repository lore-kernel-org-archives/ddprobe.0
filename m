Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334641C01
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756348794; cv=none; b=cOQJ/O+rff6eNSnUBEFK12z3JoH9trsebMRX77/nFomNghAVIn8iMRn1pNVx8roWPSh47RgGA4Rr5/VZQ8UaZSz3bA9B8I4VCLWrev+U5QmyUhGtYSzS3hdpsz6bojsAQWO2A9h+x6NFusa6xyMwHece5ikxbHSng3SyhPjqijA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756348794; c=relaxed/simple;
	bh=rNXs9dtPkTMlrGCE+gIeXTkr7nhgF6a9+EI2JKsbxeU=;
	h=To:Subject:From:Message-Id:Date; b=KiHiozkPUSC6//VJ+EU+Nd3+I7B57bjH1I1IKqp+ALkVdQ3BrGTNENwaOnCc9ZdL+0h7t3E4JVyYakf6W6RkOQyOm7h/oFSpPTuGzUCYIw3Z/TWi45x1+O1Jcs4455d7bkZLdyM2Rdc9MzrUxZ68PL/V8+F/UwmcYNlCfERHTS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=depWwTxV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="depWwTxV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5C4C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756348793;
	bh=rNXs9dtPkTMlrGCE+gIeXTkr7nhgF6a9+EI2JKsbxeU=;
	h=To:Subject:From:Date:From;
	b=depWwTxVhdfPMLRmR3v+RhxyRa0WOnX4cxTunSQnC8uV4fddHq5hHKx+RnBh8eroM
	 C8axCgnPcvjzRUd1UQZyJHw2HPDLNU8Rq66QecN4fW8jiEBq7NtcJpFJM3rg2J6XqD
	 aMr0LHWVAzNmWiiu48pSWf0hLcESBm6Ljk+3XnpFUm4bYC3VNbXSShvwlJCU+r8yPE
	 chlebyXBeu+weVogBthYPocrTelWXojZuJR6uiV0VBOuLrl8pmpjok77qu5bMtg41F
	 IhuJqTEn3E2OkxyVrPIwBRUdDKnOByw/mAl47Yv97Ud7UQ11j4NDeSc+b3biXzP36Q
	 /CY25SoCXGGfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5CDCA0EFF
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175634879357.21586.8271926681262238377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 099d1ea7cf93eb4892885d7c860f3487e484586408b82a10fa76afa17a88b38a
Date: Thu, 28 Aug 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756348793
