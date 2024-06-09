Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AEBE4C79
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 00:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717894043; cv=none; b=NjfqX6boA5tgwvM//bHExmTabo9sZgr7OSnwoxJ3U6g1dC/8cJ9CkZ/egtjk1usfaa3Nf+6cBbbowBHhccdpNQnMsYbh3+OoSvaJAQWSqjr7KTyH1AoEKnAra3d83d7PUj0RzED/IXU/jNoks3C0tDgdm9GNXLX2tNEt6CbLWIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717894043; c=relaxed/simple;
	bh=Daae4GgSYYwZa9VoidiU3cwJ/liMT/ngQQqDD/7ukfU=;
	h=To:Subject:From:Message-Id:Date; b=jcAxpVwuhGv2XJHwvcoEtB/O4fqtYo2PkrRp8ZziJSq3M5DAjQ+KlWE7VMl76D3gOIwhf9ilgmSnkjTItyuzrSVt/M5qtsosmGmVYtiYvxn9d1UpdRPNuGNvpZZ4rqhAnECCpMKWQVIC/UpWJOf1ouZ1DkmxzR/LPoRF44r3KTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=usmRZPEx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="usmRZPEx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3FABC32786
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 00:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717894042;
	bh=Daae4GgSYYwZa9VoidiU3cwJ/liMT/ngQQqDD/7ukfU=;
	h=To:Subject:From:Date:From;
	b=usmRZPExvLLhtrLF+CauvBfrxfxIx2x6HyLhxN9oO3q9ZeKCZPidXusPoVchhMxDP
	 tf9b05P+No7p/J5F65qDTXLBAtcVa0u/lPeY6zRrs3sMOMswZVlRzibbFkFDy4Kwv6
	 5+Wqkja1QDRDVOd2p7XFmPEgmoKwjEd0LTCh/LqQuuYWOu5TwstO3fitvUYCX7eAXk
	 zJcHY8RtHP56E+tbG4Am/qEu3LPJxGRGqxKwLjK4VM1Frzh6YKHLF+EMNkiJuOWOAV
	 IykdPOY/LUvtO2nSqjrPo44UZFtnXIiC7J/TPzzxqlLmZrrSqUm9acsKu1smjTbPEk
	 heSfi1KaCYrZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDD9BC25B76
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 00:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171789404279.6871.8444350774597855408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db67990f84037c356d591cee8fbbaaf8708b294410ce672f33c0e9a7f9a1e07c
Date: Sun, 09 Jun 2024 00:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717894042
