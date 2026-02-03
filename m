Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 050EC3C1976
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770135234; cv=none; b=NZsl1B8k47e9QrafU6mV848/wfXNPpGfK24ltdSPzvflM+xSOywzxhTRpvXVU4E2eZLat1PLQqNeVFgUxuchrBika8KMYKKh0w6oyCGUEBcxEa7B4t1OkBX/WfoyQRaUnif8mJSvMflKUe3Ewc5zLScSBid5hH2QdwWnUKtQGHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770135234; c=relaxed/simple;
	bh=j0K8OnEeesQ4UTrjhpZOnKCTbvH60umZUfC8WHuazPc=;
	h=To:Subject:From:Message-Id:Date; b=KUn4U5pViH/W2k2o/BYknMj11YfBGAP//ZNRT921GKOnyDzZa/6cetVUsL9l+6xRwvEyVF4grvV9HqUI9KvvrLfrosDjcwuJnLzqiQKrz9/VlTavLUx3OkZazhV1GoUQIeXIVUaXgjpTgjg2LU9AASrzquGhvhxHkbxkDVRn1Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNuB9Ro/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNuB9Ro/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33C0C16AAE
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770135233;
	bh=j0K8OnEeesQ4UTrjhpZOnKCTbvH60umZUfC8WHuazPc=;
	h=To:Subject:From:Date:From;
	b=qNuB9Ro/vi5TxLwkUHZWvPvQr22tdDK6GTNO8zdMysysWxxl21RyzsjZuf5fOvu7Y
	 FCwiFHihk4UBsSDk19E34fIw86+Af88NFrnhHXvQKMaJZ8rq+4b2mCa+z+Ktj/oGcf
	 XGYpo2ShyD9b7C1o+Ce8nbm4LAsYD2QtNXk0zarEDQ5L29zyDdURr61jMsXFmseXvj
	 MKaMA31yJ3G72COoJFz3FjekOghuCbob14qs2z9Bznw/3XIghxY4LEVfa0Tezq7Jj0
	 Hva2zueiVx2+63ZRey4CsxmvPipTHhD4yRvMc/+o4CexipES/P4832JYCmFGNbbIOx
	 V8XoNnO9+KT+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EA2E87846
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177013523359.9027.690851241016157496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10b73ab3895f7626a74cef5328bc9fc8872ef0d27f0ee39759732bf5f2c95f86
Date: Tue, 03 Feb 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770135233
