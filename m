Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2664A347524
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 12:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776343054; cv=none; b=pBTvL9+N0MEGHJwHnvX4NgpP11x7At/eOis0rLlBdSK0ydFCTsJXVRkBPwpWECa2tfaacPq/pQIiDOXzSkJ666cep5M1SXtjohUGDb56VRh1Lwxk4NhS7I93zC+d8VYkw2Qt5tlJpVU3dkcLR9lB5by0t+B0LH8Ber08QDYCGPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776343054; c=relaxed/simple;
	bh=wTCJcCIbrNh1kMat0aSLpKaCRiBLZi8Qe/uRiOFTdH4=;
	h=To:Subject:From:Message-Id:Date; b=SJFR+1Be0qqrOnlKVTcXr+K8pmy/7fh/KXecnXG8yst77fZsMNvtrKNh1EYXi7JtepCsic5WKq5/q0/xBGtEbufmgNS9ktYqBihKKoiuArGhcovMCc/gQS2fzAOemiDr8qYEpaV9yTHte4JYWMbh2IC0bxJlgiP5k8N7j+5JtGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=udDo0leb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="udDo0leb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBCE4C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776343053;
	bh=wTCJcCIbrNh1kMat0aSLpKaCRiBLZi8Qe/uRiOFTdH4=;
	h=To:Subject:From:Date:From;
	b=udDo0lebi4vDDIKcfFIkf92GzEnI2d2RWGfzzzSh9WL0EXQP4/Uiu/QyJzdDp4pf4
	 5yiMoRUUhQnP5uTfdAoJ1ywrMPSL/ixn90fT1z7RNpHfJ2LKEl1eajmilERmUAEJyG
	 N+aBaHSHfH1KEaZtGtgcUKNIuyCHlHk8YyOJmrFWdIpa8lCXxPf7xU8WYGGjiZLeRa
	 a4CEj3T2n+53cGAgeMdCOqk2tUuyM60PExZX2KJ92jIUcMKxvIP20G/TgvDHK0/1Ms
	 RSsO6tS8UtNF0NELvf8tUigJ93+/TZ9nYmdaBkVFkoGtIPoU0Q+uiLz5uJyUG3px70
	 jqwTtDinNwnOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2BFF8A16D
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 12:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177634305368.2850.12494685235813400855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f546ba6b62b5ac2db335c36240d838cbf2e899e450d0491737310a0e1ffc68f
Date: Thu, 16 Apr 2026 12:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776343053
