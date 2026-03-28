Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0416F30F7F3
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774717494; cv=none; b=uHcdcmv0Ug+zb+MlcVxIZ32uCDDWc8OE7r6o5TZ8VTKrz01xKBgVW9i3O7ePwEzMgI3CCLAJPDrfUBqBX4okGgC9GUdGE+YFFfsszFAnBJhQpQ+HIPHPtfHZpn9h3LLYnZDxPw/k+b83SwXXGy6iyXe/Lb+rRt8Hijdjks6PdRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774717494; c=relaxed/simple;
	bh=qAJ2u0OlHc4ut7kXoJrn2vk0A8DG+M/sFMGDdHRBYK8=;
	h=To:Subject:From:Message-Id:Date; b=Do1cVSwh3wPN8ppAmXM7igg7ueDVf55zrHJNKq2CRWp32r23j8y4Ntai4Y7fgBAu1JUm4F7rfPWeDUZ1xsLavVNX7DIS6O1ul+ShFUk6ke0HMh4/FCpyaDzBYpu+PSwoHjAPu2/aUr8eRxWrZ3u2ue0h1RkeEqNIPPKemKituIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbSaumKl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbSaumKl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D9DC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774717493;
	bh=qAJ2u0OlHc4ut7kXoJrn2vk0A8DG+M/sFMGDdHRBYK8=;
	h=To:Subject:From:Date:From;
	b=qbSaumKlV49JUqcDGOVrSIEWPOHOYNlJ7JChhhxIR9Faw2+TzESY8JPXUgI9wih8d
	 d/E6KqPqsD/7nZ8pT0JSsr0CYf/oJjdC55zCNhroY3FPHU4gqgoroplV/B8rLXgqZn
	 eCfTAgNjBX/J+/YJt6oNLA+TKvjmq/bmbn1cmkfCVx7cbCXPq5FUIYbpphPuTRN9H+
	 AtpRO8Jvc26nSTr4A8mUQx4BmH7ODn1F8HWBljWIuOW5WeHE5hdFBlQNOZ5mDwNJZa
	 2oHrZQ83ofgY4tOZj1TbmKjsqzgq8RNELrICP5rQ5I1sA/tI6g3xjgDJl8uE3SQEik
	 vtwGDGJD7JlFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9053C10F3DEC
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177471749358.25652.11705879407360528903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81106d264e5bed74d8e98422e48d2b518bd0ba700caa7387c92c19468ecd16ec
Date: Sat, 28 Mar 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774717493
