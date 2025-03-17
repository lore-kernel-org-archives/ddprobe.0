Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D110318C00B
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742227793; cv=none; b=lMYh66httbmEUiwwhIHtlEEnMkmNZEqBKUHRpA8huN1Me0Ach9/IU8TbP1/1uf//w7byxIJ183G6u8bo+0PiuboKxEPPwJE7ZaAIXGbfJBwJoNFB/P1eXttk1wR2jSCoVcCZVehs4fKnRYyajn4+oPfjmLLmiyw9l8qQlpZ5/rE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742227793; c=relaxed/simple;
	bh=8lZmY10lyNvKzTS6JhqCyDhzitTNyLbCLwnqHlB/O/s=;
	h=To:Subject:From:Message-Id:Date; b=kVdMkiZrDKzDm3KqKAJ5RqaorgxyvoraDWAjzMFwBvR0kqF9TpXnGxkfQigyyx8e/FhgF7f+zUj44Go0rdrzG+txspCF848uzGS1X0wvs73pvF/OncVUcSEGh8p710zQju6BdXO2CLW0z/5z/jxVFkyZVXeNvPA2x83ZaNmJVzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YzdNQGru; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YzdNQGru"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78A8C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742227793;
	bh=8lZmY10lyNvKzTS6JhqCyDhzitTNyLbCLwnqHlB/O/s=;
	h=To:Subject:From:Date:From;
	b=YzdNQGruKmuwU04wBIdI+5GY3KQLeH3e3v5F3XCIOxZ7mlxOfHzBEJfIwijLv3RUk
	 SfAYBaU+nTiKDP0H13LuN7hUSLcfTTzmzttsSzU1E3lz4V6SLqmYzhu/RFRVL12bJa
	 S/r/65VhiuvhZF8thkNsfwN1ihHMjBmrs6FBiSqGcofa/hgbXac05vuAvNSeOzJDk9
	 hoq9FrLtJb60xkBPcvAfgQ89lTsqZ7plMguE+zfIi/Ke0jvXlnoaJlDmKXLpkzhI2p
	 Yk/nKyZGMummXngrpweEmeLIagtKVnKiIb1P0HEcinHHb8DV85zt+4gQOZTS+soOun
	 hWkBEy1sAQt0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9477BC282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174222779359.19651.14950561204243597119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 635c0d3dc18d2f7777105700c650b0537748acbd6c125e2982d952320809fa0c
Date: Mon, 17 Mar 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742227793
