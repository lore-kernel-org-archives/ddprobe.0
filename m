Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF46E288525
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755439193; cv=none; b=Mb96TXFhIOhsTnnxk7VGqlQReqlms47hdzVaUYMg7i9yitrF7InAsCVwtW3BBiMfT3CCY8xBEYujUyZ/ez6Lxh1pT0MqZfDzPLuvOeAecjvLtmrl0DmPPXSXK1Hhsb7HXHPKny6lABvpAgIDLaGjD5Yq5a4Kx9KyCGFug62mZIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755439193; c=relaxed/simple;
	bh=qIzfMZIBQUUyHhEuqvsW+rJuHLQynXIwr4cISVI2AFU=;
	h=To:Subject:From:Message-Id:Date; b=lEZYshn8i2eBZGO/HbCMwrm3k5H/2cHxmR1a++Ir3Hl9HFUM+959PkThKxd6Gp7cuTw9p3dNftN+WlEZvJAgAdcjr4dEsfHfqEm97GIDg+IhLezDZiMxChqVdMQF5d3uPWNgKP+c63wJD2UDCvskU+M4KsOhQ9h+p4zLCL1wVqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fNrBg64W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fNrBg64W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D5EC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755439193;
	bh=qIzfMZIBQUUyHhEuqvsW+rJuHLQynXIwr4cISVI2AFU=;
	h=To:Subject:From:Date:From;
	b=fNrBg64WAaHASPkeekEGoOBXuwS1uPG3fojDzUVd6g+AXTydueOTn+m7JMmvuvcmA
	 uSWeHfM98c/UUb744ti2avqi0FSTv1hJsn96c9iQnkMfOszvyC8AJwmDpvlID3TYx1
	 Jv0igQTqRNrJwUTorVecdeJD/91ZiewmPSNYZ36pOveQ+5faYgVkwEQ0SLZUN0mo6/
	 KrKx2f7nErEh0sSQz8W3uJDiLw/qcodR8Cuia/mUOCDHoD3d6x0BpLRKHhJ5LcAgsY
	 V+l4PqZ/bDLeJEwE2hZE3WbCBEl4QEZr9t+cfeKcBTGtzlG5BqZEHFfRuMh/2sOvBG
	 e10on+XOAk6kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DADCA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175543919357.32117.5862194209142697145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e5ff6a93f84b8a07dc02fdea4b6577ada58768ff81988adec4c81bc05019fc2
Date: Sun, 17 Aug 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755439193
