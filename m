Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2547D18FDAB
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756427994; cv=none; b=HCzd1IMzNRb6sUVl8f+v5lYJqj6E7NYg0viKoggC9Ct3nlRSQXIc+8kP86JheYti3eGRENVv51rl71yGt3O6D2+j03k338SvAbauNN4dQzNxAVzRArNR2FfHRHJfAwfUnumhHJsuyGp2RUxHb2aw0OxZdwMku+H9HFXEGe0NWW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756427994; c=relaxed/simple;
	bh=J19kljWE7THjseL/Jv++Qc9kRwa5DH2QFwLdQKI+L5Y=;
	h=To:Subject:From:Message-Id:Date; b=LetW8QkRPCQO9a0d3KvcNbgdOPpEm1mHfojySVsDAm9cqlZ/5vlO253tzxVIZwWijuqzuElSxdjwpW7UinOsjH8y8IMhzl7EsdE/RlZ39PyvYGwWs5JE4yD27Ca+xLl2Re10tnyLzI+ANR83DRRSnUzvXPK06mnDlfCCp3TmREQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LjQ7amAR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LjQ7amAR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05C2C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756427993;
	bh=J19kljWE7THjseL/Jv++Qc9kRwa5DH2QFwLdQKI+L5Y=;
	h=To:Subject:From:Date:From;
	b=LjQ7amARakCa1n88VwkiE9LLmbABuPfUkcpwtpWlHGPej8M40MMsMFj+3l3yhKlHD
	 WrgBNwnfTe0gO1gW62xxJuoSLlhKtieR0zQQ9Ci+U2nWEfVmrWHaEgzbrvoPcn7kmY
	 xVFJBJuJbtWcUgC09JPp65RwBy0YxRnc0Jku9jmKupK6TywkMOupls00ectcSl/2Cn
	 2vLQywRQe7UKvaNcuXpnq/VOw/kNV+LsF9WNDrhkB+H2yzkwMVwf7PcBpOJ7rcdgUX
	 mlA+WhY0umK/NB5BN/f55LKBnYtsVlch5kYgcggJEJH8me56gU8hYY3AqjcRtoLBk9
	 sY0DjbNZW/UUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900B6CA0FF6
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175642799358.29772.14559948967022812711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98d331e2534613fcc9b06b2b28041cee0d07c36283bef25555f56b737acf28b6
Date: Fri, 29 Aug 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756427993
