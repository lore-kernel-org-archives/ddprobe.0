Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E0C332EC9
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771259094; cv=none; b=s2ly2FWKkRI7LjpBlmj6xHXsdkmte0OK7IcQOWJuW9tqW/yy0uwJcmkXbmQq/ZZMw57kwEAeqbZ966AvGsi3cVUMftqh7ixKNDfdAxiC1qKGOAj5cd5pXom8+MdZQCnzuoam6AGukJtFDhSQNfqUVtLsTWfEcJhD+KA8y5ZUIMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771259094; c=relaxed/simple;
	bh=mlbaM9cHjf05cNcpFbsFAz3wS4iDdFUuPhNfEphWDII=;
	h=To:Subject:From:Message-Id:Date; b=RgSEUOpNaRIS1Fu3NRmChi39JoCEdaKPCcNz6b6BKJD8ykbCmdDYJ1dkVy2DWGA5UhGw7FkGTFHcKOut0CEH4LNH55mvOewzjE8KfYYZbKkG/4rmtaXfsgYZBiaejeYaixhccIUAbCmt48ACWYVGZakn0ILV1QlqLWMK8SRPO0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M88cytM7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M88cytM7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A30C19423
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771259093;
	bh=mlbaM9cHjf05cNcpFbsFAz3wS4iDdFUuPhNfEphWDII=;
	h=To:Subject:From:Date:From;
	b=M88cytM7RQe3WupKWxV+37L2Dxh118gBFz7woGgKrPB/ucKtT3kx0/VsOPZVoluxR
	 ngZpVeVglYsQ8cKnJiP2YZyIjlmZdoLM/txLNNKLwj+fH/ScKErVa/RaX6fjL9BEB9
	 ALL9GA3vlhHoWoMxbvh19wHv75+ISih6PFI9kP21wmybKSWsEB2HQY1CW85RwLs5mk
	 vMUoHsZmQGC2Ap8CjZaRfR+HMOSjN+hAmRUmzPvYSS2Egj4jnE5GvXitWZfiN8+qSa
	 G9vJ/K6BvaN1ajnpAEYWEEfIWYUN3acr642q4CgAcTPnaPePyAQANbA+SNvDt9xXiU
	 miNMGgBLv4V2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95293E81A40
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177125909360.23382.3048620256630651723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f0d4632bcc48d7b380f6f4ffef78cf5dcd65fc43e22b32cb6e8152a14a7afb7
Date: Mon, 16 Feb 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771259093
