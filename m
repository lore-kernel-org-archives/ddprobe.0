Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139672264CA
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771013694; cv=none; b=YaXvrD1mYw7qmLwvpugdkitSS6Acxj7XoQFO0r4IQif2v0c4EbvxtsjPvq2gp1Wi5Q7rhao4pd0BnHmAeUT7WFvOLnH2jLDmO78Gcme+7OOd4cr90OI5RQNkj+d/WT3NAgwZMcIVeE4tYXoFgzRxWNfkkd4fzdUETW9Kh1Ygy4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771013694; c=relaxed/simple;
	bh=HKtBtvUIvf+CJVf0KApfsFLU5660CSsmSoqotiajARI=;
	h=To:Subject:From:Message-Id:Date; b=iyClSYeuJUsG+4aL6/4EJB/pDlXQpJ3DHM9q/76ghY/21DioXtW/IpSoE/br3n2fQWgy6WfLGWTS/1+0G5VuBsCoRkwFhaAAyCWmp+vc+QTZIQ6HmwhkR/7tqhNxQh4h5D0QVnqGL/ruqrepCI7yDpvrOugcId3PnG+Ra4+NSmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VaSrf4uy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VaSrf4uy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41ABC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771013693;
	bh=HKtBtvUIvf+CJVf0KApfsFLU5660CSsmSoqotiajARI=;
	h=To:Subject:From:Date:From;
	b=VaSrf4uyc7zb/BJwwyaYcYL2Bbpw8rvytwY6N+AgKIIJnhyJafvrfCOLN/TfBGM0D
	 zQ0CDwbQlGUsREPe7cNmr485TIihVY/V+1NE+Ta9+jme5jsCgt8v+zykt1ougT/GmO
	 p9c8Kq9xtCLcMoHa0LA8UvJxMvFxQHdjNlEynL0C7F12aElNlCjiWZv9XQUt5xHPoH
	 RcKhfRPiJwD4RncwJmwQ36mlhYLbqYc/sfP8PfLJ4vuMJAThSuhb5DHtsos+gK/BJj
	 LAt9gpzPGzQf4Elyu61wQDb4PlxEVBO3Argpl+6b2/uqInrGpwrRKCIKEysF+0wD2s
	 A/hBYtsFIbldQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BADEF99DC
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177101369358.32160.85209841462305170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a000d4707d9d03a4c785da90f8cfb2df719ef431905e0d6d5630a6d64e24bbf
Date: Fri, 13 Feb 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771013693
