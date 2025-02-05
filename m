Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404432288CA
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738748754; cv=none; b=C5xHcPaSILmCOWop1fKdYvpD8edXJcEvodObEwTtrXdvCKXOn/qs9AzC8bItDVh/pokhgfmZhgopxMwsR3lwMfEaKLUlPPVCXrgiUKqwx3/OPnLYKW48ukFv4j6VXejMwMfMXb3o0M9A6uVlvJVYJEVKqb48xX8ixFE1jNKCnzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738748754; c=relaxed/simple;
	bh=8nu3rHNA8u+GP1tBwJ4n8Q3eY22mA8Bv8LXPU24csD4=;
	h=To:Subject:From:Message-Id:Date; b=jPS0lmaEK6w7nw742wWQj9tuPTyuJ3Oi6QxH43g8qaMw5fUX+KyHYVPA6sHBOfYT+ZoUsMahzbmhdcXH23mpNsb2Hqwu7dSWvWArhOQB9nV/IUBbAnisHG8Y6Pozu/Y629L1vrBiLH33g7BHBkK4gmzDN1jaX6c/+hRrJicSLGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xy26SRRI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xy26SRRI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEE0C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738748753;
	bh=8nu3rHNA8u+GP1tBwJ4n8Q3eY22mA8Bv8LXPU24csD4=;
	h=To:Subject:From:Date:From;
	b=Xy26SRRILiLtO3p3D373UpIGVZVrOEHfVjyH5rdJpGqstsYSXwzQoKCpT92KfWLyo
	 weJc/pbCsSCmSElqnKhrPg9tpJOzNYdNjaajjMWDWkwoILFnYPCUCP5qxXRzEjQuRg
	 0U/D+BrFZeHlJ2s1krxKGtcDVE3B8FRCrlC/pqyJCgMYyuhP8QFCiK5rfZprX5GVg/
	 IyHVEHKTw7GL8sqsaZVVrmVufaPXfoAokQpTwCRFyQ8931yaKAFUXU9jpYWsCxBcFV
	 NhPq0B7yyFlIxLlXXxv9OLw9PqzrTCA6VPCSX005jp9Qlv3IPVKND0uRiD1PXBOepd
	 9smY0XIqGgRQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94603C02194
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173874875359.10177.8427288857593668929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b7c35de7616aa8b988da0c25b6266a52595bb9a3f0a52a20495555ee4610248
Date: Wed, 05 Feb 2025 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738748753
