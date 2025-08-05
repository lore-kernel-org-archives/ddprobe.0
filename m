Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC1111712
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754417394; cv=none; b=kVJWfautp1/wWKQ93IYir6+hsvB80u0DchOPsqYKcyJOa7tqeNvxFQpro7lrbX0akM3dKZtyeDD/kWMo1ID31Il3Zjk9pcYivrRs1Cl9lKgXlLXW/hnFXZMOvXB9O5wjQZRpNJqLM9HJAsUUmC8uEg2PQ5Lk0KbGbtvcuReqEKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754417394; c=relaxed/simple;
	bh=hp3sxdA4GvHRsIGB9pkXQMcXDfnegMCpu06H0sDBtQI=;
	h=To:Subject:From:Message-Id:Date; b=Ijb9vk8+OVavlSNy2syZ7OXLu4+74QGr2Vrc3wes/smJEwit5OJo0oqzxC/t93xkCJVndNbvruyIFRfGIS9IZhMLnCk14sQT5BtQMWUcT5FKc7QJ0uCCIzAjG71+fNqMLbqE7P4V2/C+vDHuNc3PRxJ/FbLV4H7DLMFpAh6pims=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jF0VBVz6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jF0VBVz6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE60C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754417393;
	bh=hp3sxdA4GvHRsIGB9pkXQMcXDfnegMCpu06H0sDBtQI=;
	h=To:Subject:From:Date:From;
	b=jF0VBVz6lBOTyK8U/0PBDOqda6cl4A51fpT7RCMHA75SIQiSA5o2fQRUN3qXHHDVq
	 7vO6E6GjBFNN7dVae976lBV7v0f4k5lj2VpN6tXHq/jlCRyAzYFXzJBTCyYtISyZRE
	 kNbmiHv+e3WLO1+jr35xK60bvnrWWx60ntBnsTxpJPgWC1/5K730Z4CK6VFzJxqedn
	 9ou6pGK4crLTaxxzF2Uq4/RUyNWfO5bp8ZL1z0W/8neIyTA9FJeEeLcVA0/lLDC2SQ
	 mbjIwhr16SJ8EFoEGPDhsG0LByPD9Cq6cZRfK/wjonqVnCllm6QnWKbDSPAB+faozq
	 Hcfl/sRg21IcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E2C1C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175441739358.23583.2249201211377991387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9a15953648882444b8000c1d2f00b08721153d9a7c7781ae3f71318d4852102
Date: Tue, 05 Aug 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754417393
