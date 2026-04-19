Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D982AA937
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 06:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776580053; cv=none; b=GeSlcIaaED0d92DGk1EP5rsuOvaCenQ4qdfPYvmSV/G2K1E5YJoidNN8zh9URa8zO1A7j5kO1Nt5bRR2V+63TMn/FwIIeR7z9Q/Y8Wp8qHgcErpIDVb9jx+2WWjP5Fnr2KHwOXAkDnZ+0cBRA2/TFzw7vwZAnvbrY/pbu9WUAoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776580053; c=relaxed/simple;
	bh=39jgERr1xcypogfVWs1MYcEhGz+9hZF718hu4PaiIKo=;
	h=To:Subject:From:Message-Id:Date; b=SfSDEKc1pZAgBgKWGDzH9ZNOxnizhzKHliGg7mj1GByeejsbhNIOcwtFLNQj2dUTLpb4h1JBfGVVjbT8shbiEx9zq0pqx9JwKDiSNFPiljF8rxe+ZofOnH0ECrlf+P8f+z59niWIvZVelpzkqQ25fpNu96jrC8cdlMybLQffvGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a2747FbW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a2747FbW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE3DAC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 06:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776580053;
	bh=39jgERr1xcypogfVWs1MYcEhGz+9hZF718hu4PaiIKo=;
	h=To:Subject:From:Date:From;
	b=a2747FbWUAj84TEWLU7t6jimz2xYKhbhwgWWuE75C5zPj1NiBJjziUY9CgHF767ai
	 mmnPaIONA8o42aUhBFIUV7a1y3eSfAk+d90jgb91GXo0ATTmMZ/t8ODOrKgBNIcADs
	 XU57/lPOr4hnnWxaGmBS4jsg8VHimRNDOfSKfPCo/2T6+whnP2IzpHuXVFvPtumMLJ
	 Oyh8ZVOILOyefgWkVZibtwrRmPP+weCOdeZZnJcUpqxrhfc4Rk1K71pDzUfEkN7hL8
	 hTD4bBJE+R45EjhVHq9ZyKHP87fM4fsCSI2f6zOeU9hp+Dq44Kjp9lA5aADrX/UOK9
	 /Q/+6cMIKhJCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEFEEA718E
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 06:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177658005368.1045.1102643668483637164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a93bac1227ccd6545df111e22d2d53570df1bb36f11db76ae75fa013ce9cd6b
Date: Sun, 19 Apr 2026 06:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776580053
