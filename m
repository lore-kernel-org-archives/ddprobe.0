Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3FEEEBA
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748240394; cv=none; b=g5Le0Z2R3RAtBga8kpNwI5pEh0Ip1mBu/nq/NZvY3zrckahowuGWzY3dJIxL/ph1DrAvnvewZGEtFO0U3woyIQUyoi51Ia03neflA8ftb5dycaLiiJXw/VR1gpJS0MguY+pOopXguh3Yun9q5Osiu3Ruzv0VfqjsysMtsHyyIbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748240394; c=relaxed/simple;
	bh=A13ljIU1MhiMl+wFFMVKxYLALYN5KwJI0tqpJNpQ0e4=;
	h=To:Subject:From:Message-Id:Date; b=AYAoYuWgjtyTGwwoP4DZrodhIl3pJloyNkrdPvfv8OhvqELz1ExwAKjd1l/Y4MzRlubtxL3aDLI0fFHnkiyWu+B8NGTj6TPJ+S+LVhSWGsjRzCplivd8/z4sUaeYMzeFrrYTkW8Cp4kXGq1Ebcntj2V4ZaM0bFss6VSHql/frpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sUhCOUXz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUhCOUXz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D1FC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748240393;
	bh=A13ljIU1MhiMl+wFFMVKxYLALYN5KwJI0tqpJNpQ0e4=;
	h=To:Subject:From:Date:From;
	b=sUhCOUXzGqArI39XasXk8vqm0IIE2D6G0cNvMhDNh4l4LoPu/LM+/K1oYhi5s/gEA
	 7waXqnykDC4yQ75XnK7jYuhCUgBxbzilKzD2fTkZB+r4MporkWEyAQzJjnYJk+wphE
	 WjzDlQK5Qn4SYqqEFd7mtciLm935Ct0o6/vhWtfG2jeDnI2rw71YLGhlnRk6HvYHFL
	 ZP21oiImXbo2+Wp/TV3J0FwnjJWDvglG2o45bx4/mCQ2z/VlIo//hQNfe19D36kDoo
	 fH4H61X7hxmLfH5nBKu7sWbBtQyjSFCkus5OiBbMPSeHXlCgJxMjtJ2cpbcJNmk4Np
	 iEWFM7auzriBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9669EC54FC6
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174824039358.21026.10381838359528869498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d47aedf199266e6fe40542734480922492130e42a29593d845ba2ec3e08a4ac8
Date: Mon, 26 May 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748240393
