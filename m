Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7AE1E489
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732905954; cv=none; b=M7wfUNwAhy2NljfhuBGR4kdwOpkYMT1rLmIL/OPs4yNWSEhX2FjrrilPSlFkDVPAn1XM85YDxkkKmx5tEuBR7nbRJQwCvVLSv5y7tfP7RBQDBfs4NQ3sV6MPj4SdRpizE461RXjJfTnV69Y0b9m3bKuUR0S66bimgrd2sncdduw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732905954; c=relaxed/simple;
	bh=ForLhc4b9ZBA/kan03S1KHmCwfrPH4k1GEIKzmH8Ho8=;
	h=To:Subject:From:Message-Id:Date; b=OHKJMrEjECo1VwJnPgNCYMtSHmE+vYIfzVI/1yvuIvF53/kulV8Pk3Le2txdfpyqLABjvNBTsVaA3RUeOA+YInN/6PbFoESipriDrwcP3DbYAxK67k5bMN7mHKADE9IBsJqaKrzTFqtnGUt29XEflnE5XpdOdZWaf/tYRZCvoJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OfqschIz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OfqschIz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88D8C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732905953;
	bh=ForLhc4b9ZBA/kan03S1KHmCwfrPH4k1GEIKzmH8Ho8=;
	h=To:Subject:From:Date:From;
	b=OfqschIzVhg7atnT9laWh2MkADYq8Va3i/qdrckw1T3mfJyLWESPjJDruivAyJ9/h
	 F3jaFfN+gIs44+9djgd5jfB4okQTbyB7AkKxl4HMOtImgaeY81JlBchQ/jD0T/ENeN
	 JpOutrMZHNFSMpyEfyEFIcBuOjpbfjsTkkxLzeHqOPuI2d/gjf+IJ3EqkHqOAE/6UU
	 d0uV4XpMgUIQdLJc57doniV6vb1wrs0RFZ0Z3jCI0nhdNmc3B+TJAgiA9Visue6dYQ
	 VFbXWftFMAVpZN+kHzdgLl0Y0afE/MnCwOP2W+h1BimAY6722C5be/Yhza8kbBqpPp
	 /M2u1xLSsds5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7022D729F9
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173290595361.3493.11015806014705098909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df9cc41d37cd9feadfab7bac64ebb8bd1a4aec55aa3fbd18a274a13ef5276056
Date: Fri, 29 Nov 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732905953
