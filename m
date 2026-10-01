Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5032A36E47E
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 23:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790897434; cv=none; b=lwTeH8Qx71sLuGJUsuvs1ui5UzBUuU5wYgD8W6+rQM1FtFDOReRcpACGpl36Xtnov8QfCbr3vDLewSorLbYL6Pn76Yowim90q9Qs+tF/O7SYD/gIGxpWdc1KZ4AHWPJMn3ETonnAgk7jGrAFOXrPQbhP39N/4VOX3W2LYxspHSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790897434; c=relaxed/simple;
	bh=QU86WHK8zHTLwOcvP0/fCykfa/C7VXy5j4FU/65VwHc=;
	h=To:Subject:From:Message-Id:Date; b=Ysv1/pZzVO4TSwsBi2jMBUDqqynbU3ulG4+eAlAzoR/lT9ZgwTQtD+hxKnhlvcpZBJgyPcgJeuEgYF8v/sYMT9RszqcwgM9JAa+oyMivjd4+JnsYUcGu0LQxHVRdNgP1KA8AhteUk0XIoliu17uZyKS9HcdBngAP7fWiFQ9gsJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bac9uDyD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bac9uDyD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7B45C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790897433;
	bh=QU86WHK8zHTLwOcvP0/fCykfa/C7VXy5j4FU/65VwHc=;
	h=To:Subject:From:Date:From;
	b=Bac9uDyDsUGWPmsOIxaeSkQEoEFmNWPZnfy8FOn6Otwgg+KaTTBsJD6ey0PYUN5EX
	 8K5VmV3R6inTXaMBfFqC1weccj5XyLYthachm14xzqN0ywLldRbXifOvMNbjuoQb24
	 5sgLoytleivZhJRfTmcsk12lcFDTcf02BnN48udIAdDozXenbSrHpUJWVR7IrRgSkF
	 ePQPDh9kZ6RUZ8CpAp4Syla6nKvydu2T2xlgegQbeZEFW+5+tjG05YYhYhVg2HkjE1
	 0jhEPtwEULI8FBxpD7Fda5TWjP6WW1OAEBs1gVURpx8hiw3BcP8AMoiSHjXr5Xybot
	 AimGOqxXW912w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9D3CA5FCE
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179089743369.20753.17890996865650868317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fb1a4c3fdca6c781586f80f14b903d987a1adf4b03e3cf810ae3483032eecdd
Date: Thu, 01 Oct 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790897433
