Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D053B8D47
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 19:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765566174; cv=none; b=Sqf3VY+pJXSfL1DJzycLidD6DsRP2yZsHxgTuibI6iL5gj4v/AXKD1/CXvnzFW/eDnmq/0Laf99Zi/0XRckD/9b1aXEYq8hSeBDYRxP6K+UsxkE2MT49FVUggoUBYYzwO3vQrfh7YVW5AsfSg6cLuB17V9anpDQPgmVsVXN1/kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765566174; c=relaxed/simple;
	bh=tDK5Rp6r6TJVwlBlJnrSemXEw7jubPocuYG1W363rag=;
	h=To:Subject:From:Message-Id:Date; b=I7hUnBa112DyXM/2STc6rLZSjtQDlv46PIvfVs5BUVCZfw7V6QXyS+vBEKGZP2McghzXT4RBirxYDSnuNhILbsfjWyRsjrVfbGB/leEkbEOYkkhRK+X/f3QTjTYhGYninb5+laffEQbNCRGVrlCkju6zduF1hOWVzZAI7k3LJZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZpNGEOi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZpNGEOi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD2EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 19:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765566173;
	bh=tDK5Rp6r6TJVwlBlJnrSemXEw7jubPocuYG1W363rag=;
	h=To:Subject:From:Date:From;
	b=jZpNGEOiHyLEjylBcp4Kt1cFG2Rg8JNHaPhWFsdkQDWfxUIA9Z4fIjNyAsTn3Rarb
	 cVD3GTzc8JCi5eCc+vcgkhSdNZfbT+CfHpB1GA7PqRsBTfke4ZzX0kCdfLC3t/xB24
	 Ku4e07q6eYhnDQGko6VKnZI0kY+wO/erSshPbb9eF5vtF/lrCQtIkCSn9UTCICXKGZ
	 FEaTWkni+EmB3Z7l/g5pkgtQcgZD4o3q5UBTrdVpk598aQDIdtC2esq6t13BowviXH
	 25yA1+GdNL19Xa5axQYK12HSK+YCU/ksh30V50ihQsKjxJKnoQF1skc/LpI/ztRvX1
	 DLcIhWCsuAXHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981ACD4921E
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 19:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176556617361.23908.17980448771836886254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ba196609bef691a90a955ed9bd10a6ea7fd02810816ccdf1468b10525abdcf9
Date: Fri, 12 Dec 2025 19:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765566173
