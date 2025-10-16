Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F71305966
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760603994; cv=none; b=sIVG+4cb7W/VHuF13U1VsGLx4Ow2R+Fyj90xfT3xu+T96i0sA990Ac5eGutQbfpKvFInb7ni38e7BY+Sj888YWabac1s+N3syovCxBTqk9YLPdWuUvC5eMQ5hAVX1vKo0FNeROqgDy7uQd89hvSy/10T3heo/dTN/Xcha01ILVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760603994; c=relaxed/simple;
	bh=LwhRdziyPz1XjjK1nubNQaysdBjQT2xCo1TpjWziHqI=;
	h=To:Subject:From:Message-Id:Date; b=Ke1p3viscvWeUSk7i5f4muhPvYiDZ8vbjrkBN1qPdKRhZC8iKIU0nikt6qS95VedrzKsg+wEPiwxdfkgAuM4Ir9o8lCqLPbro20UWb0mrhxzikMGlU52rAXkpX6sdPHL0pAqlEeowr5dNmlT2k0FTu3WMuP9O/GnL753rcPNDP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+uBHesS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+uBHesS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEADAC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760603993;
	bh=LwhRdziyPz1XjjK1nubNQaysdBjQT2xCo1TpjWziHqI=;
	h=To:Subject:From:Date:From;
	b=i+uBHesSGsuy9ws9pcclKXwTThZWH4gImFzk4/0rFEp9Ob3bJxwATJc0LWMx9VMS9
	 3ji3Uuh+JUnNKyW/69aMWsWmQNz7OiVO+hXsaqIvj3OKgrKh+EzUPqXI+3/VK60Qw7
	 gIaTi1akREn6cvIKwn7G6kx38nFAGM91yL+YPdVxfKmlFKqXB2qo5iih/0QEssZbx1
	 rNBSdG4ynK4K97SYtTeM/49sVyKO5IcFJmiYEOXb8PnEIuCCkRvj5ncYCCm1U/Cafx
	 YHMeSay3nkoGQErZTy97RUkmtl39OuJqZE1ElYQe2D/5TW85tgi8IsjDw2m03Dy2oz
	 gv/I4tiAPIrbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92474CCD19A
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176060399359.2392.16155548175338428205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcf9789b5453aeb89c0ec1fcdf83cc9c27ebc030e9d631c7dcb53be07115a72d
Date: Thu, 16 Oct 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760603993
