Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1CE23DEB6
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768443234; cv=none; b=sQT1I34Pm4PuQCo1HGGNW12SUK0Tp6W45BSB3XbKE/zvTIQJrVo2F+vlFCIy27HBt9Dsj2bjZZ9jWn7gAmG86RlYbRJcIGhi2I7xcapD2tThn+BZU4/zQyK8h2zPaNioQflDWskvF4tPPSBA6/c0fB31ruwkQXEeyP5AoWwMS9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768443234; c=relaxed/simple;
	bh=wgepyzGEvjl9ZcycbgyjhCj5Nv3JTcX5K9Uk+fqSqr0=;
	h=To:Subject:From:Message-Id:Date; b=s+kYgbCga6o+ljvGZFYbEdMw5c1ofl6bYTAcbYgjEWuWIW0CC+Se0GHj9Hf1y2BaGkqNOTVAzKzxEmwstzxnxVFrSWXofLXfZv6H8L6/TQZEjE0Ux52sa51CKE0x32KAU6IyO+QiCKlUfjT7A3sAKXwK2g0Ycg/paUArexQCTck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ge98xAGl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ge98xAGl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0723C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768443233;
	bh=wgepyzGEvjl9ZcycbgyjhCj5Nv3JTcX5K9Uk+fqSqr0=;
	h=To:Subject:From:Date:From;
	b=ge98xAGl29ZyJftzu0pFNsXMJywRwmH2BksJ4IK0FvY7F+Et2OYgWZu3wvT2joNEw
	 H8XtHJTXg4i50lH8ysYrNM/b+oVEoV5HxO/aDzOYI3ORtjGWpRJDi/0gzwrDCe0yni
	 1e0htAYmj4OHK/YO+SsaHIMwrUBO0K8h47fpAx3IhcaVuoQllq1c3F/Z8km4SbUOVr
	 Z9Hoy7VA5xhAnf0XbhtYvOe7BGYy/6GqfyROQ0j7QZw8ASLX9J4uuoud6dj0DTgLhx
	 kwDHu0NQZ0OduR2G/1yXllxY38Zjm2Iq6JBrivX4uSDDWiFNgcKdConK2T3Ko/cmng
	 mu8bplV8gCBYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBFED3CCA3
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176844323358.16017.7385419914389940211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 416f038a5096d9d9e8e8a109c28589fdcb944bf088150310ca340d545a5739d5
Date: Thu, 15 Jan 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768443233
