Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B6018FDC8
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 23:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731713755; cv=none; b=IPemc2D8P8UC7W5sXLwgbj6YfokkCIzx0I54sBYMOPDoC6ENND8pkMLGXwKEmPi/VMOgKj/DN4BbZVHiqXk8fuTBZnjJyOyRDj+7Tw+7MiL6DlZuWIQEeazqg8xlbCkmHgZ60nwW6kZlCamJ0RJSIMpQUEsJBOP95Af3wxUvNl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731713755; c=relaxed/simple;
	bh=o8A48cfxuNcuPQuzu3z6fNQTsytVMYkoknPrwi6XA4o=;
	h=To:Subject:From:Message-Id:Date; b=DSTi2A3dXNuLHhpdwj3d0BAKPTZ7EdFBE7XS10kxskRgQQ2DREnpaaJG8HlPbYbStyDIhlmzuO6ECF/TremZekq1KcjxsviFa45ylCROUUaHzCcUOTszRHAERVZrJs4qTbMFr02yEVqVChYSOT/7VCBVeBsZxmQXK9Qs9EXyMQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EFcehhFl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EFcehhFl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA019C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731713754;
	bh=o8A48cfxuNcuPQuzu3z6fNQTsytVMYkoknPrwi6XA4o=;
	h=To:Subject:From:Date:From;
	b=EFcehhFl5aZ07mO4ilrOQHOkOZiGVzw3L4/oWc2K5lRiYzMjb7NHiDVOVkClygpEO
	 RdoeAEBZCgryzHXFAApTyievfj+s4kqCJplsVGQVQw6kveMJxhVrjEArTzuUU7Ty8x
	 rpRSDgoppcjgr36Aj2RAApcgWFKjdvB9n0E7ZzdvEG/NcparkaG4ufQVTJqy6M0iXl
	 OvYO6VYqYKUnPbyafgL7bwYAE6XHr6v8vqFqt812UexA86adRKHkdIOnX7LkGzdBUe
	 HMV+gBAlbTuYodl/2UyDZX27q1q7ggE2S5S0MSVtqD6H53CkBHIyXRZg2FQf5BmzIj
	 XQo1/3KgV58OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980E7D68BDC
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173171375358.5756.2064170117822890144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ec2d403e093a3e7d77b4364ff3dfe126db3d4d2211049c5ced36a1b1f7e6ed1
Date: Fri, 15 Nov 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731713753
