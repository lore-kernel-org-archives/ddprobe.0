Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104378C1F
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759471794; cv=none; b=fZ4PP2HOKuHwEPwiHR1dkcmc/BSX/7cf1756hpS6x7A1YzyNvpjWNFGcSHJTR9a30DZ5ibX1mXeIpgRf0vJCJVQqbGKSrgtjF7nuxrbWXjsSxF5R+AMB5bt2afbm44hAv9X2ZjMBHgNuvaCGbz3k+vCDhj/BCIE/5OQB0M0T7t0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759471794; c=relaxed/simple;
	bh=qhMBqEn0xkkZeHwLVBptZMjsAxVfDPmaIG1Qg4QbUXU=;
	h=To:Subject:From:Message-Id:Date; b=UejRNsJsr9MrcZyXZRAEOWtGUB3uIUMlC53Mi6cBIXMRkxeVjWWRrEgm/Nm81k1Qe4CyXe0RwC3Zz9r2GqaOn5ICJUJeoK9UqpVHseU7b616Cmlolfi1VrJIbuCKtfeYcKvYBrABOuGXv2RfOJEZmebtuMZpCa/aq0DuExJowqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RmtvuTvK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RmtvuTvK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BCFC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759471793;
	bh=qhMBqEn0xkkZeHwLVBptZMjsAxVfDPmaIG1Qg4QbUXU=;
	h=To:Subject:From:Date:From;
	b=RmtvuTvKcjEX/scXAigxLeahPhq+xbsx1nFTXaEpqbnXKQ4jw3tHkuwe8ZDaXbDka
	 FrBzRu06pxifsHF6rzDz0WSxT5dfP/IhtGAnDoyYgr4rVk+OtxVf5vjempr9Awf/Cx
	 U6sZ99caw32pekilLrR1YbKYaYBCuDe7usi46Suf4f3Mt2N3G6GqB7mh6N5VEnqMMQ
	 eiIQyzX3C81Q38m8xbVQsFFyoZCI4WVTWITxx6h9mB4y8GKbyna2gTQwCcoKxkYoPN
	 vnDlQhQanZ1evXxK1ue5rkLr03koB482IIoKSCr9ghIuaybxNg/21BNTIxYMz+7mJ0
	 78yX4QFzUYi0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922CACAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175947179357.16612.17524599552210739623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5467f25773edcb8371474c107df216c0bf2f75b1f9c7176ce63e2067ba68e1ba
Date: Fri, 03 Oct 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759471793
