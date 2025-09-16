Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C26258EE0
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757999394; cv=none; b=AV+g14xm0q3k76s32TItejZyLIzysAPBV0xPer0xNXBlc6Obg52x+rU8px7lXVZdSh1tS8hvo2yIsJrlVDCmfDGuMAB0NFuM0RgwKy9pUvIs5os8pqun9W+N9pt2+2zXnTQj+Yf90QhAzphPOcMfzz7SKM6DQ9Oa2zRPpGzdPCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757999394; c=relaxed/simple;
	bh=YTWIVrCCVKjR4qQ9FYTHtJR5lZJo+kc26CpJAgf/g+8=;
	h=To:Subject:From:Message-Id:Date; b=fE3j6h5tXIivt2yfgu1Nl4EHXc5+OaMB4pgbxFzKdlpYzFJEjexqYLYFftkpoIek8vQucP5GsK7R5wTHiIZ6i9Nz+tzc9UYllA3vrgtasYB5IdjCtz0bgqdeVe0apHwioAWst9z8pYfbirQcm/ak4lQW3X0p1bj1/r+srW/NUZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0zQo3rb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0zQo3rb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F04CC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757999393;
	bh=YTWIVrCCVKjR4qQ9FYTHtJR5lZJo+kc26CpJAgf/g+8=;
	h=To:Subject:From:Date:From;
	b=e0zQo3rbHVhvNU60ELxAMBmKgh7QNhAE+mFJ4nMti2y7cT6lZTNQMBiLj5tXxxi/B
	 yK8bTLWCMiDXi//pi5Sp5+EGjcvP5654BFvCpSugKlrAMmaMvy9Mzv3R81ZLXSE6gt
	 Vf0tbf1AX2KsxPDrRPnpYEzfFkmRTUr+Ktlu9Zak+PRvd7DuCwcr9q+zzzwLaqvXxa
	 bkqS9XI86ZZm4vPX0a3E95+xJr89xkH0KEiXpJUwz8StHT3UNJhYExE4QZbGQVUqg7
	 5V1lppXt7pQ4so7ONbLK60dX8KESHCiILZjRT56OR/o11LpBidkeDd3P/49/Kso1tt
	 utoLHIB6nM0Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED52CAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175799939357.6296.1384124016976555560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3457fc4e2a5d53207004f2ac88a42ee4dab4f30ff7a0d30f4a2f4c54bab55ad8
Date: Tue, 16 Sep 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757999393
