Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60889168C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 05:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720418183; cv=none; b=K1VCXV8sC4iN4+2KL3pNcBUV9O8bvJq6NIwxog6gNPEu8tFC2GFx9ITgfv7J6QUF6d1HGJhjr0CoFCx+YXVB2i0dDJvm3cT5conJlMlDPLyQIf1/UmYUHbUbUMJmXhGwAduXh631SkEg1+nBRD3ZjW1wtG1VsD2yKn4hWP8thFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720418183; c=relaxed/simple;
	bh=HlAFQceMv82OO5cdJzM3z1aVqhaLA6jmZjfIt9f4lss=;
	h=To:Subject:From:Message-Id:Date; b=VqvRGYGlFkZxn6sxZ0XT5L87bONc4DfE1EiVRAEuUqqCoqCGbZUo5TmAw6MhiGVqreEDrYdxDjWUljDuItOMz5fyahojpYNr7k4sPvO0j9IR6pU/qZnSgqydUi0/4UjLAcQ5gn6qHg8DuuN1ZgCdTHHB/iiIhYW9Q8j3dgbVcP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LaC5axdb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LaC5axdb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F20F4C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 05:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720418183;
	bh=HlAFQceMv82OO5cdJzM3z1aVqhaLA6jmZjfIt9f4lss=;
	h=To:Subject:From:Date:From;
	b=LaC5axdbWFBausNa6ClzjvljHjp2bNzbi0OQ8650W7M0WExjcLPvsoTf5IKRa/YGj
	 AxULOWbpLHAO/PV0bbem0aUCmjFrpngIAaLbYsNXVAZUPyMfu4NKKqLJz+ayZ2W49s
	 nCOW9Tc0waE4hh/o6WooTfZKOsxBTgHET3RhLhUxMhXR8kRrWHmnFRul9mUf+rS68W
	 mywoy93vwqUe1lWvfBx33LkeU4XcXfW9+dVcD1NvsvAC/o/6hJb75keNlJPkkiif4f
	 lXgIiO9zgJQT6KDtMbOtcqD+ZF3zdwiZCN8znkLgFP6fkLwRrw/d3IFJ+kxKr4ABbx
	 0RQzk2j1xGZ3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D34F8C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 05:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172041818282.20424.15780503933864636096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cc2a03a49cdeb63d9c39c6614c04b01e0f1a5a4bffcbc61a44fcde4ee5e3330
Date: Mon, 08 Jul 2024 05:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720418182
