Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BDE2AD3C
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785631234; cv=none; b=Q2G3lgDVkwlH/B74ScJcJimsUonr/VAQLbe5U18PlP/KguMmndFhaV9jZap6iEWgs5mZ+wJZV//DABlOO2xf+m9oQBqNayex6J10upJDxgIxVYyNXQQ/xB1KeR57j9yJa6EhrSJJFDMa2er0KESq4sXJcncdUlV0N+2lz3SkRn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785631234; c=relaxed/simple;
	bh=TUDjWSPYZWFAcE/CUPHJf8I0qAPlqLJ1mYllv6TNxuY=;
	h=To:Subject:From:Message-Id:Date; b=H4hcZzowGPnyfvBTwlrsEtqRGWdqjjDL8HNRqrw0WNCKE8R+Hqn/DZxyPFK3/IAclKHUurUF6zUmDrFTHv03xdU42+8y+M/An9vx2DJ/YRnylmQ76leh11bXdalLS8LbiSN6A/aZ2ByFW0/bxUeZpDlEVCTMh5lVvEDsi1F8oxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+kj6x7D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+kj6x7D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C67B6C2BCB3
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785631233;
	bh=TUDjWSPYZWFAcE/CUPHJf8I0qAPlqLJ1mYllv6TNxuY=;
	h=To:Subject:From:Date:From;
	b=H+kj6x7DeiH85DOtj1U6Ty0IJI8E6qckW0ll2rexms5HYRqG8QXTtGish9o7TqY2g
	 jVtCfWbLJrq/+tzo1/1N0EtfgGapQSodseNAb0UwCTLG7+LjmRqmNaK6dME8HQg63T
	 6dsn6ZuLXm8aoMAl/UDxdH6h6d0jlozjAiudG734pjHuh29JqNP53KqE7Sw/xnqpnD
	 obEoIA8tk67DbMuyh1qbv7QCKGB4ckl4kHduVmxZP9gBFm9s1FfJBnZqj6fW7+lfZF
	 6q6ua0bHc2BMImBWnx8E6XJiwRzaUNnGzHokPuLogkCxMNDTlO4RVaR1iktP5BvM25
	 5yry7V3Itxm7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBAFC55172
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178563123368.8653.11902145629391899375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 705561f56fadb5f8d328c275cb88c0d73a7b5d7cb2f7a2ee313da0cf92fc0c5f
Date: Sun, 02 Aug 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785631233
