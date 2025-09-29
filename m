Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3F61E32D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759108194; cv=none; b=DTCpxZVkwu4eDEEgGO+FZGeT/axF3qxYnPyB3sfjRSyB7OKzQluZy4mo4EgZI1K9a5VnA0Acu6nZ9YTJGkjPFSDD1LOCfj+q1+tq1v9XJb6i9BMLWeTATKCXxUd+eX3KFZuXE0/uw4Jnt35FLwopk/rQAFpzfSf9LLv154RGyac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759108194; c=relaxed/simple;
	bh=82ZU0rFVl8JdJLk+RbqzjMfN4R1FflNX4kadaQIe/UY=;
	h=To:Subject:From:Message-Id:Date; b=f1Rjm69zIXrFr+8+ASxhQ1JUx9Z6/1eilZZP+vKkglfgyKwCJ0P1ahwDkJw7MD1GAMRWFAN1AsanqTYVKH6/Q58HlMtOsHbTcnzvqHQCD+hTNVT16OvFPdRvzbNzgfNuz0UzlRdSv/tO2QaNd455e7aox3loZKgS3UbchLW8wXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJEvuG6I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJEvuG6I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAABCC2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759108193;
	bh=82ZU0rFVl8JdJLk+RbqzjMfN4R1FflNX4kadaQIe/UY=;
	h=To:Subject:From:Date:From;
	b=qJEvuG6ImdJdttKNfclJi4p9FPKE7NdyOYSbx+wTqjruNiewsG/jjtOwQHczAThiM
	 swJjfAq9v7ybGVHukzAF4vrbU/7RMFRr416R33SPM77rhdZWh9p0In6AgSXdzXjIoZ
	 1dc+7ez5CDmzKFwkgYG8MCet82rsIumvHISUL6tSX6SE8mDxPTcxJa7ZzO/qRaLh1L
	 30PJqcUL7fMNG2hd90tc3Ufg5H+kcY0bkhzTRbUvPN2vmxT5Zr4cIXozsbGptBAnix
	 FS4qbyaGaR9pNzKAxiy/pWRPCXOXBH4zcApUWrlNMBVi6X9y5ByBi3RMA8EYQ3ukMI
	 DxcxZHyNUUgIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E40CAC5BB
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175910819361.16506.12780388988706028432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3998497c680c58aaf1797c74ce6aa37b15d70897300ada782308a65be3ebe1f
Date: Mon, 29 Sep 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759108193
