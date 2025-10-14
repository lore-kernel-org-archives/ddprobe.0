Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3384B2FD1A1
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760442594; cv=none; b=rDMyBTLu/zf2/Q0w7HfJ9EQAogWjLFtP83JBU0AtGKlDv7jNyGYwqs4PrO/CImBE2+m1jkFKzhAtlrWdjxrLowvKUfKneR9bZncHR75CR2l6YFjOw625g/DHs2zWwWnBrxVN4D0bObYXzeFg7kJEyhVfHtYUXgERm1ojoO1Mbd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760442594; c=relaxed/simple;
	bh=mttLRMMNU7p4t58mPXBpUJ67vTM2b8zjSUzPvGNY/io=;
	h=To:Subject:From:Message-Id:Date; b=U2JTh5x2Un8i5zRGWe7CIxxQwjP5q3arla5oYnVjv46Rkdv5SuxminTDwjKMlEBcpWU2lJO6h1TQxGTj+gkK4Hgi1nMus4xewncs62pEUEuQWqve6DL4Ef0XijIYCt1N1yC5iMsm5nCeFDekhn1rR0yJVH35Iv9ehqb4ZEZiyDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VpHpnsfP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VpHpnsfP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F23C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760442593;
	bh=mttLRMMNU7p4t58mPXBpUJ67vTM2b8zjSUzPvGNY/io=;
	h=To:Subject:From:Date:From;
	b=VpHpnsfP9DM2fXGL7GHrDvId0qLBr31iXOZU3l2Y0iEuHi/OAboifpGpECFNA7GON
	 n47MS5jfIx4ldQIJf+F2ZvOEXdCrhXhLsxA2s6hoN0m+Ql1NLjTaZGuwL3AjNEhNv9
	 iQuDWcCcoBsOVym2IonYzreMOVrbKfi+DOek0poLnyqmE78cMbrJmkw30JrGq26ebE
	 6qkz98Z2opxod9+SFTxGn5S+IFo+DxTcpwl6SUK9loDReol/jwCnczzmgsX/NdLNVg
	 6MXw6gYNfRtkLf4KbxuAKHeQD5P11vBCzUdqrcj2QT0t7XNhccqMjf9uDzZF4lG2Ji
	 ZISs5Da8I3HHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE06CCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176044259357.27398.9141515148353364845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9742a02133d30adfce21b49c8acd3e2217aad4ad1a0f04465146ffdeee0fe26a
Date: Tue, 14 Oct 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760442593
