Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BB234107D
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 17:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776014254; cv=none; b=lRoVFmadgwUuab45mZCkFOHOm5H4ocnNkV6lVCDZ+F+/P/PQ9WjmhrPJN2PclFNMSlim4ipHpZazXqlWp7eejVtEidSBHogqM/8LK3bUB7XG6u8qITGYASrYDnA6fn2G8pBapwf+gXpyCqbGaZHOmDq3k912CTpWe9a+NwyrwC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776014254; c=relaxed/simple;
	bh=ZhsIqV1/q/F/JQxg/50K1aGiMv57mIcq6Bq5LH5Qjzk=;
	h=To:Subject:From:Message-Id:Date; b=Jcc/dcWbxTrGqL9PFdHVZqD2mcJeBkkhKAivAfUUz054VKznPXwqIS72yOpyk20nkQ59IiIxXgEa7UxngyfQsPvMIIX8XMJF2bvDK3LW6S4bBpH23jADGqPjriV6+TTt+Bog2lbGHjbWEYT+PiRFobSy9rsSdQo7odbiiX3Y/n8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BIR/9/Tx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BIR/9/Tx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C15FCC19425
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 17:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776014253;
	bh=ZhsIqV1/q/F/JQxg/50K1aGiMv57mIcq6Bq5LH5Qjzk=;
	h=To:Subject:From:Date:From;
	b=BIR/9/Txk+gvp7G1FBgk99d/KM0OPsVqCdnoSp4TKTaTjGG38cHv9NfHSg2ndTbCQ
	 68rSixLHXysI4EI5mKn25MBJrKids34jmTdDJWOGKf8vI1zJbMJkCCnOAQnaFUFv4U
	 W9hPqZgwveUNV12XJ/6M6zVYwltX7dJVFRMWZu8t6bLwri3kapRZ7q0+B1j9tl55/Z
	 7g0nk3Ep84Iuf7qWhuFhcTJraq4Uc9X684CFbUOrDwBjYChtdzk4KgPjYWDkoHnm5y
	 8YtaP4hw8akKhzgtrnmcJXWGNPKA3DoIg3qABZi2fwkpN0mH1cHKDxAld2qUmY7zVd
	 k0ETokWL68drQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC84E937EE
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 17:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177601425368.22844.8035901879220079511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0183934125cd25b70778b8ffd4358bcf0b85c56e458710f24a5d559f784e6c68
Date: Sun, 12 Apr 2026 17:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776014253
