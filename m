Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C39B623
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737957954; cv=none; b=JD5G/u8yDbqrIc9WL8VCzfKyeCa4dqwnkVd39RxLimTpg2YXZSO0rdVA/VS3yE0Um5V/LkSaVJ2S0pkMkXRuxi8FRPJTpVm8eYtTJQMy5o4JBl2ElM+InNWwFPyUmGII8noAeqWGefnvHqYgkh8yU96DWn5fYRTpnFlAZhMUBko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737957954; c=relaxed/simple;
	bh=hRHD8OINzE5iNWJzwbp7uJ5dDpjpu2f99Dl3Rq7qDmI=;
	h=To:Subject:From:Message-Id:Date; b=gNkvM3P3eCy7quy6dnh9eQNbEQ9iay/swolMjJ/SYcQOtCcL+WkfH8gyDQ2GNVBbBZI0QRdBcc60cu2R5ufWqT5szTgMg4mkekEb3fJDjkciX3Uhgf5xO1QE7SV/jtK4460auLFmARnHWb8X76dM/PXqeXFkqLBdKdrHWLKF4QE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NyIClv8L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NyIClv8L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC457C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737957953;
	bh=hRHD8OINzE5iNWJzwbp7uJ5dDpjpu2f99Dl3Rq7qDmI=;
	h=To:Subject:From:Date:From;
	b=NyIClv8LNX1uZfutf1Yl/YT3z80N6OuMIKm0w9hM0A4RoNIc96xNGJps9nTNAGZBB
	 YWWYoq3yctpOsEyrDwWVQXvPekl9TXTcqUOpx3dDYD7aMd2fFEBGBEtuTgrX3kjacW
	 UPDcYCwzQdHrG95DnkmCpdZanGi9P+yshbYH0qUjOdMvhJMyYQNKuQRDu4EyVqArGC
	 7HJckvIxp1XqDCHtZ2PCf7EfMUt6zr8StGMV83tEUJvRba7bqfgwHECFSCHqcKUv0Q
	 uDLUpmSIbKPJC8Kz7Zke1dqEuJMltZQBwK1GQDRJ2cKCqaBdH2NcZP7+ACZSLcRPTR
	 MyXwGhuG0o0AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CBEC0218C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173795795358.17942.1772133637355157763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81eeb98a37eeab6448543702f10d81fb0315870706b1fc25dbf4670ebca83580
Date: Mon, 27 Jan 2025 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737957953
