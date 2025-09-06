Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B6121ABD5
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757140194; cv=none; b=Xv8T/50fbJ+xcQfCGH8EKYTAy/qFl9VKHQurF/sUYWvDqOTSYgf2uwrfa7CYo5W28SW5+zq2Uwu8OuB4LM0gjx8GIoHTgg5YVTF9dQiy90EIZ9DLXeE5Rn4RT9bEWvhg17/2GzmQFhmttQebf/+lXECje28ZJSgw/Bz0ySM7Dso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757140194; c=relaxed/simple;
	bh=iZhIsCGqPlzo44FplfxlpYqqUpaHlDMzbsAL1/tg+Rs=;
	h=To:Subject:From:Message-Id:Date; b=hSCBhwU5O3SGhVVqJb3J5hnMj62x6fPALMjD8/QtmjTxRXYWxj/GpVFr6Inq4O1hYVaGSquVbqe9Qy/oJbDrBxsj4Xj5MDz84GLBuNKOLHScIxuEp4IwrLNtxkVW43GjkPyo4C1f/N3x+wpvUlnx08Cpif9plKEBL/1leBvW0hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q11hfz6G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q11hfz6G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9335C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757140193;
	bh=iZhIsCGqPlzo44FplfxlpYqqUpaHlDMzbsAL1/tg+Rs=;
	h=To:Subject:From:Date:From;
	b=q11hfz6GpOvtqxAlhXADHSA63rTUWTsGQBKi1g3mn1jbXZCa9plGIPQdzKX7rNiID
	 wmouqkDbolVk72+CtewvR7g5KxBQXXWnsrwWl4KmdboErvsVIgrV0Obug6yxX/BGRj
	 TQgIdHSOIAkEI5P6YfzYmygCQgQwS0MxuCsVIrMUSfEyoi3wGGE2cKDAAILA21E3Wu
	 ayjKtV6et9VEkMaqyXCq55BnvjIX0K1N9utLkbKOgbUrGB1OjU48CceGThwiLh/yxr
	 ISkJZ+Nf+JgOnWAuwBFqtUp/7J9YoYb81JHvF1uqZdHCl3dg66pRAJUmXIaISuPHoo
	 5XC3fX8wVDeuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90583CA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175714019358.28028.16224589303412118535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e5716df110cb7023910112948568a167d90cfb4086c30ed9974492d07642ea7
Date: Sat, 06 Sep 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757140193
