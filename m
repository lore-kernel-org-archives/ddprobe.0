Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47003F50F
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745315394; cv=none; b=nn5df/q8YC2H1fDOUaY9+rdZ+acNSDe28l/psHVmdjNiGP/YKeFeJCuu2RLqwNVfgzqHnJX14wnAgjvQnvaXaZPBlJ3b0HfgnB0pSALnCOYxDTtoAUg/4dMixbivNoW52EpmOnqJw4bqFNitPGntMnGJSt2nYZaql5kFghtzniM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745315394; c=relaxed/simple;
	bh=lTUphaChKIN7Hy4PQ++xLkxnfFijBz2vC7KujHywmiQ=;
	h=To:Subject:From:Message-Id:Date; b=cF2xH7/9Ox3cQKJfuxkpMNjE8IBJqJDPW1FM5MUIjP4HZfuPD2NoeTTgDnsPMc3KRrhsfvmE/w35nJYN2eko998+lQTWwf9jZsCz+vnGJUDde8tIk+/E2wufmuQpCRbUNLOkBW76lb5TtWZ3o6+Ifjf0JQzDsFnRQV4w4UOAG0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vf0Djbdj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vf0Djbdj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B99CBC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745315393;
	bh=lTUphaChKIN7Hy4PQ++xLkxnfFijBz2vC7KujHywmiQ=;
	h=To:Subject:From:Date:From;
	b=Vf0Djbdjz6ly2O0GDyr3q+9rwkeg6xP50QNR4U/F8bNIfbDFjXqkwz9VCAyS0yLnr
	 6lTiO0aKAmRm4XHRHEWSY+VN28n32mQr4bmOnC2s7g9vAyOwP26vD1lNVA+jVf3h9k
	 16s66wCcsoM+k/bMHR3dR5vWKy5iJlB1Fpp3ixvtKh8K29RJ4X+2gwnMzqE0aopCs5
	 p02hD40LvxfWSv3Amhi3xGb06jzZQPADA28sxCN4gd6jX+OqAc7Ysre3Gwu26FwblN
	 3OkU0Pw/pj42iDXx93phV0eOswzI9LJNJFxys78FSLL/KAMK61hDrDjGSXNHaIBXDB
	 gB+f1p9n4AeWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9926CC369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174531539361.3345.15953006245965484055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4145a7105dc352d616831e6f7bdd6b0b91452620165664c9dccbb8da0a9a6bd9
Date: Tue, 22 Apr 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745315393
