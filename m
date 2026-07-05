Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E415A59
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 00:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783210114; cv=none; b=YtPcUGjFJOwYLygb9cUNjYp03B91PoAX9Tujr2/ddbCcFyWmmR4QTWmLSlKVxMIoDjCMiL03DGF+IVCmU6uZcnsJ436v9EWqmopfXqoanqSMahfLdNubExnngloKiBesdAFoVeu0OnReWh1LLXJYXTwF9Pv5B3Ckht/5z0G6MQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783210114; c=relaxed/simple;
	bh=cwsVS8+ozwsLjn7xEVvIkQZ1TNNgRd3JMDjNPMHsZJI=;
	h=To:Subject:From:Message-Id:Date; b=p2h25KNLfczEzYa7euoe72Ar6HnoNxxFHWV839xqiB2ftJGleFq/MvNKWehQu5ao3cMfo9y7OHD7gyFUOIDp9TaUKxFzMmVDPsHJQCWxGtce7AV0uCb4KAsZXC1rA5EU8diC078xEdAO609rbmKhusgjOr3f/Pr+4BvSaCYEng4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UflXhk6C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UflXhk6C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA76C19425
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 00:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783210113;
	bh=cwsVS8+ozwsLjn7xEVvIkQZ1TNNgRd3JMDjNPMHsZJI=;
	h=To:Subject:From:Date:From;
	b=UflXhk6CxgUPWdCuiK/cHioY0u09jfTmnujNCGZdwlOuE5P+uz6KJGXQ226xfesXc
	 WySc5FdgkWvKmIb8IURmcDGibFQ9zTECA6idUVNFkBF5BhT8zoLyhrE99UEy902wgv
	 PBu5Vq8SIkdp4ASIh+j6dlSDMKj3ew3oPAchiDLWWqBHYlTjI/0bxkv1TnADCT7rQu
	 L8NgWyw9moixI+ehq8eE28DJTH4JvfP3DAB8n3yKh2X+kte+IAAikcCdyThAq1m/rq
	 I15CAl4KvsY5AIAAcDKBbNZDcuiKhlyeDOK02NAN9KnMuzEN58EkSbbuwKX53GQgWx
	 +sv45ovYncTIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6BAC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 00:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178321011368.9271.8885188849168630033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff224a87db90c032a7aca09885a9b6ac81b42aa9a6b136c471902e8dc5689745
Date: Sun, 05 Jul 2026 00:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783210113
