Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A57C3644A1
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774422894; cv=none; b=YEBc5B7VVCXURtVrNyle4p9oFyi7279I0D5K68KdaTLNwoyXgzy2wHhxNUpxUSGbw3RYo/JedWPj3ePeKzKjYQUsrMzKO28JEWL9XQX+ra8N6ZeQWUS/Rq/VbuO3YizlJukP7pEnHpltElPxz5l0YyQKhWWqT3JI7UlUaPwetcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774422894; c=relaxed/simple;
	bh=3YycbCJ0JTfyn1FQX5gcxEElrcGo7sTqqu8/adssoO0=;
	h=To:Subject:From:Message-Id:Date; b=DJhMthmFLIlmnT6eylRID8f5KNNnv//IrlehlQ67ceLV7N+2ZiWoVe0LAJ3LUHPN3l9yvcTGbyhiavWz3c4dlwgQnxXr9AZHo5k4BWa9yIEMWgmIoGQhqU/fG0J22hi6eK6O7+u2ycXhtz2QGVOCd70nvx+XdGwqlnIOQ7xRrrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VvYSlTbl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VvYSlTbl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A575CC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774422893;
	bh=3YycbCJ0JTfyn1FQX5gcxEElrcGo7sTqqu8/adssoO0=;
	h=To:Subject:From:Date:From;
	b=VvYSlTblxIl2V1Xv8+Oe5estobVWjt2RcXPTG6jw+yCfeFdio8oY9L7KJyOpcP0p1
	 gMvnLdKW5M1nXp4EkczeCD3pQ4uO+7+kJCKVVluD8lMNWnxT89PPXVLqFRIQAgil1o
	 YDXwaWAeGXW82Kr0WIlRL3u7Tsya2UZ45/CE1TN8JfUMixNDXpzmtPP0vdDENxbpRs
	 M1jGMYfu+5qfu6It6GrUFju8njTiuwvc8cAbYGB4IQVPH6BXqd/6+WytUPj4/MhIST
	 e2xGbC89CLjLSdL48Jd7Rfu2dRCLHGrzVwDdv1YGAt+YsknFzUPhZHldxLFUEFvzOO
	 knQkmKf8JsBHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92986FEA81C
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177442289359.8250.10371883520019716620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae3815c294b3afeace20cb2e5cf4b8b84071ea0d41a343b1dc72407871244563
Date: Wed, 25 Mar 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774422893
