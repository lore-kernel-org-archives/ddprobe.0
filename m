Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D936481B1
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743726595; cv=none; b=GBkXw2dgML1C4N2RDirPb4sVFkPq2fVOjtu4NufFAkYXRGilHM49jaN7DFADdHKeqmA3HahfdeGBiNOMTfSkOs1Tk/rtWY1EuZQC4eLhpRxUn1kORa1u43bkqeRjEuqYJJ0g5gGiTQWDOJgH1vzHDBO21nEQyrFRvxLCE3knJkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743726595; c=relaxed/simple;
	bh=RlsRYQpkew+eTeWOyHpLDtfHvvY0i5HTWqYVzw58jOM=;
	h=To:Subject:From:Message-Id:Date; b=KBDfBz2BKd2SdNxQ764fnlJfSHPNJQdOMyMdWNEQhdCo1v5325UY2LjqokLWAXnpVU98soxZN9b9p1i5RIaB3EiV4CDSde7E/QCmzP3fLzbYfEKo4vTYvC32K/9m4j0fxSNW/TlNWGF3CRbaHKvWvPTo4p0sbbjPNDTksp0YTsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vB9ivC6q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vB9ivC6q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B555AC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743726593;
	bh=RlsRYQpkew+eTeWOyHpLDtfHvvY0i5HTWqYVzw58jOM=;
	h=To:Subject:From:Date:From;
	b=vB9ivC6qjKuSXiaQL5Dxk1H/RJem/bx3NePeT4oZ3oBIgnN43xbtbFqHdSO1O7aC9
	 FmCU1eHoYcLRF+/1p+x0ozhKXNjYCECkOPeYRoCU7w1V7VCu+edBKHh3XHTxlQOKhQ
	 t4YKSDDxXjbEC74e6llyetI5F5phx+Y+BWe2wFZjAWxsV4WPnArgVskKgxuV9ZsLT9
	 WsTJ0hQt0jGLXcNHCYBuj7VVLxkPbM20VYTFFNTZfuOX1h7g4xatTnTWQWy7z7an6P
	 /iwulZ+HWdhU701j1suv3h9RvORaKdj4Qf6kx04CJ4tWB8MuSdJYFXu93rJW9bD9AD
	 Fj2dXKVRzETvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B669C3600C
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174372659361.28587.764201747371421919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d8add2ca18cce4cb38a029bfc2318ff05d9678a2fe14e8f442b4a7aa4194a77
Date: Fri, 04 Apr 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743726593
