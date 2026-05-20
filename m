Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E042E0914
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 01:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779241234; cv=none; b=hr3JduyD5fql87Z93JuJWcMDzxalqk2FOn1eTbEimun42XshbJHG2+pivgjxQeBV7tf3I9CtdXRDwhScRexK1yGmLEZlaEmftD34+z2khvlo3Gm2RKrU9gjU+gA25wlhksxS3PmRfkpU8Q01jOvQrzcYtttPNLk9YOgLBs/mrs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779241234; c=relaxed/simple;
	bh=yIP+QaaB1dT4BB67PQrN7yVV1D4bwfAKF1e3o3Xgopk=;
	h=To:Subject:From:Message-Id:Date; b=VquWdHlN7e807YgaZdDehN3PaT5wGEBTKhBFFC9/bEDJ3IZfqiDoOnzdHTHDdZJjlcG+XsW+Jl6gTY44IvC0Og+BNsfL2y+TxHZ5skHYR8+/Xc8UJDfxGw+ClWKTUk6yCXlfDzJk8kV0Akv60baUkY5kmW6LygBq+n+WcMDl2Y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mDDcJU4D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mDDcJU4D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C45B0C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779241233;
	bh=yIP+QaaB1dT4BB67PQrN7yVV1D4bwfAKF1e3o3Xgopk=;
	h=To:Subject:From:Date:From;
	b=mDDcJU4DeZtr1XIAiyrewyVlaVplrLvXN/pMn1CIL9cG6LdQrsTI39NzsqUsL3wPX
	 jD4/F9ZIkQ4l0ILpHH3e6TDtyvqNBBU3xMTeZUf4UvyV9D9sIcz6JRWnDsPgc5kxz4
	 QuXj+JJW3ylx5lKj/4ocQZbzp/xGMAQPXuiVF05UCLXklDBSI80OIdCqo5IemDzI6a
	 JuUx8ujsRdbza89PIuidTnMRQ2w2nlp0FRI90YtS38QWRnYxCFGCc/N8TMAxRoUU+B
	 uoFZn8tUn/oqVexNjdx3wofyemw8Ul9NSBdTnf55L+0TZ3hO6x+vkOAxa8cBqoefTR
	 +TakW0EfEcaMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEFDCD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177924123369.4191.2933785727443154458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5a5194ba0f218227aaf350e83d37273502f023653d2485a9c3ce74cfadd8457
Date: Wed, 20 May 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779241233
