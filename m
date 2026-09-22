Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 566774A0EE2
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790056834; cv=none; b=kEVlLZL244oj+NQSapkOGwMVlCmA5ElYPv4FnHKJwKUCHinMROEil94ZIgITjMMazp3Ces5UyL4o3U5XD4c1hUHY9C0qm9Bcbpwlekp8YaqJ5RCJnmaAGtAVbbOVUG6nXPngXPOaF+LMV16GyBW2OFUkQstlzjlh6kCDcpcJ0MI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790056834; c=relaxed/simple;
	bh=RfFep6e0xp9dm/XrcdPmLtwmA4OXrfCfSurvYNTf14o=;
	h=To:Subject:From:Message-Id:Date; b=JUScSpIEggVWxRoTt2h8TxkjzqSxsGqAv1bOjeAJuP3mXpRUPKP3aAPYsMNHeMllCddbCnoQxf0aM8ETbYTGKZFXc+M2cyR0F/qYaA8jXPeNbrc6N/rmrkPxK309so292TnXDral6p17Y/NYyzPggG4mZlcDm6mmUCgcYK7LA4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKejgtlf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKejgtlf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A04C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790056833;
	bh=RfFep6e0xp9dm/XrcdPmLtwmA4OXrfCfSurvYNTf14o=;
	h=To:Subject:From:Date:From;
	b=PKejgtlf1X+hxwz9B3O+VMP7mXOVlHg1z3Jz4EuXwO4lcuOSje4Dk8iUVBZt1mj9z
	 TNephMfu6+LZP0tsUtrcI0NiwGGtuLmFH3rA3wImN2Nzlh9FXwg47gy0vabwJ6ljRa
	 AwH+Bq/gUjRpY3377T94FAq1PrKyXr3S5Uk/6hwLciTAiIBMAepQXfFYIjXS3+vOZw
	 MwpAzJ7UuijxLY53n3HvwBm8TcaHdC1QStQZdN6/9NbqA4xRh5+R3BxQFaQWFYFVnc
	 CmFP5JzGPmVS55Tidf4guvumkVZy+4CiLNE5BJScjBEm2cwJdXK2g8E/o0TR64giPd
	 4ywQcRcbY482g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE927C982F1
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179005683370.2934.9674780273426771968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5622f46d7197d3cb2be8bd1b550f13156f9a6534f920ecee7c7ae56eea2b7f8
Date: Tue, 22 Sep 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790056833
