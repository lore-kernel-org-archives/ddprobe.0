Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2358339FCCA
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 19:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780427674; cv=none; b=XXBuLRWzJezYrClw2VijCnrFSntxIdHuph7125Z7d4jggwPQP8iBAhCqOlcoCheAs1W/esxkzJph8y71K7zaYQLRFKr49ze/Of9GuFkdXHdI5ffBkG35HQ+5gtv06SXf6LZovjXjzQJvbiILpPByMTQ6J6b0Je5FNMUiF/i2joA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780427674; c=relaxed/simple;
	bh=Z0Xhws3/3RVynEm5qqFl4K7o1itKLgUZb0tAMSLHbOo=;
	h=To:Subject:From:Message-Id:Date; b=C+PwtafbKHf+GJhEt9LKFs33fOW3I1hAAxT0gb9j5yCkZpfhMCMFYAdUwF0XZ0lJKWr25hK9GI6s2aUsPuxKVgKVc4OKltfSerPk4KPxRXPMIIWgJDnlcl23ll81mXU2cv1uEAfbFG/cRNhJKcb5GagfdsBLTXF56+PyzWLtqGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rj4KKhK3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rj4KKhK3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B70C2BCC4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 19:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780427673;
	bh=Z0Xhws3/3RVynEm5qqFl4K7o1itKLgUZb0tAMSLHbOo=;
	h=To:Subject:From:Date:From;
	b=rj4KKhK3iCQ10ymWPxU3qKoCWBpInkRRMlN4Ba79ueVkf7ahOXwR0QxTX5voqgcaI
	 ecL3X4fH81EzZ/deH7mCLDkFM5b1xOdnB4U/JYHHwHhpOMZfOrYOSr8/o+0dKrl0v3
	 yZkpZMV1RTd8/CYFUcVXnJuhYuStO/vuglQJn3qCez9c2kJ19A1w0mmP6O8w3BUsYZ
	 YFJyeyHff54L3IhFUB11my627jsta1M3oZWCZmlPTIbXPlFd94hJy/g4ng6/RWBdzt
	 P4MeUqLEHICGGqtCqJ1Z2JoSjFA4bV3nbEhE/w59/OLth1xm8xS4zDTP//ZpoGNVN4
	 TumZzsn5l4Rfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC09CD6E5D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 19:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178042767369.5390.17321456869892095742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94b9be0768332d30c3775d6c173e8e6c241f5ef7bf098cac0211402975056b41
Date: Tue, 02 Jun 2026 19:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780427673
