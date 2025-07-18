Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C36D1F4E57
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752877794; cv=none; b=H7mI3FOSsYVozqaTIWV98BUossq+GSc5MVUS9TkHIZ+iZ4m2CvPnaez9PiCBhWXn0vcDw2YspzsFp+QkOyJtpqQ8QWIzvtUio//TUqyVlkrOppwQK2pf6vo2XEXYgRMOlDDJ2/FK3MU529eP5S704onkogr0nYaogjPT2Jer7sQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752877794; c=relaxed/simple;
	bh=53ib4pOKis881zNYs225McK6r5zz79pZ95z3TDRIlHo=;
	h=To:Subject:From:Message-Id:Date; b=YHKHp+uk9ZLENTkq1UfGAu+fp+ciJ3tcs98VX3rC32JRHRrQbfDpeR9sFSjohFR+TOBMeQq58sBfs1cqvVxoecLgA9aZUkdt4BdVG6g57C2Fi2xa/jN4mTgsZQrh9SnoYT+rfBmbpzswPY/Zy2yb66a92PCVT+mqki/nRtElfaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uTXnM73J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uTXnM73J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D5EC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752877793;
	bh=53ib4pOKis881zNYs225McK6r5zz79pZ95z3TDRIlHo=;
	h=To:Subject:From:Date:From;
	b=uTXnM73JdtC4sK5JlaTBbFHp57uDb4f3JFWp9DUpivYzCPN6LMaArFu2k8MggtGsw
	 mCrXHJe/GWpY2sWqMnRu+QZLn7pTJyfiu+LWDyyyweIyxkwRnZLyQ8UG6TYQ8moMBs
	 fxf6jdLZgmkDE30OAqc8uqZkF4ub32N6DHPaxrJqloA+S4UXCRJy89HzpebflUa4Eh
	 SN5dN0uR6RcOmC824/kLAl3AxGVmtHjhxlaAt4GnACeFCa7lDXQveDFlAmgyHt6xQo
	 J7S6cDjQB36pZx2MUeUafroCn9+DN4ALH4y9qgDF2aaSPU1ZjbCC11WI8Qr9KVd7wO
	 d/ku4sDYc9fiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9240BC83F34
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175287779358.8492.8712414451113670477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97b365ee9d4eae048bd76ee6c9c57197f48f2167fa142821e647c1adb0cd392b
Date: Fri, 18 Jul 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752877793
