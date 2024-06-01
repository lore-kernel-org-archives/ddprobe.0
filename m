Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 665D0225A8
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 20:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717274123; cv=none; b=Q+BQksdcYSTbrKE6yxMYtm4/i8F5OC97OIdWuBa7xw1MADL57/mRE5q83zizpagck5AVCCCngnNf1+e9YEl1K2whyCaFzAnbYpo3RJuFZMMj3F8k3+i4XIsw3cLbzQQ3DcHHVjnuapWOLMa3x9rXYUqJi6TPHrUV1jAzvm9pQ7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717274123; c=relaxed/simple;
	bh=mRgAiuzkDiK1OalrzmmOvxwE+Lv7rAVpKrkLn8dR39g=;
	h=To:Subject:From:Message-Id:Date; b=PAoPe7r9ksV+AW06H4GN9d+yRniJNYY6SsbCKMVKL/e4XgWB0aQ4gSltiW+kB7cIGpfCtSUd5WlhE9ajMCH9NKoAnc3j3y2uIcjrGGtEuvpUkdJQLs3A4dbwHsuo+vM7zlxFnpWmCS3nZunCm4uOW/MHBi4Cpxa/f2ypOObG18o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tKSHg/pk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tKSHg/pk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD90CC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 20:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717274122;
	bh=mRgAiuzkDiK1OalrzmmOvxwE+Lv7rAVpKrkLn8dR39g=;
	h=To:Subject:From:Date:From;
	b=tKSHg/pk4BeHxSqjEoro1LzkXx5nfe7nxJje4y0eSgLhZ1hM0fuD5YjuDsmAgZdu/
	 Rq+rva23V3O0bDz3dFVyfS9tVn45gGNtDYCfGesQgJHTGbLnrAF5M0eJ6u2a5gt7Bn
	 OK+H9aCADUsR8Cr4ZBQxdkeVRs9uSzHxpKQyHvr2JdM6KZjgTkKY0HxBdWXdDpQAll
	 cJuC9VEtXazdeGDY8u9GJEpjYjQuoSCZkjSBwD2VZScdUeu/DXrq2PbF7T5dCb8DyL
	 IFT+oLc8pEdja09YFfiC9AbwuK2ovkD8jWYplGACCi/ytfECFWDS9SIil0XnQdmar2
	 2UTxvpdTC0TLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6033C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 20:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171727412277.4180.15507479948244682181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6e79158dbc19adb45603e89a9716347411d7fb46d01f729ba4b41eb07c92cf9
Date: Sat, 01 Jun 2024 20:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717274122
