Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A76145A1F
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762316994; cv=none; b=HHtMRyTw9QZdtBoPswV5mUggIsCNjo1r8CpdWHx5XgsYUxgQGX/nImbSiTK77gp+PR/I+YYOrouVU4Ur5f6g1O+iSkrQUfGfCIuMYLC/aJnY+y4x2plwErt1gadD6UrHXe7HUrqBy0qyd24eGFSBf6DJHxv4mOrsGCT1VAu2pAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762316994; c=relaxed/simple;
	bh=7egCJgC/rXDBKhx2j6L21boZI9rfraucaEgUijVeqwg=;
	h=To:Subject:From:Message-Id:Date; b=tTjbaoWnGR6v5RWUs2/aXuEt+fz01C56ts9WQj/lWXYWjI/+ClpuvKx8wJJw9TJXtyunuLS9lK5m8u05PmehjhjpvsQJ/DNiwMAwLTWe/EmUa7R0eI5O0cq8q/c4P+OqNzm5dzHFURaStFyAk3qDjmMuhZUcTQAvXV/x2RyaaUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=frwOFWS8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="frwOFWS8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4354C116B1
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762316993;
	bh=7egCJgC/rXDBKhx2j6L21boZI9rfraucaEgUijVeqwg=;
	h=To:Subject:From:Date:From;
	b=frwOFWS8yA5m2ac6tnSmeuz+bdLpP6je87FgSsRUs5vG2vR2yY/jclAdVn1pTfVqz
	 UMuaLTr/+wpbMKqvwNcMddqJNO/dlfZYsb972n6hHdfw55G6jMtvWKi611bwTj6Yls
	 Yl5I4sOOqKaEKZzqEwo84MjCD0c/j/UMOI+xWZ4Nwgbk+f4hRuK6h6FVMOrWsabkS2
	 WkGXdbOr9TU+fdwv/98iiSEK0b2AbH6CAnr3M3IBxs3ILsQzUgk6ZOE4RK/TNp8LSa
	 gPPupBHwGW2Oi1unkTvgOkGhOw61RoqKifl878oQ2YFg7dBZDOcCk3+RIoej1ltwOQ
	 zvLHCYBgHLzbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F21CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176231699360.11731.12465050706781540433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e8f0941cb28aadfd6fbe0769e16a6776fe2c9d5debbcd8bd3f264437e5e92c5
Date: Wed, 05 Nov 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762316993
