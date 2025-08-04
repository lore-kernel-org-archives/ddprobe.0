Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C31A2E3700
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754284794; cv=none; b=ImNNNjiTj5nxrfQXZqbnarSG65oq7ILdqRRyBWrDCsANGXhe0bICIVNz0PHAFrU92iExbul2y5nZwUA5A+v4f9cZr1NqK5QtIaPZ2LBWcDX1Qj9qmiWEwT3KvkCIMyrLHGPEFGDm+Q8n8iU5YxXH9YTccNjb72lVjTpeyVzxD4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754284794; c=relaxed/simple;
	bh=z7sPurTraL+gzyP9/1sZigVkt4oheATFQgf0dfOMOlE=;
	h=To:Subject:From:Message-Id:Date; b=tBDJPeS9QmvZ/UaCT3oQ0kM+MGMOzFRRQwz20dxSu/uEztLuhN9O+XsesoxL6oqAG+T9tKbv6i7XN0SrFGqLTM2/b8WpxuTniKk3nejEIxOoOzogseQ0RRFhMGLA24eD472Nd+rGL8vHiJIgYdyFeQAX8JKQvu3xJ5U2AeHKMP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H7Kr7lSR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H7Kr7lSR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9186C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754284793;
	bh=z7sPurTraL+gzyP9/1sZigVkt4oheATFQgf0dfOMOlE=;
	h=To:Subject:From:Date:From;
	b=H7Kr7lSRJiRqTA2kbo/tl1RaO/jlN9cTJUoxTlrgnk9WZLPi45CLjSAJzB+5Ig/ou
	 RWp/wkmPKE7t8EjaVTOd5StElWCHZebP7CG+qJDQwv+AySS3LfZU2UapI27S1CBRa5
	 TCrnhHEBOnwM7nIZDBnvQxKeaLnrRPr5Idb41oKJMEyoEVubCvODmbVczz/mGfd72C
	 Kxf8jic24C9toYOWFz3x6JLXdghPgCzGm5E/xlIEUZlQrKaMJ58YnfCbNe3qLPaP2g
	 f0WNg0eH6rU3PiO3rfxBLEAYveuxQSaAxwj2hEVDgWMPBWnZjxbkuAnW0TcF8I0Fcp
	 akcdjvO+OGttQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949D3C87FD3
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175428479359.3559.12231948068074133142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbf6f9c5f13bdd00ae07ba4ef67991ed38967b81952aadb359da0623fd1ea96d
Date: Mon, 04 Aug 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754284793
