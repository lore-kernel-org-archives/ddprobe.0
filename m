Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388091A4AAA
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738225554; cv=none; b=ilLxnHowU43vw+z+iXJqHSTnkzSMh+JapRDmPD6xKbVviYJCGKlU71r7RotR5MuGpo2AX1sWqi8g7M32gvbrRdaLogv1GljG4VJO+e57/T43PhJWXyhCcKj2xohsZHwSJIsUXN4x76toCgLZEu+BIcXQbHB2X0mc2+6VqZVa0xI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738225554; c=relaxed/simple;
	bh=NQ91RrdKPfkxFDryuiVxS0dwSEPlWOUBSkAE5Rv6UQQ=;
	h=To:Subject:From:Message-Id:Date; b=qCxYvV86WteDPUPaNFzy2pxtW6NE86yvEa5nJwhmukswrNa/QolchQoN8TFlSR7PLAoJeul4N81rptGa0m551PCgiIItr1Lq8xQYlw/GDGeDT2GqWKkHRnBOUKy00NeUcT6cLQMxQaEU11Pniwy/WPkx23afX1/hg1+fNJBnQ/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XYLT0DMs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XYLT0DMs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2BB4C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738225553;
	bh=NQ91RrdKPfkxFDryuiVxS0dwSEPlWOUBSkAE5Rv6UQQ=;
	h=To:Subject:From:Date:From;
	b=XYLT0DMsr0f9K8MFl/myJ3oErb+geiA23tNUsHQYtUIu13Nhqvun0mJ59MGMCEru/
	 MY+4UA9oCyXfH3kJtHZswqXFhvVW4fhqomIuZUlfevF/R3c1aZhIDhr7V+Wor991zI
	 tkEG7bocktQjddA05rzWkxY+ouF32c9igreDpfFbvMU/2vdTtXPREO+rV8O7k3tzxn
	 arVY6OHK7CSQOOLHH7esgcD/iUoUQGvxeFnT8afU+RmrU4P13Kw8Q/WLLgmxMcX0D+
	 ncZ5F7OTbvqP8TaPfpEVpJBq1CYG91fetH2yVsGUR8H64EmfSAYsjS+iWRbC5vR7x2
	 cGvoN1dW1NqBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E2D7C02190
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173822555360.27439.6905977101749068241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80fb37acba933872cd62bbf653d7b8694ac6a0805797de92d06452084c0083e0
Date: Thu, 30 Jan 2025 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738225553
