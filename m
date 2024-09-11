Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D05F52C1A2
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726067753; cv=none; b=anwkG2P9a+TwxMbipI+1aUinZgo9Lx3KvdzDoug61s/Fe37j1b4U3CuH8l7neXFJORPeRCixQDo3P4xSr9QHzy4wkFZFrxoRN1XlnT7amBEfmXzPCPQBCo6Bpx289IhTmDSR3IstvW1TzIBJBNBlvI0vhbRx/6PBkXxN7cINrfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726067753; c=relaxed/simple;
	bh=4n7T9hYQAVZJMRoIYiV/OBqVxMwxb8iy41pJwmAdWqs=;
	h=To:Subject:From:Message-Id:Date; b=lbiEyJGOa0e+nlnmXUFbir15x0iQ7NkLyjvn0ZmVd8sbAilRvEtD4UHuZ05d3arzqVwNjS9E5DY/TcUwlJWZ4TTqK/pfupP71NGCdBDssG5ZcwheXz3z2bDIMgjM72pmFfErYUkQQRMQ78NljPjXlM3K6niV7i5on297kNnAFMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m9memU/1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m9memU/1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEA1C4CEC0
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726067753;
	bh=4n7T9hYQAVZJMRoIYiV/OBqVxMwxb8iy41pJwmAdWqs=;
	h=To:Subject:From:Date:From;
	b=m9memU/1sZVQ13rwLL+N+OAtiXzA6VkOmTKCSesnxnDCdW6uJ/PxIC+Yfce/9q/ts
	 uPgfxQCB+Iua2/FOs+8Ej1Czk9Ovp0LIqDOYoVgGuun34664kGTR3swmQjzDMPYAC/
	 YNRqS2l/gTPe4/pFE4M5zXVbwO7rEkCvLhXO5QfFiDNh14n6Ea9tF+/AWI31Yz3vxD
	 8d65wBLWhuF11vKO6+hJrQctvTWeU4D8YpG9XKs5smfOX0u7kSjqaNXwYfmQd1PTVq
	 Oz5mWbAnIe7TAyTm0iSe6ec/8Ya5xaXSTo30aNSUEoQeeytQSNAjMbsFRrj1g2kmHg
	 nxBSDFx+ydyrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9054DEE49BE
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172606775358.31586.13477428136830002095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c1c4992297cbbd77e286c9c7abac762f71e0aca771ace31a15e6c3a164edc95
Date: Wed, 11 Sep 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726067753
