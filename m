Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD6D2BF015
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753959594; cv=none; b=CBVfpHg/KJdh1t43DGO1RQ54eX7gCkBLfYmW3Ns/cSoKNXN5DY6cd34TMDbZsTTQwtgUn2rrSgI5JLrq4RmKTw/HEl3vPk7WjknPDQgm375wuXcZKWbgkhGD6WyUtDgSoJGKIbi9ttQ0O1YEuZlaBJqTdkhFKolJhuw4w33gUAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753959594; c=relaxed/simple;
	bh=ZAvwotR5JLtIlemUcOzsb4LgxsnFZxqqfTRAjGHsyOg=;
	h=To:Subject:From:Message-Id:Date; b=uh5aYq6DDn8A3n8/h2ZvDGN2gHhdiU0c2C7o22SRhuI/FWRR1jpfmNPpsJznn9hybLiVll4HDqvlQsSrEyboXp7rqK9ELf9rH6hidyTRpPfXx0B4cUyLqxeIIoYeia7CCoGNrg15wG2UI5ytEsJ9VNmbbQyfyarV8R2lBpkbFRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjCtEwNV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjCtEwNV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F7CC4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753959593;
	bh=ZAvwotR5JLtIlemUcOzsb4LgxsnFZxqqfTRAjGHsyOg=;
	h=To:Subject:From:Date:From;
	b=qjCtEwNV6kNgkHiWA0nCjyCwpb3qIVuf2ZER3Bsfg30gXTo0cwmKWhbyGOiyyPogM
	 /Me4sMuRBcKDr46b9HUlZ/jp92HQTbLBLRm1r9Rp+hYbbT4NRUCFLuHD/C5fsrbXAb
	 fvZ4ke1WmU1smi4XKZOgyw5oNcQt2oxv8rx9V/OKgeibuGONxQFSvr+9SPSssUZg+z
	 zfu6UwT2KdxolPKrvkqUy9lKnzeaQaeLUtwlSuRxam93XCr4zI2ySuTunkEemuadeZ
	 tDVNPjnm9etQ6GLc2q6I7oJMNIPoIxRcgDc4ZPM8qOIr5EX0udPS0+clL4z03wIZMW
	 E/IWj29gFrRQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9290AC87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175395959359.30424.10647158071997177727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b83c951f2a7d57e30c4a5fd5101356dc37de8a0686eaa8a22cb1167c8e0c131
Date: Thu, 31 Jul 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753959593
