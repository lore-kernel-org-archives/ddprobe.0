Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2B6155326
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753522794; cv=none; b=E4dCtD+zuNoNoI/LxTx87FAUhLIg8KEhb+8rlBwqq0n+FHKofIw+DKLVvhaQceDE51UImLwYaryGXHC8NorV6e1Vew2taMK+3HQ9Nh4d0mmXV5nAmigUZIO8NECJpU4u4aYIoSMwYA6hj7++ylogFVoboV2HJlqvVv4JIOtoPJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753522794; c=relaxed/simple;
	bh=lCdvdjCu8291+B51qNsC+WBtEZPcrhX/Q56tKgawjkM=;
	h=To:Subject:From:Message-Id:Date; b=TiboKh7NBYZP2M2MkFzFGa+y7NlFUhCjtt1Ub8VAJs4Prd3U0zYJN60bV7UYvuahAsqrhAzUkxxPs6ADXT4IexdSOVo96iE36PPEYGE0tBoKbH8EhFOx/VpH5FfZqswaYWp1cbJgMX/wDh+h3ggkh2+waOrK2m5HJXj1uaAZQ0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Om1GbDUC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Om1GbDUC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A738AC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753522793;
	bh=lCdvdjCu8291+B51qNsC+WBtEZPcrhX/Q56tKgawjkM=;
	h=To:Subject:From:Date:From;
	b=Om1GbDUC5sBtW0POHXyB5BTITBllzP0soIJhz+4Ve4YnRIZaqHEp3FO3Rh/5+F5Uk
	 Oo2Ix2HBcJ7KYJjMKA4fixTLvU2VdA+dM6xppFzywkVID2+Q22t2gASOzgEQDzv8+n
	 dTkbzs3t3Qa3HIKinzttxAzZjUOefpbUzhMF9m2ov2/04Vr5iOsUMZIEJoO6wArwts
	 v1PFLIWwYnPQqUW8Z5RYqGVtuvaCmcj02Yvn/1ix1fJb+UVpxfdK5h8crjKy6JEBcy
	 h0+W3wEJgyasYzE51Ueoh/q5Za8tgHH8JcpjcJMsewOLdJrrMD0OGniF+yAXB5mjOK
	 kK2G5mzPoh3/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9200CC87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175352279357.20065.7047560029457779367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0343a7ca4c5e317e4192a1f47bcfef02571a54726c7c79581238540da02ecd24
Date: Sat, 26 Jul 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753522793
