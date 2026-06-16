Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6793D2C11F1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 10:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781604394; cv=none; b=W6R1R2e8oGiOspis84mdIKI/yLFqXlxNA5pYTNXPk5+9CP7mIjYZd6d5oCNp7mLmnIiUOYopu36+68GNqxYCo+lekISghvZaIxBncpVrNEbpjSXa7+F7Yz3jwjS6bH9oaZKYIwF87fKOKjNp5nt6d048i/tGa4M19TeNX/ACt4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781604394; c=relaxed/simple;
	bh=by55uzVlA0j8aqovPa2uGqca3Mii7nJyZ1ou19Vx5NU=;
	h=To:Subject:From:Message-Id:Date; b=Rw4zXj5ZYv2qildZX+WUpmyNOZ/0GwsE9Rq4O0/3qfsw28IvgjHf/JPy90jBXMJvpDxmVwpNVqzZYHcr3dhJrcGgj586V9GBjs6F+Tq1KD/jVC03vskaLSvjhzOfreHAsJwis03yZMww2pdICLZeJa/Qbr7hiHaIWZvXlsg7gFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nUbkoTrT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nUbkoTrT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED3C9C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 10:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781604394;
	bh=by55uzVlA0j8aqovPa2uGqca3Mii7nJyZ1ou19Vx5NU=;
	h=To:Subject:From:Date:From;
	b=nUbkoTrT+f8qF3t1UHwuEuUlljO9UakTiDHBgNRoYtP0fzogmzLtROEFlmEkq2eGt
	 FRLCKIRE10VAUUbTQkpu/jolaCU74KwCIBAgpA93q/M83FIMhgFGvp9MfF6AjUuGkQ
	 Idjh4wxII20TWdCJ7iV8l0wz/p4kn08d+VGZtWpp7/Rb6ut2YGgf/IZfgnp0cn8HtA
	 TfdxfjQbFa5HB/bUVRNivSrHtSAK9th5L3iK75ypkzYAFL4Xxe0I/rrPbE6ECfB/IW
	 fkqOiYWFsBr0s2T6YAp+In45+lL2jaKgVwnJQIhtXJuQGc+/HScPbth93cK7yiMNkP
	 kS0t6yqRYX+rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B666ECD98E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 10:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178160439373.18869.17200013866426395216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b05112a6145070572538d9e2bea98339a5d307f666500d58ced259da4fa3f7ed
Date: Tue, 16 Jun 2026 10:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781604393
