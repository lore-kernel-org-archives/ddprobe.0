Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A5031077A
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767048234; cv=none; b=rqfW49sf4pHpFdtZc41FfihSTd9jcQXUh0tqLmipk9GmnBrGROPWt5AsKQXq4q4LLL4lm1O9rUK2l6Zyvwf9383UjxSt7rHhk5pO3j/Oc/kRaMg3pYKjo7Kz4mo80zMNNXXuqt/sxHcdksqjNzEaKcq1EDNqBNl/bmTcO9WuF04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767048234; c=relaxed/simple;
	bh=ckz+9TasTVZVtBrSFlFblbrdPmm62sqUEQzSRzq1T8o=;
	h=To:Subject:From:Message-Id:Date; b=ZRg9yG5eAmJCxEOnBWqU0yT1iYwbzxZDDcx7EOGRnRHKZTyMriIs3KFE2RQQ5FO7fcRbZ5+aBd/8Xu/poGQLB8tfya33Q74qegyPHgI2BkHUknUJNj/sSFSrqArk5qmzMsFF31JU4cmvKApxCyr/PaJBQI5WInEyHZuLUW9NdjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RXV9zlyk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RXV9zlyk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C47C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767048233;
	bh=ckz+9TasTVZVtBrSFlFblbrdPmm62sqUEQzSRzq1T8o=;
	h=To:Subject:From:Date:From;
	b=RXV9zlyk1VyqBla8ln5iX+wRbxLbAjIAQbpqDQEJTqSZNoYhg/kWUVj8zjoPT1s0w
	 R9vSwhMOA8xSsYCZy1YvszFDJDLH5mMwOMzppdHhvLu6n+lRMaf6vkbzkCV0rOANOd
	 AzxLe/FQ8sjueYV+8G6l/lmO1oaWSC5XLY7qArRdsOKuOukA+303emfBL8Tns8WMRz
	 i5N3kxq01KDCCaherokZ0SU3ObSqaHr5EdFocOhED6moB5dHATFYn86YDj+IseWNsF
	 g5Y+NaG2TW3oPtjJB2u1qeHfwvD4qyTnY+PB1VCuroxcllrBNnVELZvWoVpG6YbNmb
	 nUPd+isTSMm+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B01E92FF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176704823358.1579.12947740310111905830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1763920e0cd0099e38e6fc33dc705a68fa70f29f50eab06b4727ee24ceff4fca
Date: Mon, 29 Dec 2025 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767048233
