Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241E23195F0
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765910034; cv=none; b=r4G259pyYncV59/jA5xLaPy4FE5FLrpMfJGrj7GMSIoPaFaaju+FRFcSg3PEhv6h6+rkbXg/I+Zoc1iQEcpYG8IA22RENX4XduehcjKg615jkxvzdEp9fYBXzqtvZ5JSCAfzscsd7rmzoEGrdrM+uFvWHtqtrPWrAG96cxxhbjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765910034; c=relaxed/simple;
	bh=UtY7GoMDZguh8yuaI1+0Gn1qcmZEfwuhvESO1oMzpQY=;
	h=To:Subject:From:Message-Id:Date; b=EQahjnmQqUUMhchPxICCiGx085s/2ttgy0GhlPaOem/I5/sD8y6yV68URhkv20SiE80fqVyHpzk8BinpDExCnJMTrsm9a2fdw4c4xg1DrrCgCoVbyk2tcdf9/6BqRItE055WiolUfr57OGAIUobzrYlXF6i7GTYXdq8FAZB8XpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HE10U53t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HE10U53t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE63BC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765910033;
	bh=UtY7GoMDZguh8yuaI1+0Gn1qcmZEfwuhvESO1oMzpQY=;
	h=To:Subject:From:Date:From;
	b=HE10U53tco+VnwzW+Qy2DFzTdxg6ApQx7WwVd5kYvFKOgbs9ybSYY8FaRkyEdKguT
	 a1rJTUh2yaZVgJA1c9m/obz7OpbgcuScwW9ZacwTVdwVDbUKLfJIyQdIuQ7FnbdQo6
	 955c4ieRqEwtN7LzWAtUbUnVgRBNwQtwRmu6hSdgGjKs1B5ItivnuKGPI29yRSkFp4
	 QMPgXMy3sHsCJamJsOgcv5nhzAqVt5IIdaWk/eSpFjo6VdR9Huwoas0MMV+V+C1q9U
	 4qbjycYiQ56kGBX5u8B/FnB5e2XJxU8ogmc8m0IEojFe1zpSi5nMVoyPH+cQiY8OAO
	 FDRwf5eMa1fow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B8FD609D7
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176591003358.6741.8865213104257709781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af1b68aff8c03b8a92e131b47f143bdacaefef8ea049d37db31b91676331d3cf
Date: Tue, 16 Dec 2025 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765910033
