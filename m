Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4E041A88
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 06:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719900923; cv=none; b=JbI1S4CdbOul0uUBjUkVtdWLaGFw5CI+QPNtCNvISxa0/5lH4neirCbjHDhs6mbMw9t0539Cl8ic8OuU4uGk+96xoah6jGPt9jfCJHuaPO0SMUOG4IQQ+WshCjMgXIrmz8x1Q20j9nUat5CgUaI523jZs+CWtL8WndR8NRaF6yY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719900923; c=relaxed/simple;
	bh=1UDfmv8TQ6kApS75wxWM3VGQ0GAzBNojFOu0z7mp5QE=;
	h=To:Subject:From:Message-Id:Date; b=iKcEuOIfO3hF8qM9d/ipq9KIBLZZWqNloIowYb9LwfqQ21kUVMX25W4h6Jdpy180r/upd328dRKMfmdYWe/xNlj2wYlX0C3DGDmxVyVBKzZ6fzVjIumhTuy1MNdUBtCgZ+2qqDojZgpL0Me3mCpBsYErGKC4yJWFr6SDDCdzJsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HeaEWRQo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HeaEWRQo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D717FC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 06:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719900922;
	bh=1UDfmv8TQ6kApS75wxWM3VGQ0GAzBNojFOu0z7mp5QE=;
	h=To:Subject:From:Date:From;
	b=HeaEWRQoqZqNYu4fAPwNE9L4HPq9fpOhDa2Ne5s8NlWJrLC1BPeCBugoiOWV9IiF+
	 YkSwSVD+fs1MD0QG7Q3B/jXsIkPkIvcRiQHKLePYpGB1Qw/cwOC54OSF1yZk9fCxaG
	 Z4hc3SoHT4AmMwYPhiTkqvQ+tBObLO6ql7urOla8FwRzBhpV4o7JbWAhiUXcT21gB9
	 zBWBzhta2dQ09nHAXy5fhTeNh51neQ8WmsG50IyjFmg1Cf+fglC6ZiNGMoUE30XLho
	 TJ/UEM92oYEGQy4tdnoIURh6YG6Q25qISgECuRyZtlFzUQeG+gLQxsJke61yukmNsN
	 shfyPBbq6H8zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7D40C3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 06:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171990092280.677.16671916919152793982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f185c7c6093fb0abfd15634531bec47c850b7e7dcbe31c4dfde2c9427b3c6f72
Date: Tue, 02 Jul 2024 06:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719900922
