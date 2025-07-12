Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26023B665
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752325194; cv=none; b=Gh0WRijrld3ENo0mf9cprS8rhMeWXDezTBSTpJH8qjwjSxAnrY3tKTwJjTtSuiyOsT8qpyRaugZ7D+OYLG9oTEBzIe04EfG8K69VKg6a3dzxklwDaPSOYBm5Sapyop3PZqXOvG0c7MasXkw3HHpobRoDI4vMYxIB8mD637uWrTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752325194; c=relaxed/simple;
	bh=6ZhTPQibHloE6XTapn7nlaEA+4Ndq+fUB7Tqk2EHx5Y=;
	h=To:Subject:From:Message-Id:Date; b=odSAtRFMhnmOHygLo5EPCUSR7k03J6Go8xJgwAeWsivAoHumuu0ASPhuAXHpmmN73d9foqpaidFDgvkttf5TuebZ65fUnXGA5QXIEr7mInPsf5As+QibAB2F0soy7ldc9ivg0F53qmn+4C7bGEmZyX3Yy+8rh6o6HLXUPAg0QPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p4rZKFuz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p4rZKFuz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D547C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752325193;
	bh=6ZhTPQibHloE6XTapn7nlaEA+4Ndq+fUB7Tqk2EHx5Y=;
	h=To:Subject:From:Date:From;
	b=p4rZKFuzqTMgfYzZV38wuOHu68NZRpzX5ENGls+aL8rV1SBmNqX+nSckJNu5PKYHu
	 VWuA+yiZd8Qh4OQZyaICMU9JvQ2NDf7pngSjvcyXcOj6UwyhPY7jflYh/jbLUYng2p
	 nKe64lCeBiceFmsphegLPUVAY0lJrOuxHf6iD+WNmPMB2SDfawtC3ywl7sDD0Z2fah
	 qXpPtLG++sUZtRBQdy+ttGDFbUYJBGvww0qA11l+CMn+kpBW2LlwX52a2X6Ik1kvni
	 HTBcLirgmEwUNNlT+8J+pwRs0TqhBCuYAVpR8U7nHVUP3Yxv5W8AAOlBimYU2nZSC/
	 h60NFe3MOeH9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB83C83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175232519357.25974.5377303588992600775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e5bf022a32beafe6a0d511f33eb7b400163821ace256bb97f99333e0df2d50c
Date: Sat, 12 Jul 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752325193
