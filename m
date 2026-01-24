Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 091F57081E
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769286834; cv=none; b=uXnA/oMnhpCaTz1+gm8GdlurSztrlwDHn3pdwPTUj2imxo5fTJLKViU0etWRMohQ4B2bm4StyWhZP/yKr1xDb+bYWTJrJAv2WKEwHOtZ+FFrzCWHV8C4kA+ytIbKcr74Y8phhPc42MsXzbrLB9InrHbUiqvmfBENRPtFGOjOryM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769286834; c=relaxed/simple;
	bh=kxKRZEfbOWS9jFMrEyotL1eVQbKsmXRDBlstdKauoeg=;
	h=To:Subject:From:Message-Id:Date; b=saCCGWqabepn4XCmbnqdfHcbtdzwgtBVcvjtCduCkdVMIRVZTEr3ov1TpEtZOHFi1KxPOdCu3CzuBiP4ujIYoZ9Hp/pzSHQ9XQl1ZV3q78RVPuVNooNEPsurIxl97NU1lju1LdXN9xGZGJMexjZJPGYK8cGz4AHnE4dZeGR5odo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zeq7VYEs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zeq7VYEs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A358BC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769286833;
	bh=kxKRZEfbOWS9jFMrEyotL1eVQbKsmXRDBlstdKauoeg=;
	h=To:Subject:From:Date:From;
	b=Zeq7VYEsNLsnWd57Ptzk9CjXGlug0SNO5JxZu0YLfJUBKA314+AATHEjl1MyyjLHR
	 9lJ0RN4d6PvhP62CiOMHWG/OQ42hywoN2+U83FuCQ61JXDk5uHk6ojsW4hHhc8KH/p
	 KrdCc0Wiu2XUh4YYCmQoCyI7JD3KdCl2oO+SpvllTIY9RRhaifJfQDhQbdCCUV/JOP
	 W13AlwAzl9Q6ZAc+/OS68nlM4x8/LjK0R56qo4cfSkm8IlLR1e8DOcWqUy1psgBu8I
	 1Jy5s9SPxxXcTDdaJjWq+ECQIbluLL7QnTsUIzJ0KVBTAyJXH/ENYXxcxvSQguPKWF
	 EXnkEu873KkaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9086ED715F8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176928683358.2575.6251034408525825709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 690ab63dafb3975bd5f8874d542b65a7ed6db95f09dcd145ef2ee2f653687f64
Date: Sat, 24 Jan 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769286833
