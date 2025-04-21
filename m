Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4186C155A25
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745205594; cv=none; b=ayuavsn4mcYqwc3KnyZOP5Vgbtms/YRncYo1O/l5L60jaUbRWvp7XkMqk9NS9u0B0sDL1Y9H/svNLcc2r024EPZaPsZUeH277pUdES66C2x6DQ4mbZC+PgvpPLnzsVymCV4kRU6v1QjwAT8tP32h+OfOvtIShrtSSPZgGgLig4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745205594; c=relaxed/simple;
	bh=AB0UjiLFimhWIPIE7AL38uxupufcytixx0bMEqB5wTs=;
	h=To:Subject:From:Message-Id:Date; b=gi4NDh44HSsJR7xwisAlL9Bt+UymKuWS8rzZnuaw2qkK5sXdEgVr3P2wAX3dlZ91Z0YP6IiLQsj4WgeffMDzB/atSU6in2efN91sgo2FTMPeASaAv9c0FlXnfvt1bSqgTtf5U0M/2xrIv8MEyOojNscDXDyDUGJzVV2ROT9fjro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oeieHCdc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oeieHCdc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B082DC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745205593;
	bh=AB0UjiLFimhWIPIE7AL38uxupufcytixx0bMEqB5wTs=;
	h=To:Subject:From:Date:From;
	b=oeieHCdcLTF9rUEiiglEOCm6clq1uhqGe1z/CBDh1uHZwn/+llHPlA6AMV3i+Hynq
	 8cZtQvY9udrsuxQhei6790awbnigy5VkQIZJS156SpFaFpwKSnBzB0ppc0K2fUUOe0
	 7VvCg8BiNvHpUVN42MUDtvn+436Yikj4EnRjPpWJcOH1QoCtdxBBdAJTIpAM6TZcAk
	 fLVFq841EMYYhHyyeAcPl9HHhRR3r7IdrPx0zotI4P4wdh2fH1zPTlY+USWPbKw7l6
	 y51to67/BFJIJZe/JkILbHXt53Om6TKYMTJXrilkvJmUMatJbYmHGYGKlizzJICGgI
	 sb8zh16BFSdBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A99C369C2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174520559361.639.12476724906664845219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 095722b96d3f32323794b28e20eb268d8941fa6dfbcce99ea79d67bb67a405ad
Date: Mon, 21 Apr 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745205593
