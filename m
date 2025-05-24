Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408D87E1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748059194; cv=none; b=qfSgu0REFh0HiOYK15bKjtHQgqmeNnjYvkV69N8tnxnCU+6qRgGekceaf0xn/HGHERMtlqnSKJWPbMltpytnkk+GL3PBUsNweXLw95NssTUn6ASbRzcpjEDk4KQ5Cm8f1hkmGzrXtor4XOdGATZJ144kb+N5lHlGkFrAZMuwx/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748059194; c=relaxed/simple;
	bh=tymMCe+YIhxKx6zp/8eRF07HsLp9xeM+PYpErkt15sk=;
	h=To:Subject:From:Message-Id:Date; b=maE56dBHcKkBSZLKZJFDL4B5cZuloVPSGekIq58ODggOExKZe87BbHaoJiqbjGUMKy2iK7wCtlUylkaI7ysI8m4gIAxfxu8OiKHL2d7wfZKuccZngEm0+VvOV3q+qWihENy7Vj0weeB0K7Ik25g1zJL35OQZgH9qmCF5PbSpy8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g99pDkDx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g99pDkDx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A623AC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748059193;
	bh=tymMCe+YIhxKx6zp/8eRF07HsLp9xeM+PYpErkt15sk=;
	h=To:Subject:From:Date:From;
	b=g99pDkDxGkMokeHkskvnKziD0e26gfK42C37WpoqzRbVnvNumCz0NYClt6KvS/nT3
	 7X4gwWTbwhj91M9YjaUbu4FoHK/GlyQLQefRgJLwiRRFa0HJYk0BWv7IgXKcV+q4cC
	 lCuTQqcRsETZcAL3mzM3NvTZ0TeD6Hez2EtCG9VVPdg/ksXxBDGeam3bZ79B4L94Xi
	 kSkiZ3Ugogx7Wn7YgTG5aIMKtlhurH6TsceaxEnNNawASd1u+Xe8fzIUTRkZxAHiay
	 TTr6LKAVUgx8HEDySNNM6EKtbce2Kc23+OO6ZgbUF7CYDwdu6MjbsBCOQRaBhaJBxl
	 jxift4XoX0Z4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DBBC54E71
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174805919357.9353.1817521203782128384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27018838d06b7eff3696c10f46524f7cd2085e094f8a476796074d52cbe3ea72
Date: Sat, 24 May 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748059193
