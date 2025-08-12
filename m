Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E65E1F4188
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754968194; cv=none; b=TgsdQOM5YfA4lhvohtx/DgNEwmedJmWQPWo3hS3plLSOdCjy4VOgKmIIYwLww3Xv9Kr/iNLQX4m96qrVudzdKDNSaUt5Nidh2oHX9OjEGoGbWkFQmizndzSk3JjX2bO518DTbbZtcmm15qJvt3MtIm1ECQneg7yvqaD17V9pTHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754968194; c=relaxed/simple;
	bh=TWwWiiEERqZq4YSAeMC/HU/9a/MYVzEQR+IHTjbWwxw=;
	h=To:Subject:From:Message-Id:Date; b=g7lfcjV3ZC5rv+hqaCmK7/ZEaFtQ4NZ/b4M2+f/CBM40wr1sGdNqq6pay7rh5hhhiZ1O4M4cWrLdQegvPVrQsO+pt6pJUITBmP+AXGY8jeuO+EWH3HEMBSmjR4zE3j5sJf5gCK62JqGK3/FNa/wThsTd7XquaBdBqFgComaHfoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tzPajFNa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tzPajFNa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 997C6C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754968193;
	bh=TWwWiiEERqZq4YSAeMC/HU/9a/MYVzEQR+IHTjbWwxw=;
	h=To:Subject:From:Date:From;
	b=tzPajFNa7CdK0u5L5Jey/W5qozI7FOw03UAQXkWFsKyp3peC1ka47tfte+ka7WOf4
	 5SjcTqGmlH5+DDqs1lNDeWMem3f9pPTYZt8G9dj2IRekSFbKv64d5NiEH0Qhs03Wrd
	 GOyebVOxm+OqiXjv4SRPKcVlC32n5ez8UbRGlFVe7DnBOMnRcgLa8vIIpp0aG5rSlO
	 skjjH3hBKxv53fAWnY3Hhnxq5ce5VwE/5WFlkw0v94SGCT+2+9/6rDQC+9OqFTnRiJ
	 q64s5W2mk4YHy8CNePejMLlmoJkjguErrekaBM7Udf0FL4AGcxyp27Au0Kbm0ib6aw
	 DA5QXY3e8+8EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDBECA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175496819357.11298.8842340086036712995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ad8c80341926e2c5b8335eacb76fa7770003b08ca04c3065eb90e34eff2c95a
Date: Tue, 12 Aug 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754968193
