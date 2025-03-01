Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9C05258
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 20:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740860934; cv=none; b=SSlEB5j+1Q8bqzd1ZkxjQnLMZr2rs3H7v8dZlEmeI+IFKMxOAj8PUZuIy2Y1HR4ozzwfDh0mqq1ZhJeGr2vsb45CIjTj/TSkGMr7497C99vt/x3ZBM1Rr71fG5sr2dIUpXQ2TovbXYn34DsLzi6NdEHTO6iWrfKxzqF0a9wP+/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740860934; c=relaxed/simple;
	bh=vHA5pbLnJbLUcik3Z9Ek7lz5X/7TwIhfazhglBjGaik=;
	h=To:Subject:From:Message-Id:Date; b=M8NLDfWWztY1S9PILxc8wjVgvrA9vyRWfrbJ62YjFyx5tLjdkpDdwEu5J9KX+TqfWbuAtomDgYDEaB2yj96SI68P+AKbe1qEfuUU30DJLcHm4SfQiU3aj0V5P1rsuPSP56dxu0opCCLe/TigJxyz4I1RuUtO8klX9NOHtXBvVtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6Hij4Qz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6Hij4Qz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FA6C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 20:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740860933;
	bh=vHA5pbLnJbLUcik3Z9Ek7lz5X/7TwIhfazhglBjGaik=;
	h=To:Subject:From:Date:From;
	b=A6Hij4QzIT+dAOolctdQpmhaEHcMSEP7jgWasC6kxrwXAkYKGbjhDhS73K5auswVJ
	 7TzkkPC7XNbV4oIj0OmjQA8rO9L3F5VW42HiLZLVoDMpCdG3S7aWMu0RBBnsJoJ+r3
	 fCb/GIZz1tIEgHWW4FGOU+lZ5TlYxL8jaBuJEjT5tlhicT4eFAnRvPqSVL1AhPE/DM
	 d0nnNArMdLCwLpJ2dWruogsAeLrcoP1XzAsX/Ast8y0t9h4axjq5Z93eR/XRD7zThy
	 RfSPB/XiY7EW/SrSyPrwJ8JYIaIkZlM1KZwActCSe7VPr43QrNGvSTW/1hGPwCzzfR
	 +0mXK9Q8FPnYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9167AC021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 20:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174086093357.25629.6832956248601318242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0d620b1d06ecc0dc93298f6a8eb9b57f19f6baa28ae65af4a05add5fabe6f4f
Date: Sat, 01 Mar 2025 20:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740860933
