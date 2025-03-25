Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D023CA4E
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742867395; cv=none; b=ePmXvaLRK6EpBm9h1scwG1ACrF9UqELsdKICxIV87Yl+tPTNGEAJFnsjzqnytapMaF2Aix+8CMb2tSJG6HEYy8SP+eyK+HeIXbfx8Rb+6meFSYlcWyXBI28Umm4rMH7BoU0cJHIgwj9s8rrW+5NnG5hgp51NLGPLDV8Kj1rqmGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742867395; c=relaxed/simple;
	bh=shzJYYgkqd+4ZKwSCIpnDW9hUOZGWJbdq52mMSPQIbA=;
	h=To:Subject:From:Message-Id:Date; b=hgRnpEj6GcbvQLZR13oFzVivxmSU0tn8cHBVtj5XkhJ4Ywi4Ruf70SGRY5uWgzK57PokMO1uGkvLm/NoaFTFHCL2uEdApq/S6j+KPo709l58h7W7+3REOHBba+LMIBsigKKGWe+tXnwGu+TnLFmeIj6rfDsxUgeTzJTr8Nap4CY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i9xGqM8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i9xGqM8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFE7C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742867393;
	bh=shzJYYgkqd+4ZKwSCIpnDW9hUOZGWJbdq52mMSPQIbA=;
	h=To:Subject:From:Date:From;
	b=i9xGqM8IIR8Q71Sl+2Iqsbv42PrctvOCefqaTQ3S1ZHfTLBSVgR7bEJ6HHqzxe4Ow
	 tBN37QaQdzK/HWNPgydwpkeG5kPA83HpQOSYsiWP1LCDV3D84ik/lcryDVHuiaq6u/
	 v5iKLzmlchEwYWkXTznkOhOzXSGNeVKPLPn8uTSZ3suHnzWG8CuvKr7BzhDT8JN3Mj
	 3jgtnNzvO8cFuEGM1H5FsertrTuOOJn+bhXN+CZ8LlLhR/d3LPMNPdx87QVtG1VGSk
	 Jvdhh3hBEqHp+lIUyDH+W/2FidVcTM8rQPnSqyj08q0SqEIX9w3GNF/SnmjItZ4QYH
	 VLf6A9zg8f8cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CF5C36002
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174286739360.32600.814991624597338215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e575ab8e6e888f21e88043d7404b797b5d2a4988cb1996cf25c8aef4e1022d3a
Date: Tue, 25 Mar 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742867393
