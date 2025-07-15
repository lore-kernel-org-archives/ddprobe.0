Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301C32C15B4
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752548395; cv=none; b=px7c1rMIY80I0HNnF2+JWr73cBQD2uwrNuoFs3wCvquL7sznwDGy9H2WpVbB9H0DPQOepSM0DUPGZwTvsSIqZDS86Jcoj08I3XHvRDMt3ujer04jTsisNX/6613EXxhNsF9FtEk1r/vZgekkrczhAHO6w3GFwRN+33lwQYW0eCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752548395; c=relaxed/simple;
	bh=DYwLI5bndkko/yihdhVzPu0oZ40dJ0+o+5ih5Gh3Vmw=;
	h=To:Subject:From:Message-Id:Date; b=mBMLwQbhNFBFG+mT4Povoud+MpTidGYJEoErXeArCpePBNCZBfiEuk1YSEwmrQ+uI0WaT9O3yp9Pws+Rt0VC6DAWDRx4n0hoZnFv9ue1fmWelz3jPu1C/HIztmwE9vHMozDoxz9/OR5P2M2Yx95o6e1/rejvCj0k/qeNDTz2+HY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HjLvwhlM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HjLvwhlM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78ECC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752548393;
	bh=DYwLI5bndkko/yihdhVzPu0oZ40dJ0+o+5ih5Gh3Vmw=;
	h=To:Subject:From:Date:From;
	b=HjLvwhlMq/fPYp/Q78GrHzBSRJ2TkjXO22XkUZ25kuLgAwCesUCuxhPCDfjglWO9A
	 bDlV2IGg74VU/lNkE19Fh42Pco0hi9mwNs56Rbn6OjT/20Mr6HLilgZcGp6tMEpI5B
	 v2lTFaUvzLTqu564tFUewv1orhh8VbYBqN7N4fb8oQMROhLkDkLy1Sr3cA5gwJRyH/
	 QAHbPpYrZWl16yp5/vIQrqwn1jib4ABKzgGe++fpTZ63RKIE7OCXLc4rXrK+VcB9gi
	 WNEktX2wZ6IEmtmioaWnzF+xZ0ijdmnvW+cg3kNvVRKd/njujeaXsfSiXSN4hJSZeG
	 PU3KMx8Qwoi6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922C7C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175254839357.5963.10964215823181306776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d88590e95d0d278f3be5ba381f89d0ddf73f989c44fcadb43fcf03726a5df78
Date: Tue, 15 Jul 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752548393
