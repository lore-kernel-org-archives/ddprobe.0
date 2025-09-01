Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4B4212FB9
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756730394; cv=none; b=SnxexFZovgJz3aYhVl6EzAthZRAXQMsuDXwaqD/gAuqOrnVZXLrtg1gsMCoc1a80OaY1NpCYc42MnISHvRbNxk8JhjnUIRf7tAp6P3wNFdL2d0lKDOSderBC0CAetoRwVUpJaBjlZoruz6FIgHMlLVf55owz7mFoMn703xRZcXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756730394; c=relaxed/simple;
	bh=we4TDKVzYuyiKTKO+Ph9nNX3TnUwyCIJvfOTiPStna4=;
	h=To:Subject:From:Message-Id:Date; b=km8yf2JazTGoDuEIuZXH1FLAC6kakKNA4HWjkgEqnL8BheGBQGiXRVu45ax1jZHkCPjtOHD/cvNRquMZn678+OOFFOLmVjt6EEU+trMXGHu16yvgAfRSChaYfKEy4m68SAemkhk0UBhN8aaj/dCR5LcYNs+9Xi/I7uNBK7lu5dQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bBnJMHU5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bBnJMHU5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C85A3C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756730393;
	bh=we4TDKVzYuyiKTKO+Ph9nNX3TnUwyCIJvfOTiPStna4=;
	h=To:Subject:From:Date:From;
	b=bBnJMHU5kG+II8ezkj2+ej7bXqC4wWwrBa2eDe+SHeU6jhzKpdf7W5ZG1KrXP1SHf
	 guFnNNvTrOtYF2LDWnK+DoJviM/SSy7xw4nn6jyv9lEZtUVdZDGO/2QDPnN0nBsX3b
	 tbaiuh3Mdd+3y7iGiBeT8s2tcmyqDNojP2BIn2Uh24CuDik6gOD5oUHHzUHdDwvgVJ
	 hzOmoYKQhMWFCdsMt3cY6ATusTLbgoz5Ra26yIG4oefyMthqiBl9NaYjPHzMtA+YPl
	 768x9Pd/BCRBNOoAYMuV0H5CkpJdV+zP1tJMBpZD9yBx2qqxGgajesc2Z5Peb9dUWO
	 FvsX35MoC9iLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA538CA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175673039368.19335.12791504311733040595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1d68101f21de423284eff52b4a810d5cc00641ed6b93be35ab314fdf8f3d1f6
Date: Mon, 01 Sep 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756730393
