Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E758F7D
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755829794; cv=none; b=GL/zb9ZKeCQrvVZIDFlZvNuC7kp2nDu7MXUCG1ORrSd4GWjn8Zv+A21rZc6zastRy7/cg+vIDPCPqUBIDpbKkCRcFL1lyr18YQ5CKNKF8i3pnr17VVANEBZ9PDU7oi6J3RXP2MS7fygJqnpUdXm9y+DEdqdIN1Xgw/8KgdaENLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755829794; c=relaxed/simple;
	bh=jTOTc2oUpdMxt1NhI/1KXv5BbokhhAi7ly7OlPAgPxA=;
	h=To:Subject:From:Message-Id:Date; b=eThddpdX2Bwm2CwUspHTL+M1zlnTAg2aN8oIhyS5RMPZ90FVkyeQ4axvPs2ZtHVpR+zOH00vqusY0kwC1aD8eAtQLSLGkAQrUi4D/25WBjndIsFKmmZ8cq5yuHpxcOvpavtnIoy39NPfUdLKJ5KCfDMx+LR54juUbVbbAbspgOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p4aco9yA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p4aco9yA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D21C116B1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755829793;
	bh=jTOTc2oUpdMxt1NhI/1KXv5BbokhhAi7ly7OlPAgPxA=;
	h=To:Subject:From:Date:From;
	b=p4aco9yAw5cfoRRI/1vyp2WY27r1ISgG93vnZJGoX5mz7UrxGvYMVHgZmcsbEwZ4X
	 48xs0e7T99nKtGy6IiYPsXOLeeO3pBH+ji5vJyWHex8xeElelJSo4jbwimtq9wLgaF
	 TY9f60YCDREPlD3TPn6WlPv43dxwjyCrQZlmTn8hQAxk3FPB4zNqXs9xp299x6CGS2
	 8RcLI5Osrz3cwmiAP04PcLZuqgKDwrbbsFpO4P6/YjXiT0OgMDRCcvGvI30VhaA/j2
	 bHjaqT6ODw3y0glIPh2TUXJiN3AEBEL39bNDq8gXLgLfmfEVsuxI+JEvDFqusU3mTg
	 iXjta1imxuY3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D49CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175582979357.31178.8521612454228500700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b3189d82fd61dba4a437a1ca1589ec34e6ab5367bc943ef53f753e02dd39960
Date: Fri, 22 Aug 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755829793
