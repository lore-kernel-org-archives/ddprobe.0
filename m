Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8D31EFFA3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746101994; cv=none; b=ZhEZDuhYICc8xdBJGaebMsxe5Ebe8gNfpEGinWDT5xmqRSg5IhMzW0HPQpu0jGRwA+s1C6xfZt5EFKggGWGTJBdUZvQEWft3MZUaYMDK+5KJfIqVnF0+9N2nYelRdSwlkBnoXmdR1Zhbmhrv7Jc2wIxR14tduQTuZWDm4TqHeT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746101994; c=relaxed/simple;
	bh=rGeYNiiU34jRaJRLc49FhLxmtk97XWJFOVkEXq/Uw/8=;
	h=To:Subject:From:Message-Id:Date; b=vB/6YYVKNiW71x391srJPNQHueG7/BLSJ0MlyFW8Pnt7CL0uHWr4GM0vjk3SDt0w5BV3q6nmiDa3PudvLk5gP8MJwl3ivgIX2BSWTEhsgs2HoowNMLhMBGczevRF2ArnsZmnW2FgOyMJRhimWDiSE+PQuwQ+Ty/IodLepTWmiRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=axYB6pav; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="axYB6pav"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC43C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746101993;
	bh=rGeYNiiU34jRaJRLc49FhLxmtk97XWJFOVkEXq/Uw/8=;
	h=To:Subject:From:Date:From;
	b=axYB6pavO9tr4T1DU716tr+/FAUJ0ytktpcYh7OkY36fGOATSLVm/863zHj07EzNV
	 p7oGgwymnIWAuIiGRTgZ8bQCREXSR2235b18Lb+iSIV88CbaQ7v8+yP9v5aZ3ghRCr
	 IMfOM+Hlsepf0qoobGqAY+BC4CToIQLtN+UXgGVuG+SGymdrc7bOo9gyIvbCUCnKja
	 ILsstJpHV7C+lG5sOWt7VFU73NmM4tOZY/9CLhw/Jfy9kMRBnK4YzIoW/SEuozCryh
	 rCoZeJ4/OlQz3OKgGnpOhra+ZLSYflSX+gUwH/8ARNdXkW1hHn/3VuWn+rNR38c2r+
	 i99hP4s+eBtBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4BDC369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174610199357.20421.9729036117665528386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eb5c11b5113e44323ec0520b3f7e99c8ddbc51b8b89e4268557606440fc8c31
Date: Thu, 01 May 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746101993
