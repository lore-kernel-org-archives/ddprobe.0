Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C06B43E8C6C
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773759293; cv=none; b=WE5HdOinEr+rpYCQoH3vAPSz3KpG1p/uijliWntRr7n9jKjn4lbVtNq8gMVpTf+totkgPM3jPmJ94MYVqy9J114cj8bvunFCTCLRWhOvIm9cTKiQ1N6OtZ/AwOdcrLBqSezOoDH19rlQmfMuN3YvwZf5S3oI3ix3DoyeiQqgMAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773759293; c=relaxed/simple;
	bh=W7DpX9C4zNkE/31phuJXMihbCHrtE3qxVFkIUyrcVPg=;
	h=To:Subject:From:Message-Id:Date; b=S/NnlSZd2D+Kf2sN6OcDB/KcIi01f1sjQmhG8OXlduyC3OeYeFrKA+dyaGrfBQqrtjMcY5J/QNcC4HZd1mDRglINVWYTL/bEbl8klOqpcdf+8nsLYI4rAqOzmD+kCEeauiogZBSueCu8Ee+GYBU5Z1krgs/yNwlgiUXUZtLZk5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U1ECwdjh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U1ECwdjh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A1FDC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773759293;
	bh=W7DpX9C4zNkE/31phuJXMihbCHrtE3qxVFkIUyrcVPg=;
	h=To:Subject:From:Date:From;
	b=U1ECwdjhXwLndMCTY0UodGSMmsEBGlDuc7Q3xRdhRqkayQeNTKt5WoAUMRZYmohLo
	 +xv4J/uefFukQ82mwXETwdChk4uJJUyykq5GLkguxkpVyaMRpIQ7A54Un0kKwXeQBG
	 z1SVt6PLFa4OvPodsvdgt7vhrFQ9EEk2q9qxugt25tUdGF9W7DdmXd4R2wvAfGkBRK
	 qbkE3Aq6o+T/zpVdmU4sYtMHCXHEpHOf2qejt3w4pDJ3UIHcLEl2QtEHnjdI89ZaLn
	 0zuMBm435bly8VtzzLa2ON4WVOjsBN6S/aem2UAVaepYZ8SJfTnHjvl/JBOG+6XLfk
	 6aYir1/iDQinw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7BFFD708D
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177375929357.26751.16424365469473503063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dd5ba7427320d57ff02a4c4e69eba44a50067d0658bc88ee756e953d4783072
Date: Tue, 17 Mar 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773759293
