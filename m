Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC7A137742
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729676154; cv=none; b=hu37/8PyOiCIDGmrk7oZWA3+SCYoWow8N/cIwnoUO4oOxvvBzaYvIy0ORycLfqoa1oDsDAltuyfqzOrKGYmUS0o1rABD+tPhS13Bkd/vmdsljuHDmYB5EBscjEYnk31yE4y3yoNTfqj9KXmddJTIk+NRTThKSKq0ZLaT/Cohmzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729676154; c=relaxed/simple;
	bh=wYPXxa9o2S9sn4ozMcKayh2bdlgXZeb0Glp+x42qWRw=;
	h=To:Subject:From:Message-Id:Date; b=WGNLh/QDeTVI+G+zzU6FrVwDFzC5HQY611SPo6XVRcpaiFye3PVl3lmjxd4nBhuWTkGXXTqkinwno4JeHOKo/JMTtgAmyPHlJZT/reVBhyjCZ1ue4mNqZDVAqEELIm3RAz2+mM70uwYz5KY+O5LVA1YZlAJEcmTrZ0Nt10UW89c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IO/ns8KS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IO/ns8KS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE693C4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729676153;
	bh=wYPXxa9o2S9sn4ozMcKayh2bdlgXZeb0Glp+x42qWRw=;
	h=To:Subject:From:Date:From;
	b=IO/ns8KS7iir/xbXGbJv3Gf73sgImX3RmuYlVID3oAk06cB6JxIJX8wc2H6DJGIYf
	 sj14XL4xLcO2jlPbAKj2oH55gkPi+XumFflhkB+0Um0NrRP6XzEtvo8Kloe+bXfsBY
	 IYdP/bD1yofkW1GhHrT/XtYtoUyhduixKHEquI1i31duIqqODeS92uKdBRIoM9SCJK
	 xhGInTyI84XEIk4o/nApda9tBakG/4X9dBDJL5N1vQBDbP9v7mXq2CA2QlL78FRteV
	 X7gEqa98BMKIJdzmVQbMWxDczQj4FhgXCCTnk/74qn2snXwgXqw7ioeOL99WG5J4AF
	 IuB9nfu8Q8EtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960D7D2E031
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172967615360.3565.14521672782227288891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 254d94077303a236ffa8f7251036efa5f8d20820639daaf4718ec99938aaa564
Date: Wed, 23 Oct 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729676153
