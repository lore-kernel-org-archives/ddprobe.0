Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5A9A27A91F
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761881393; cv=none; b=cSdyy8/hZ8+Uw5Yz62FtKStGDnUfBm6qqxSmrg6U1ZNv5eysKcMPcX4crFwVtcK50595vTA8AagHRuK2G6uAWK5hKjyqN5QkFfTQ3KSU01jA8z+jwYXldSxpHEk+YiLlBVSyd1sSzg0/Szy5T73WUZbcdyppAYae3ERa8kwa/VI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761881393; c=relaxed/simple;
	bh=kxRK4z/eUzjjQbR4Kx/ZE4kD8iTShfibI44YsDSs5vE=;
	h=To:Subject:From:Message-Id:Date; b=RPp5zHFXfUXsfKGk0SMzY0b2ksMftN3rAOC8nRAPZMU5MdL0hJUyiHNJTWS8JOKBvlXDP40Glt53MFQJKc2GoBz6hcUFl3sn43TkJmuvrQUTlax4uFm7E1ROfP5wUfQaFyVrMMYBbIEhioh8SkZi1VSh0KAuetpe4CCxPE/kxik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fOqqJQ0l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fOqqJQ0l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCD4C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761881393;
	bh=kxRK4z/eUzjjQbR4Kx/ZE4kD8iTShfibI44YsDSs5vE=;
	h=To:Subject:From:Date:From;
	b=fOqqJQ0lbPfnD/VXuKK2l1d7h1IKVoYXdSCSrcp01QTXsqpx4NbO3rfTQwLc3cFXp
	 7sC67WYfIrddpdpBO4hcPl+Rjb4DFOMHFDPIAJcW/1IqMagoKCC9kBJOLpb+IJ+THM
	 1adYxQUEYDnLGz40Fc0tYk1bp8KNMGADnp7WPXxkik2u8rD7PLyN3hjX8J48FkMvgC
	 neJNx4u60LvvnZnmGb2oHQhk7RXyoZlsLD7T8Go7jApsQ7TimJtZf9JQpSbI8848Jo
	 ePe2dGeZm+q2uNeWjQUcbwLSyXYYcdv/mDCJSs+AylIk1+tSRLewMMybs+yFSe5pVS
	 haxOkgyz6qJmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9247BCCF9F0
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176188139358.11913.17600318617853389505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3619fcf02d32538b9ca8b4e914c35096ba8b7319299344753623afdf1812d715
Date: Fri, 31 Oct 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761881393
