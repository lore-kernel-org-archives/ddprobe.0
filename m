Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E42FB40DFDB
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 05:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775712334; cv=none; b=TvPi1qJmdwn8Vyl0mVdqE/zIyf13GnR97yuzBwA5tdxLPABJvIZPML+YmTnzVOfM96dyzsIjF+fZVYBF8dg5ArsVfUUaQkrIuugdEwED/wKgmdjSB71TowqQ/BcVvoCSy6AHEDWVuaAYUd/SrlRjRf+JCKVCVSzjMTJm4La5d+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775712334; c=relaxed/simple;
	bh=OxreMIq6fBFK8vPAVEzzW+nIIhkkLFifpjP/0sAAbrc=;
	h=To:Subject:From:Message-Id:Date; b=fDV6aazcopi76VxeJ4h8VOLJcsH/XzNVFFyV/HpIlZJjXi5xtkSe/4TpY8DnDMD3onh8u/oFRYk60dHNLJoFAwNhzEEA9qTTVk99vpPN2rEKdEEP1RY1hCGGFCdsH2UQGfW6jQyaSyF87EoOFmxB4l0bC6ccPM7zZ5bP4wv6rrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJPbCce4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJPbCce4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD925C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 05:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775712333;
	bh=OxreMIq6fBFK8vPAVEzzW+nIIhkkLFifpjP/0sAAbrc=;
	h=To:Subject:From:Date:From;
	b=fJPbCce4geTcHF0MwZwSPU9jZW2wk0dAFLSNIlGVz3OdwRsFQV5+3/7BkAGvDziUK
	 TlmCIA2aWlnISLFTbyLLA79n7mOvhkD2rYDng1mwM0eRN1HnxjEIwEa1JnNjwB+03U
	 DnoXWWRPQ6DRRaih+JoxNli6C0o55ZLN6Jbf2oFxG4dGTuaus5NkLz6GITNR6gSk/X
	 Yj5I7iOSQtPh1BmvdeGHmZfFmzQHtrweUAH54PdhrLiX9akHLny6rL79OnH9PQ58Uf
	 ZCTtCNMwW/uyu6KHnDmRwSuQZjOOn2upmYbKcRxgbobt3Kr5xFcs0RNQCDpPMUcZj7
	 y483il0h5qoFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0D6E98FB0
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 05:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177571233369.2073.16591568181272550952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e9d9e02fdda472daddbcea03bdf0eb45b194dd6a89e9b4026c2091645c8b208
Date: Thu, 09 Apr 2026 05:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775712333
