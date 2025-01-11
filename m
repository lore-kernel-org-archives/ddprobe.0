Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A2C1CFBC
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736636754; cv=none; b=thA/SDPUNtOPhfFq/5QMphH3MMiljKzBW5xPhtCsG6otDY8eA1tkhHNZvQYZpg7/MpBWK/XwgKXUv2n2xC4VoBc+uBC3aboCly8J25x8Awaaqh64Qzy8gJlWKXj3ZQ9yy7A/kCa6K36wqo6AXZJ/VG5jbv+OBLuk3UO6Snv07IE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736636754; c=relaxed/simple;
	bh=HAeYaucp/ILiaO1T5S6OylctuQxF9WwxEYLyToFLkU8=;
	h=To:Subject:From:Message-Id:Date; b=X4foMlufvrawPOaVtlnn7PobyPaGx0EZMwce3U13iBGUkQOPj+S429JWlJ6gmcREqilZn+zKdignCw2qHyJahfjS5G/+2nO9/Wf0ojCTUHO1e9TXxJBBB8S31ZVysJMQ8VC7WH6cAUCmFE4Ii0iJBvtgt2vSt6nbc3QYD7b59Xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lm6UDx6K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lm6UDx6K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF57C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736636753;
	bh=HAeYaucp/ILiaO1T5S6OylctuQxF9WwxEYLyToFLkU8=;
	h=To:Subject:From:Date:From;
	b=Lm6UDx6K94b4kNOYyVie3rwdBXBbD5fB8YuMjeAuE36i/h2+NeDQuGpVcIXJvqZvn
	 +1Fc4If2hMK6g3wp1BGvOAGK48xntyx4TTUZKxmJD3uTH6o5HvBDhiYO8eiz6Nz+iB
	 NdRXZa2eDAl9ohzrQJy17cEUrqzprQOI2qXok6CXaUiwacMHRjS86ywmlnflfmHgNb
	 Pd5TmfPo9A3EJ6FeY8acpDZ47QX9/OCW8+fHPrf6aUWQdO+fP80+mSXV//PoQ3g6h3
	 6zXsdtuTo/Gskg7DkKZ2Q+rGu/L+MusjKjDaDC9KPWOrYVarOKHfiI5hCikYYx2Hxn
	 +UVxV3A6uTGjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962C2E7719C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173663675360.17887.15303865963989704619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 444fc68a5dfeb2d8b5d5fdad814cce92da15d2f04a1997536ab32e30cc9225e9
Date: Sat, 11 Jan 2025 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736636753
