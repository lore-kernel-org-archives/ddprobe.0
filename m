Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB5C199FBA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755959994; cv=none; b=Y2OAxvzU9mRrGR2Aw0gImyfE/tCQJ+bIbm9H6z1Kr9Lcp48yc0HJUiByEVOIJBKPH1EFSsM2kIdLGPEKUZMSVjX1Z3qfd4SxBpuMaWP3Y8R/fsoGto9eeVqVpVlOxcFMYJ8a4I60Av91f30UE9XQGISDLBOKSrGJ6yyAG6glHxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755959994; c=relaxed/simple;
	bh=FrBBE8PKlUJV6RPtWkSy/f1ci2JrP2/65w4nkNZIsqY=;
	h=To:Subject:From:Message-Id:Date; b=rhGqOdkrIzUEa1DOnzyhphcB1e0eGoJylm90EyvXH9DdDJFHSZuUq1SD/OJX8uNVa24zxSayi5WSAkHDcXkvuz0UzgpIVy+7WYxbn2NMCu/J546qddSZMXwWXjhh8Bks95cAsKKi4lOkcLmeRIx5PwfUdf/4mP2rZyNy0FLUwJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGZiuCVc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGZiuCVc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE63C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755959993;
	bh=FrBBE8PKlUJV6RPtWkSy/f1ci2JrP2/65w4nkNZIsqY=;
	h=To:Subject:From:Date:From;
	b=PGZiuCVcqXMDCKxH1B25Hdqt0iOTw1e2qK6ft3/dthvTpT4dcMnttPTdqvvwus51z
	 WtMWmsehlFhbcut5CoTiQ90suuy28CtbHpJavnmUBIMyF8o32YH1GTHvqkotESNL0u
	 /Rp2u/Sz42KimGgc9pk8Jtuwgn5JUS0hqLOgadntlcELCeHn8tZw6kuzEwX3HVceRh
	 OFna2dBH1CkQgSYJO7ustWc/HkVekYUPf1+7BO8Sn1GuvJWE7Lgiq0yntBnnX1Ppne
	 bznYhv7TJkxO8BRVb91wEf6txAS4KgqWgBb/TH5//v1KEkEawzB7IOmgcRkeQVJM+y
	 EYuZLWeZdL8zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2E5CA0EED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175595999357.4164.10021486124458468338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc1a88f0f3eaf877a0a9066ecd4f8687364ff2fac829dd7472513f93e9a0602f
Date: Sat, 23 Aug 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755959993
