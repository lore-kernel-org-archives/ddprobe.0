Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3827328EB
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728641754; cv=none; b=Pmkc2qwjy+fR/M1Eoc59wSzZXK6xc6qt+0YwGChIGXtpmHFaScpmX83Hqzbtg1fNaWzIuhiL9pucEU+wF6q5zVqXTNjmEPxVCREflmW8WJZGLo/1IKUT86x/0vbEnNerP3/seGOKAhEqjB1QYsTz/VyViPfxYd4eKJ+Qh/LBgf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728641754; c=relaxed/simple;
	bh=QYy6El1iFeHzJfNX9mREoBbH+kOrnOOn/2krKCbGCNI=;
	h=To:Subject:From:Message-Id:Date; b=lzzZSQQfzLxJ/I77+2RZIwMdgXFT7e2gF47JVU1B+6/3n0OkYEkEgMrCFQ25zDGeqi9Q6+M2Z8/Q4DufPRKxTkmd/uGIWFSE6x/rHIUuL9JZPNPZc5MbrFjB/VCiu73ECCAkhXpjbSodfEU36z1O+K17wuwV6dSpFebDP6iTjQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jchc2Txp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jchc2Txp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8823C4CECC
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728641753;
	bh=QYy6El1iFeHzJfNX9mREoBbH+kOrnOOn/2krKCbGCNI=;
	h=To:Subject:From:Date:From;
	b=Jchc2TxpzfKvoLAIJ/9f+Pe1fbI7HgYcUEcG1YIDJ5GcmUu2AkxJVT+0OCdmXd66F
	 RGGY7H8/umNlRI+/nnaeRtwZ1ZHp+oCsZJR10AKp0Vys9gHnwABJx8PApTdUEFjviA
	 1vVRO+R6X3YKo3amkWgcTm7a9WK6QjywlYUzEMON7D8UTw6cmJwUXbiARyJLH70BUo
	 vKU0JnX9/dSwBjZ4WsjrajAjyTSRoLnDv+DSuMnpx+87ox3aX6gR2529wq7Efq/ezi
	 WMzPPU67PLtqHG8P9Zx5tqicXy1eGiN96NMhplyArubf/3pBfHraHCPml2CMX0Loia
	 qRrrjbTN5zIzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BEEDCFD30C
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172864175362.28756.5809026341793716333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 176e42ba51cb9e8d8868de4753ad589c3541d0033f1eb2b02416d083e8377e03
Date: Fri, 11 Oct 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728641753
