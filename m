Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60B6051C5A
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743767394; cv=none; b=JXyDplYPCaBkdr3GRs+YmMZglH2DRSdNEXd+2mf4WJ8tU5sC9/jo7wTIOTkYHkscNJqZf3IyQyyrg+aQo4VLUczyskwz0FetzxdQT/50yPoJLr0MXW25dVTeK7UzZUgHN8Qt4fumm/aq+6M8lp29Cmd8r0qm08AtQ5kLsDDDkRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743767394; c=relaxed/simple;
	bh=K+ORuKkb4JaES5AfR8i6AUVbtLaDW7HERGGxO7UmcRY=;
	h=To:Subject:From:Message-Id:Date; b=TPKLnAONbk19IUGVht75oCL6qVToNgf1ZamHFENZFhS0FYtKdiEas6oKx4LS0yD5dsFkfNYWRoKRq47A2Dn3+NZ+l/imRkOdeb90blVoh1/Qn4YDxbmGXiRR5/ew/JltUnndhIb/fexOgviaGYdD62g9HnZvQrKqCAaFhYBppzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q3MgwXZs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q3MgwXZs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9FF8C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743767393;
	bh=K+ORuKkb4JaES5AfR8i6AUVbtLaDW7HERGGxO7UmcRY=;
	h=To:Subject:From:Date:From;
	b=Q3MgwXZs3HJ8gkEt2Q7Xth3ceqkgcCX2FyLpMaXBWRyeUbzKCCmqD1mSUMkx86Awc
	 /K9ywDMjPIdKMbFu0KR9AdGiG/jywAddAIKH6U7sdBm4OUhcNYFKnwuf0MIbxm7mVo
	 jVieWRLwXY7ob+of5l9A4ILOAEO5yCcDPnk6z9QKCvczQ54L6gmZQB/ujVdcWmIgHn
	 UFr8kJOpCpLlV4LfOxI8HuTLZ1wiZarZhIuOO4F7mdT6M/ptm9FKdrrIWRcnkI6gfM
	 nsan1093HStjSa/9d4LJo6b8WWPIgdpgU2IxVNYGkIz/nww8OWBmi/oem5Zb5sIC6n
	 SzjIaDJkgAMtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FC0C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174376739364.8536.10894092984506968525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c844c6fcf43aa550d0c9849658bc1d27538b29512a8aed1bcf1c73975081d3d4
Date: Fri, 04 Apr 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743767393
