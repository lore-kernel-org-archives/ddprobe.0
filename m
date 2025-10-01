Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF322877F0
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759345194; cv=none; b=pGfW3e7D5jtLDDKrm8w/tNDwWXLko0Za6tz3MIxeHbpzdwuBKIYH8zIn4ngmdxQGhr4a2kz2wABlKAAG02yVpk+4vWwzUc7cnp4n6jIDwwLfFjxtP4TwXD7efSx8k6VRkOOwAB/7MpEEbBFadW9h3nMT4/0ldLLiHDxbTmQ1mK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759345194; c=relaxed/simple;
	bh=anrf+2ZQ9YFXx3kYmbz163ZZmfhRXHNeQr3vemviTaY=;
	h=To:Subject:From:Message-Id:Date; b=N2lJxCKEhh4i+YP82rkpJ+SRj4FkajnSalzR64RyINEnK7oPqd0WY1wna5rCA2yHZP7k3LHJwEwgdB3pMTbcCQhGXlHTBSndh4OjDeXA7FsPvLSTbhtBmk0cHIaXddOY+N41eH+9j50IjY5IFXdO72PZm0u/9IXwN1U4T+uBNXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XCher8pZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XCher8pZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A46C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759345193;
	bh=anrf+2ZQ9YFXx3kYmbz163ZZmfhRXHNeQr3vemviTaY=;
	h=To:Subject:From:Date:From;
	b=XCher8pZsFnPJNWHC8VXuNcejzPKqXITsAIMr5UARW6ee/CdIqHmy0N1Tb65sQQnU
	 kRhct9MG+fmNM/NxS0m5mx9eH1SpSCC7KL8iZ5eVXfuE4wXI9yNyhpmD6k1Q6Ky8pv
	 rsm6UPuzdNmf/v3yNDKD3xyF78dD5zKVAlr553Uj/W+HQYNGQyp2ckCY2e91Bybi00
	 Vmy4MnoZBrrLRvGIXI4ktikjD/9R1P2/Fcx/FHqLiLJ699NVuW6aphnKxHj4S4fWo7
	 C3vHvM7qumYUzMpaQ+7+Wq8LvapT8lFBWWdiH9j64D51Ti4iLuE2lvILQK8LOlm8mw
	 dQy7WQ50fOziA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F260CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175934519357.13429.14251227900988931575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8975b374a2e3f5e9f06471ab97e5cdcec7045f14c87c2b60e4f559fb7254b37b
Date: Wed, 01 Oct 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759345193
