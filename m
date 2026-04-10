Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333DE38E5C7
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 17:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775840854; cv=none; b=SYhtb5BZPT//Vw3yxZIFpn6lvlRpN3RIAnfbVdO/grY/dUpEcUUH4dKWDv2XQGedWs42pMngWoCZFSJ+eYi04+ahUr6tF+Vp0Y5b1o0lxsgC0EwggfQTQBr3kpXRZmkO1zewDBPShUVGE2sbbrvYbU5cDZYLeUa6HLM008Q52Dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775840854; c=relaxed/simple;
	bh=e5zyuPazm9zVfeW28BnB2v0AQJTxBLYHDi1kXWEzvnw=;
	h=To:Subject:From:Message-Id:Date; b=I7z/1UUyCeje1vv0bFP3vBzBI4pfhNv4USGigR6dYu8g8H+I3Z2I93VlgHsg7yvgwFaDZ9nYsken3gQbxo29RvaexE4BGUF7ccGWMgLGH2cUwAfHRXUPFyCoN3NUm7ggFvvONkVkPuT/NEhs0y2ZFTjtSJo2Ij33VaezATGQtwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ejih7Wfk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ejih7Wfk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C85E6C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 17:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775840853;
	bh=e5zyuPazm9zVfeW28BnB2v0AQJTxBLYHDi1kXWEzvnw=;
	h=To:Subject:From:Date:From;
	b=ejih7Wfkf/d7WtAh2NRIy+2mII7lDjCRl+bbv573sTVjqGvvS2TWsAKWnZ2hWOsjs
	 4I9GKIbEk5u3PDuLWubOvi2YQ0GsjDcxu3dqJZNJTJkcTAVNDKR7PhzFANJThTHn2W
	 HMchp1jjhDTbj7tg9tp24IxYIKA/ZaYS3uvwcNXjCTCFmecMUOQEVa5pS+7NuisuS6
	 u+YfMz1jOnIti66tUNrl6LS6b122wytkZjhWaXKtRTT0caU2tTeYKjYn2iIkoGlk2d
	 gYydrGAsr992HPiaqHOcUhDiFxXaVj9SdJJ3bZd2ZduOUrGfy5ui5n1MxVoOjPmNJA
	 ZUR5qZfcDaWqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3DE8F459FC
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 17:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177584085372.7234.1627635002694825539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f049e97521de16af5bb109788a88e6d0e7ad96cceb2a0d4317d8b707ddeea551
Date: Fri, 10 Apr 2026 17:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775840853
