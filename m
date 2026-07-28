Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A83D2DF719
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785252634; cv=none; b=ss1c47hdzMpTq7U24hXY8RfMrOo5ZI+oL/NTUZMsSCBymuZ82YwC4Kh33ldKbuu1SZfWS/hb7WLZEcsH17ROucU38TKnt3YJujR/79PB2PtqlxE/0TTj/m1OiKlex57ZAujVjbmQ42ZY4H9Yqp9KWsHzy9q38XDlW8uUUyUEAOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785252634; c=relaxed/simple;
	bh=8j0W3Izi5V32gPR6odhrZb6/TTTM49M5QMxfOi3QKRA=;
	h=To:Subject:From:Message-Id:Date; b=XncgL+T7BgdJHSSYsw6LFv2aCVleA29aG5HucQYl9vWP6dpx17kHHC6kBV/9fqNaiVhnEBsL9venOUcimTJNzQB4umUTj+FBQRtoBo5VKBah6NSBpSR0zxta2KEFJBePjknHDz8JU2kKsQgYYiYPw8/0WcyG/3jqRDD/UeMWMpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iIjlr6YJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iIjlr6YJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE63C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785252633;
	bh=8j0W3Izi5V32gPR6odhrZb6/TTTM49M5QMxfOi3QKRA=;
	h=To:Subject:From:Date:From;
	b=iIjlr6YJ4+I/uhTGEQYAgDvE+SC5omFDSb17ndptcg5pyhv9JtSA4UuWCHIxdMA9b
	 zKQ0YSsEoyvq9z1Y+bzkb9kBtKcBsn+2T3RPnTITICbiPAXWO1OGBM8g8Y2HozGd71
	 TFmNpOQ8QF0DsUUx1GNANZk8Y3Skw7bgtXb20sEZ/yo+Cz0U0VjEHZGE3VEjTOcuG5
	 cPZrX74hWAyxZ3mLGGxYDXYn8qD0ziPRBQsDxiI6fnSIYq/D/SpCyFmwdcJqcbrrdS
	 gIuYm3zDKk33SxuCOwqgyVpNt37cHkEucoO+eh8tp6z9T6AQ7VuOM4GzlOz98Brhq1
	 iU0eIaEg4vrjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6A4C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178525263369.12332.14580551728044015075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89e333e14817f30855e96b57eb3d87a24685bfab1bc9a22004a2219be20cd2a4
Date: Tue, 28 Jul 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785252633
