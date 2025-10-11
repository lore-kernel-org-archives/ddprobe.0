Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114AA85626
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760159994; cv=none; b=O3o9ui7LOn/xfbxkh9CArT2nAJf4ot87AUHvpTECl9NlMtTuIES3jpiyLLnmGl815CPOWn7GDdN9pXL1l4aiEz/CCtjyOQEfAjlmAGGGL1cnw3mCtjzA2CIgeRqiQN55hiSNKhmiekKdBz0ipwRx3B+z8rlWgwJxq+XXWfMn1OU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760159994; c=relaxed/simple;
	bh=inyHcPLC92Xs0CR9YL8IlghEfwGOLJyEe9MuaOI5v0c=;
	h=To:Subject:From:Message-Id:Date; b=jV/BezcvI46k6YuJ6uy/HTm1pN1ztMK3uEUvh/amuMZ6Xt2wOEvGoxJNKhw7p5CHE5ah7661x05lNPaKKMI7S2sSFBOYKXgh+mMX15OAOh8XbXUTM54DFCHWmL1mgD7wGi9KVMnOzVrq7+Qnkl3DpEg/9GzRxmLbFVWTvJYwYv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=trTT2WQz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="trTT2WQz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A182BC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760159993;
	bh=inyHcPLC92Xs0CR9YL8IlghEfwGOLJyEe9MuaOI5v0c=;
	h=To:Subject:From:Date:From;
	b=trTT2WQza8EHs7t1LUTRVqoTluDVU8jvS7uRxl5jo1uti+mhyaTMX6NmB1WqsSdwm
	 BmncZZICDszf0L8sumaGVXZrrfA2e3pY3xLDTyYXirbVH4kIEq9dak2JDBg64RUuI5
	 O1TzZYSnhHYYY1QNSQ4xlKf/UYutPLuYPrmfzrkEDajbsX0ftjDuxjX64WB2X2F6gb
	 E2gGihjH0X3SQJ3WUlA2LIO4nwnZHyEPOfjRHLAlAA+N0pET6p3V6+H9QZgdjJDMGd
	 MPesERNxPayXvrl/V8UCULhy5oxHtPGpwU1H4MTdH029l9T/IrQlIQc80mOODVleTP
	 /e+9+iU1XXlMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEC9CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176015999357.29250.12640466210614703060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c51bf2b341a15ffdc0d46f5fd86882af88dfc095e3567579b84c2fbe6e3cb560
Date: Sat, 11 Oct 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760159993
