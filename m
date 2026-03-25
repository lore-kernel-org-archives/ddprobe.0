Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1231235294F
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774424094; cv=none; b=tvJju9e/NSQsTWb8mjxRZG34wemWGscwyuwjQT9WOTMKv/R4O6aqRpX5lmcgYCEgZEKfFAzAeRPDN4pw1TSgp2HKahelUa/+9phcx9IkHrGHh2d5+r0cNwk8kH9BxZizWzQ90RCDGAqo/IzCFgr7q63ypL2sO3r+EZ8WS6ABGLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774424094; c=relaxed/simple;
	bh=P0ZfzPcHkc+ctKBULuRjolCSVanz5EUnCIdmaqDBW6o=;
	h=To:Subject:From:Message-Id:Date; b=f/qGtKNui5uenacsasC8d7KBYg48HP4xyU9luv6nPE86WhDW9iFrl1SX4psIWZjcFEHIyW3t0eEZMsgZKRVKgwgqsULWWAfHhTdpvnQ+krP9P3dQl1kCgWfc/J4So0bgkO8UE6rjvjMA2hw9HOVUa185IbJohU4HhwbJoMyS9C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bdMnd+X0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bdMnd+X0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AA4C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774424093;
	bh=P0ZfzPcHkc+ctKBULuRjolCSVanz5EUnCIdmaqDBW6o=;
	h=To:Subject:From:Date:From;
	b=bdMnd+X0RY/xreTigPg3Reip2k0eUHC6sNFv9p9p84KVz0GqWKJuNt0YFqZPzmMgr
	 i9BT6u0CYjHw2coEgvMPfKzJ2c9o4hh+g16mMTREQsscQiOjPMRADbAaoKmdMOWNi4
	 PidqIn8U7kuU6nonLeXLk+0lviqfo4YpkUdS34QlOPqhDMvFdy5X+IOIcugDvDAGWT
	 zuKQtGA5p/0ILGr6OdMv2L8YCMd/lOIooHmOcPUe2zvcKfKnc3YjAcF98ouZSfDUjp
	 5XCVgUH6RJSuOpn6/LXWGwkDDLdeuJz0i8R4G69hOZez1dAKQbOZ0KNpv94rYq+8YS
	 eJhVRMEZvVrEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912F4FEA82E
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177442409358.3971.8828054383000433525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aab7c9dbf95c3775500a80dca76d41c2552c28f600c558a9bf10e5d8bc7a52a
Date: Wed, 25 Mar 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774424093
