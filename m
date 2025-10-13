Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308C82EB5A9
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760390994; cv=none; b=Lr5bcpobHs/g5mhdo1kAk5HvyxRIskGOLQN/K9weRyVm6GUdoLGPaoyC0mei7hMpqOu2ps6sKPWH6/x3r97QsaXWQyrHcgBLEfIGuZn7MCa5pPRcg2y/4TB3m2tIGP4hcuI3HksOr08EkFeCiiuZADy9lURWR/Ty02crS82WP6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760390994; c=relaxed/simple;
	bh=NNAoCJSG7c4Bno62lMyLk1gGBxia63WyJhmlcTDyFj0=;
	h=To:Subject:From:Message-Id:Date; b=CCLD/8Oz12IBnJXdo52U2HNpt5GqaP59+RpKkTpxziJ7HTJyzGUO2sduvlFwEtp3JgQJNJ87NTwA9QI6l59Y0w0xdYjFeRH38wqS3y/yeDDdUVSKBvcC8qy1K3vQA9SBPmeSnDVRbTksTCbwyYcQGPgNfuqYugYkaYfn6DVpf6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W52OE4MK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W52OE4MK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40C8C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760390993;
	bh=NNAoCJSG7c4Bno62lMyLk1gGBxia63WyJhmlcTDyFj0=;
	h=To:Subject:From:Date:From;
	b=W52OE4MKvHyTQc/jYL3r5GJ6IPt9wLZHJcT6b57RLgfQYACzU/qgGnxIFWhdPc+qr
	 NtW2AAxsoYJFAIP6lOg5M2SwUny0GijU2y8Fo55CzPCPd46ILSl5RE61S1jd5M41XW
	 eY1eZTAsFEYWUV5HZj7+YjmyZpj4NcCZOFvqKHi00QDr8ffLqpnZCERtOaDF6Aqxru
	 ZRg3IHqZhriy+O8dNxw0+Zdh0kUNN9gIEXFepc13Jbr18hy+kqBu6bxeMUE+CNWCO8
	 Mp07OvyJOyKPQmVHq1vUsWiWSsxXsr0Qk77Lt8kjGo61cL0YamUvzn5KAOiUJlq60r
	 rM3FA15BtMsCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D9FCCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176039099358.26034.17017894253043207711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75b5f9d2dab54331fe394a436f6066de53f2c7ac64a1cbecf5d84570eea47f23
Date: Mon, 13 Oct 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760390993
