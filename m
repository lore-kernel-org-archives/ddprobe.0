Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5476CDDA6
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 09:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716024143; cv=none; b=k3aAqsyMSC1VWNkuDxCXRBD1FOEn6/o7P+h98B0kmWDoQlEwDJbQLPfwamAhawERbUoCN7IGbKwv1ll9JgcYISDH0t7MZRDgChgGKJwdNhKrKRfMb8czvmOoRNAszIqxU2Ie6EALI23OsjXiZymL82B80GqfFr+hMpp4VXnP2Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716024143; c=relaxed/simple;
	bh=YTvMeWc5ZWmacf6CZDtd+vcfwnOIwIN0Bqfp8i7H79o=;
	h=To:Subject:From:Message-Id:Date; b=MmYmCEqcgRluHTu2mFXKLppEpC8wv5gRRzRRu1oIeSsGOkEconhhHGIbZvU0bAz9+8IKHvBmzfWFPs4pKnM9BcQL0O9DZkTBPrsQxz/U5SiTqm3dFKp6Areu0ZXSwUZl8NItnihAsstjQ9CcyhrBcf6c9z0QkQ9zBcaWTSlHm6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HkylP+0i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HkylP+0i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF60EC113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 09:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716024142;
	bh=YTvMeWc5ZWmacf6CZDtd+vcfwnOIwIN0Bqfp8i7H79o=;
	h=To:Subject:From:Date:From;
	b=HkylP+0if+MZAe/eOMdmwmLsng+GxmgR37gh3tAWinlcOinZvVP8fQyELDcDZII6p
	 pmIBVtkhMb8EgOKKbmURma6c+VGJi9AP6UBWrb9/JmyrJKvnEeYupN1n1leLMS/fYp
	 SGtjvY8RAmTVn6Mo8kmFXaaX8gdCl1G0iqXBYhKB88z1tmas5bwIEXrCM4G5chlpq0
	 BQY7XpqU7JG4TV/0kTYErg0lm3/HWoB5eSgbPGPXiTZ5lMeVjx7c+wA+LjSTOWYI2G
	 2H3yEuJrOjJIC7j7wF5VoWJN9gV6GE0snE0/DsMHnHN9NDz/NnnHilrUvq1vPAswg8
	 3hEVKakw/jAKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE2BBC25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 09:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171602414276.2428.16334648389029061138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ff067980e553577c7216f7b1859df6a89373a8d650b1bbbb6738df2cb746cb9
Date: Sat, 18 May 2024 09:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716024142
