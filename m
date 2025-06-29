Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6F433985
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751228394; cv=none; b=nmTMd8BdDYnN88w7CgeVUJrOzfgOVnS4TiAgIxzT19xgm4VzuCNfsgPR6z3Oqo3QlN5zxhSsexsuCgMgcsipHG0m/sPArtLLuSUqUhck1Pbpv8uMY4Kq0xiy44Mz0hdbP0yS9bFe7sp41u2yqIDz4QhoRDYX/URGWm1mCaX4Ho4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751228394; c=relaxed/simple;
	bh=k4O5KJoASJS6cig7LPhNG19Q5AYX6n4e2HvEFh3UjzI=;
	h=To:Subject:From:Message-Id:Date; b=XtCek0xeoOxQNtwkL4LSU5RHZYoC6x+DSUoLS3z2QrpbgmVH7ZDRY7Os4EHnTY3l8gR5X6YU1tRK9iNmdr1cg6qi2xcPgzb7fNcB8N3KhOISil5P+Q2ocY74v4Kmzc+crlJfgLEuAgClLY19+zGCOKWd2kv7ecJYmYCZTFA77Vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f9jcCdGl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f9jcCdGl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80A0C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751228393;
	bh=k4O5KJoASJS6cig7LPhNG19Q5AYX6n4e2HvEFh3UjzI=;
	h=To:Subject:From:Date:From;
	b=f9jcCdGlvxdF4zwz7OnRdW8HmnH9KCAm0O0J1pxhYW/jDG5FF5kEVaopfVPSFSwSe
	 /h7eLMW4HdQ8wfiwqCcRJ9dgt+Mjj1g34F6+kcUYmconalD67r2LXhf8yn3sHMRvT9
	 cgA0JhfYAW82cWzelydnj6SUkEqKYNdhD3ShBKhmMK49hUbABTOrC4Uc145l/PMyy9
	 ulby9S4FbfCJzaevrMqwusIURPpNhBjduqb0rQYa+2/WiCBQ8tfkeHfiktTA6cfmV7
	 kTdnDtz5cnBMTk8bJznBY7V6QmHOKVx5olLSFmR3Pug+Y42wFFt3xC9+kvMirMaXjt
	 ilxkLBXeEuiww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923F0C7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175122839358.10486.6414769018666916131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afc0c159ed93fde0fa42bf3fa780da3d59a2f5e6e3844388e740b48453b71512
Date: Sun, 29 Jun 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751228393
