Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A337146A86
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 16:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718383703; cv=none; b=lJyx8qgBVg4GF+UyEeH1gZGx3uB+50OFHKWhpm5hV2ofNvrgGIXAeE73Mqnir0c3Mc6FiVEK0IYhhpMeg1Pky+5mL0gZUKij278Ydp7CJdiyFtoDjfFRw1GhyOP1fYF3kvT/sItBmC0uaaR/Skgy74tYtvB7elX+jP9gKV3jkxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718383703; c=relaxed/simple;
	bh=iubnykmg4zQoTRJLpydaBiv3Zph4aasaLIc+1m6T9DM=;
	h=To:Subject:From:Message-Id:Date; b=Q21pOqHMLxOqXII8MpqbCF7Tm2d0iyZT8xzQJ4HW25OOQcj/NgbAHDHfH2l7TpJczKTVDBMbFaNnvTqDNr478AKafhiHwf/o7SZwxD969KJTR5r21klqodcC00/mHlgndm6VVxdKB76E3Awmr1jaze/sC5symUd01swMHmL6M8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p+dPNPPF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p+dPNPPF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1989C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 16:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718383702;
	bh=iubnykmg4zQoTRJLpydaBiv3Zph4aasaLIc+1m6T9DM=;
	h=To:Subject:From:Date:From;
	b=p+dPNPPF3BD0T2Kr20RzqNRzh3He1CRekFzUi81Heftdvzwezgj3b2AFq1TP94Jvb
	 vhGBtTJWdnNn5CORsXvTZZZzUggO6Ms8xyq5WiMC0lhF3s/HAwa1W1rJlorKagKTbW
	 kirxYRozZJFN/DJu8mubcdk62uU/ta0xSeTo/4/h8yzmlM+1kRVcSv29nbcg5DiWWE
	 xFVtpMgutHybddySCz5jmQvSE/3PjwgQzwKxpI/96utN4dUP8f9tnmiqcR1zJ6NeQZ
	 iI6HVvQudy13pEiF/KHJBALsyNMHPBHY3DbFEDhDynQXZRVH4zu2QdLR4yMNglsiHi
	 DtQAelxqo6VhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF35EC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 16:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171838370277.32651.17748197853550193961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ac2ae569926207e840835dd4bd4a078d0df2a46e01b635fa977b4b8550b8368
Date: Fri, 14 Jun 2024 16:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718383702
