Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA28156661
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752449394; cv=none; b=Ykx85diqMqlnp76Py9cLBXxbun4zliOR4gfBOOzl2cSIcgE+fzLQDLNT60LoAnjgIW5UqhYeFcPBCSIlefH5RVSgk4/56UDWGCq+DhA2t3OH7h30/ps0UdI0D90Jq8uyhQ/PgysA2obZgt6apzSe7JWtFf5KOc/BzALqlirdPRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752449394; c=relaxed/simple;
	bh=ToaUMagVlAtaolz/IcweZS9B0hbhPCKJk03oLDrlngY=;
	h=To:Subject:From:Message-Id:Date; b=CgD2+OVBnOP/lQTaZaNluoiPD0ZWJHf8OnuT0via4w9sDtHZgiJHPQe/kxRl+5Q2mXI5PZWBryLHjrnrID9JRPRpEVn21zY83uE7p5i3lMdcujdhnXDMlgNaoHQ4ynvUA/RhV4vJ5rGJk+WGO+t3aulnuCphnrdMGQlFB4l45Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iem/WLyE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iem/WLyE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B1DC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752449393;
	bh=ToaUMagVlAtaolz/IcweZS9B0hbhPCKJk03oLDrlngY=;
	h=To:Subject:From:Date:From;
	b=iem/WLyEqAKOe5/j6lyE+yFc9F6LjNKOxwV2lSk+eXVrtokuoAU254Ps7kkgWUarg
	 BWtGB+xoeNkARkPLJgOEn3DU/DoHZDeBuf7zShAWbPgPZE7nUospewSGnpwFFV37Z7
	 sTYNpuR9ngrOy94eNPy1B8p99PDkJ1l4kSHBuyOckNYJSvfTJJortbB/UdpEDMf2Bs
	 F0CJjR01UuIo9o1UL4ai9omN9ZJYvRScm6RwQk3FBc1SfxaB0vIXiw+h9mLQrx4hYi
	 QbFHw7n0UtzcZbCqnRXyrxX+OYKeSnrcKqrSU84ebNPX5/qVlqIyZExrPnaK/vbGBQ
	 cTX/7QiWVIfGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ABDC83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175244939357.18778.14931899328078863162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adbed8ed7d53f79d136533bcc0b80baff3961736622d27c4e63b8b9ff45112e4
Date: Sun, 13 Jul 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752449393
