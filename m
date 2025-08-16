Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2585F139579
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755364794; cv=none; b=IJD/vmGG99WiUGLK1pqMsUZrkTRZLuOn0B/L0PpZE/O5LBNDYEfZHza2LxWtolH3KNGseQKg87MTvv5IV21n/dafX5qOb3CpmAKJwNDBsJHb9d83GhlMzd5ewJDGcKFqW0+uMQdZHNw48o5+rHSvWKnnZvhAW/+esE7EPnedX5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755364794; c=relaxed/simple;
	bh=Ai6vOcvrNCJGMghykt/WLndrKjyOrVMXAN0za2O/onU=;
	h=To:Subject:From:Message-Id:Date; b=OIWAEFUfi0/7XZvqKMR/guF3MO+fG5IrCjlKgjJaNZWppdtijtDqiy6C9yvjRdeJf7S0WRImzI8MpX7Iq5DYFEbs9b3J4QX9ApLIZRdEKBGsk4av+cSNdJs73A3i4+i+Ax/XBO0zI/yNBIVSEk0nW2RAxRS+ChEvmiUnG5BM57g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QTwS8Tef; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QTwS8Tef"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D2CC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755364793;
	bh=Ai6vOcvrNCJGMghykt/WLndrKjyOrVMXAN0za2O/onU=;
	h=To:Subject:From:Date:From;
	b=QTwS8Tef8lh5wdiJ8TgcJp79KqRSvZqCTCp7WfCUJldlhB3FaMv2uQ5ZPq6MHDJkN
	 vBCTxCkYS+kN8GZz7tsmqTgbxGEXl8hZMCX3WgB2H2L/o3bB7bVyjeXAzIgAVpXZoP
	 g+lA6JYJrB1Bw8CcWZ8Pr0r7N3zlFMiGDJ6uCk4lUGF3y6EO4x6a4VfgYizagGzaoq
	 4apERmn4NIsNm6n17Xr6B0W8omZdK8iaUKpcouyse0W00oTMc1WNBt6c8nqPYbxgYp
	 uhTppWh/dntwaMWmOgvznWTC7o+vt2Q0nOrg3V6NeRBF3nTNOnW8X+0ExNmvlANzVo
	 K3cospLCMjEmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1B5CA0EE9
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175536479357.19697.6442936901532951067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adf05dd1c0bf76a6aaddbb60f1ef422dbf1cef029a3c4aeebe674a2221780241
Date: Sat, 16 Aug 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755364793
