Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6E2A937
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731858354; cv=none; b=ajMtxQg0a341rjTF+GFDXQqCxzKWYHRea1C8TZKnAspzqYQ/Hy6QiyIV7VUYvx3e7cq6GWfsdPyesA3k1TFZUvXvhKKXgn8riswc/LCe1GwgNZ+j/ghDA9xgX1N9PbVmW0JHW6ZJXi1nivHUjbEOIZ0niL8vbSMzZHydQmxmsIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731858354; c=relaxed/simple;
	bh=Q/A6O5KrNqCtHCsMXT4MKr+nbrkv3091kK2wZLPMUP8=;
	h=To:Subject:From:Message-Id:Date; b=kxKOGTeFF2IP6GUGuoHZqW9V6fQLflCGjYqbQhGOTAPB2UuFZXeptWAg3d3wG4DHauuQXavI875BtT5GOMA1sYPRZwzQVpJlmWFmMQz5TdFVWrDu+AuEGurZ47ZkcUaNY4yg6pqdvdG4kBpsF2EtScUScOU/WhRYQDDM4ltNSyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KxKcLOIc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KxKcLOIc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1706C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731858353;
	bh=Q/A6O5KrNqCtHCsMXT4MKr+nbrkv3091kK2wZLPMUP8=;
	h=To:Subject:From:Date:From;
	b=KxKcLOIcFDT8teeqYY5gWUxljiGYbZbinb+D0nReQyEZphDxDSx74t7US7v5jmt3P
	 CkzFij6590NjOyzcu2akkcx3pVvBvOGjHijhdW9M+5Ge+B6b3JrSoSAGCsFhxm6S40
	 N1E7CSnLrxg5PF2WaK4zMl9w+ONESUyo3FJVDsNvAUJXYXH/RimLYBTxMgXk27k87T
	 50FqOVRM40wUSVPnKE6rgylwqFv2M/mkgbsqQN1lO6g8XOlj9fg7ByfnGNyf1n7AID
	 9f0FbGIpNHB5pzov/m/EF9q8DN0pMdyth48TSL2nAZqUokLACqpkasB1ddLplpNR5l
	 lDsv4zA1Zbc8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A879D68BEF
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173185835360.13225.9778165937035631423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03974264d40e0cb660cde196aea353e06470ab2d88405d83294b0f7f8f06617d
Date: Sun, 17 Nov 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731858353
