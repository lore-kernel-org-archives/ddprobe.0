Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116B41E7C2E
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757910595; cv=none; b=bGaO8QYO5wxFys5sC54s82b0hsihX8JLpH8ET+/71VsThSfUErgNiHwTZPGBOQayQIfxNvT2YrbEUMkCjsgcVsDhrmYMqHrTp2IblgosWEXbJxAnmXHDpS81JHLeu12QVr0BWfgEL+WKj6c/pawx/HmVwCnxnxuFz0jpp8CuSBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757910595; c=relaxed/simple;
	bh=O1rqPZJdlYfg9/rxTYv2GHSOJbpkD8FBNSbHULxCzuM=;
	h=To:Subject:From:Message-Id:Date; b=EqSMfLPoZc2iclCgZfkW8Ede05CYn+oheCdgxdO22pQk7VHc3zlA37kvHM0XMHeFr/vDVe3cWIQe8UzubWzArS+JpwOGqC/ycg1E/lQXMABxvFirOkAzzqD0MJKhXftU3jxdF2jLS8oo5rqR4aKiXF+L90yhnIddJFKblXorBZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGgvox3h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGgvox3h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C59C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757910593;
	bh=O1rqPZJdlYfg9/rxTYv2GHSOJbpkD8FBNSbHULxCzuM=;
	h=To:Subject:From:Date:From;
	b=kGgvox3hBgALlzjKTpefToSk74pkLr4Jvj9gC5qD+T6xIh/3449AoKmCyG87D6eft
	 r02O48T+qr7B58n8fObUJJ4uXwIpL0WTDOW4tyhU/jsScvyQh9xdUXgJAz9oD9E7Pn
	 jZIXBMD63x3pnY6bmJvhswYB28R+7Cd+aEw/uNEhafBMpXex5r86+ceqbJZ6RXitLF
	 +x3q4vN7onfISVGZ2CMWhW0BoAsjsUmCJ/7lZefvNkKSW3V6Xxk3cNuM79Y871r6yj
	 hS3nw8NezrcZqb8WCcRKj3u9qUpdf1QHz+Fi30iG4DDQh+D/dUPth/WuGLUJxx9WAk
	 RXgaGasleiBGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94307CA101F
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175791059359.12283.6719752148897236644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32c2db0cf490e5c578b2f35b9c8275a430d89a8fe96668f3b47b51881432dba5
Date: Mon, 15 Sep 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757910593
