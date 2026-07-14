Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539B7238D54
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 16:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784047714; cv=none; b=nn35pzcMPQJDfAsQhgktDtzleNYHYp3WYUvPoI7Lo0DjgElIWWpA5HuWHMei4y4M8TqmuoKQf5XyxJ2iCDXDWQFhQG0zeT+FkYv1gHgnyMG0ztgu7zwmrWpnq6aJNUVwIUpVaNZFeIQ3Vo8YutJH05bBmNB6OK6ObobGMGwLoP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784047714; c=relaxed/simple;
	bh=lTEnkQnXm4cSUHR5Yv2HtCLkUTBua5+AiwGELqfjVU4=;
	h=To:Subject:From:Message-Id:Date; b=PfZOTO1S2n3vjPRhu908bsDfn8E95D2L9m0F83BSbCJWqkoIKFtNcUgPfDMdIsernNqoJqxSHRISs7dApHqy046OCd1NpMVyj3Jn0+1jDQGIiscAXPCV1ULANZ5HF82kvB0oJOLUQbRS/IsUAsEzxcCOrmRJTWCKDDOheytncu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNXArJWs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNXArJWs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE74AC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 16:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784047713;
	bh=lTEnkQnXm4cSUHR5Yv2HtCLkUTBua5+AiwGELqfjVU4=;
	h=To:Subject:From:Date:From;
	b=NNXArJWs3QwRztA3f6p98J/GxGtJjNgtydtwwfOI4S4ZHxBRZdTCjfb0/Cgl9L0+y
	 kcYzMBeC43WHCqL5gi/LUslmCrzOBl8l8VLnGtj4Dd+2LWBBOYSxc1tORy5e6CzUyH
	 FCLEFc9O01qe9A5qsfErtKAMaTMMgMLgHJS8CrdOcJpQg+M9ArXNWsGNB37h/zXXTb
	 fCYEiz0yoUbe264N6Mk1+iBJWHwQR6srtCPc0O7TsTfXB2xkJocDOme2rQS4sGSXAy
	 Aj6xdUm4cv/hzxg3qeuNxQq1cHzz1li0CTF7yZM+82gxaVRqm295VQZkqCP2T+1gVn
	 pkSsIdevumP4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB335C44508
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 16:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178404771369.32675.31619757642549643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53d6e5759a523d5b7a2fd6ce9488952a76cb3b38e126ca2671db47ee641a8074
Date: Tue, 14 Jul 2026 16:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784047713
