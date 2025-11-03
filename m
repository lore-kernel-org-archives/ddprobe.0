Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 046F33019D6
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762184994; cv=none; b=jIKFeGtk/ex3XgREf0ELb17lok3W3u5/zj77jPMdoHT24NuzU3SC6ByolzvlZAA5LkLItd9NwlVb0yjh/rG3+s5jr3Ika5eFXf66xpeodcEbQvJ6K+6M8qR4Ei5YmkXwDL2IqExLtg7HqRbGv6hi87aSwdgswA1l8bk9yvhnZnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762184994; c=relaxed/simple;
	bh=TD2/9wQ2OMBesUwg+Q6bqAAASvylVbA8V2hKn1yFBjA=;
	h=To:Subject:From:Message-Id:Date; b=RfTD+HbtAN+dymQ+sv/mCiNmSdkxXHFKGfsT1FN65+IjJmYhv9cH7UX8ecI0pbD9o3Afej4Nzcd/ckzLdZ45a8+ZC0O9NzxSrbgl1CIWfhA9S3nBxf2eBN4QxI1Q4fUXk4UmSBRzBJy3UQ0Ze8gvaNIY39Csdf7154xaHj7Ywjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZvFl0h5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZvFl0h5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D31EC113D0
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762184993;
	bh=TD2/9wQ2OMBesUwg+Q6bqAAASvylVbA8V2hKn1yFBjA=;
	h=To:Subject:From:Date:From;
	b=ZZvFl0h5XZT3aOU2JKjGFJpdwm4iFGOjr7MIqjIeqacGZpyTZlnmwFghVOnsjDavs
	 f48siCsxy9DDvlns57Y/wqDffCUzf2GXU/iLqBzuhv1J0MC6dPHTGxlTF5Yez0/NCJ
	 eVsywQGNIKIKL9AmoCbXat5edkt+hwHdK9s5H9gi79vefjJAD1r4x+OZSCd2SpkTAC
	 TqIe/cdLlnFoK0hL3x0ebCpCNYWwwJ1jVU5A7Es9/FMaawE6o7hfUFvKGjgjIC9xAz
	 CzE9aRgK60EXuaB+fAT4IaSm3k82+lLJCLOmKHUGdciBXi1/eH+5BtOHZHCQLInlmc
	 pMe2TwFzBJpww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9013BCCFA03
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176218499358.15026.3862756488872264920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91fc1c6f6e0d6d0a0765490335bd3642483ae8f40d773751629793f0bd7a0b6b
Date: Mon, 03 Nov 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762184993
