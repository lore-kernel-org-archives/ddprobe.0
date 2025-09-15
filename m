Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B76A1DE4DC
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757949594; cv=none; b=Fi2YQIhyG6vn6v3Llbp766Wswb3KaBF0yPJe5dpdwwPEonedjqAx0YqNlfdN4Mc//xNMgO4/v1VFyHdrRbYFsp1akhJrg9zE/FM7FAYwK+GtDx6PLF756I6jgJSlB4TIDUlWXjnMy1JxWqZ1gvD0Dq1OxCNad1EibPgk3+EgxHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757949594; c=relaxed/simple;
	bh=5WrgjV7qoXqUkub+h5eUXrxzrWCD0eAxHkcYQaBNWQQ=;
	h=To:Subject:From:Message-Id:Date; b=LW2Y+dQDaQJtwtarDP8wAeSYUU6A7Bbwn1CwEeYhWcyrZerEh299vVHIZeT8/V94L8Umz4sg/euvtyMym8amKVy1nBv1S5il9/Mt7JGuJ2qk80it1koCoXrLOpzRg1MgrUvaj3th3w5XJkBCZ37nj/jSQnZbphRIsRk8r6+xiwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vlh5Lju7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vlh5Lju7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7E9C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757949593;
	bh=5WrgjV7qoXqUkub+h5eUXrxzrWCD0eAxHkcYQaBNWQQ=;
	h=To:Subject:From:Date:From;
	b=Vlh5Lju7eh/yppf4vAHNhCLxu8H8hL653GTRTUkEiK5VM65RUeL0ZzKRjptjzb8Hx
	 fUNpPFpWmUPqj/EWD25XRo8O/6XUZd/+qF0OvDYmRyodIcfuMXvclnZJWTAJX63RXx
	 Kf+8qrbJ9vQmBaP253ySiImE0b+YjCT6zPZ5UBhFcKgoGPAHV5v5/VZo/qpE5EM0FG
	 wO/neF415poUv97wPx26hAfDj7KUEdkx6snMCNffCHD5d3IBpT+7jCQIh2I+l7tu7G
	 3lkr3MyU/gEQORd0ch632bQ1tLKmDi449U45UitJYJ91GPdYfZ3ufrtpuwBT97Um/L
	 8oRQH89CWUdaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCEACAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175794959358.16820.6777350807494196322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e2b74b7d6aa38504c39840bdcff3ffb87338bfae94d61cae73afd93435d1890
Date: Mon, 15 Sep 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757949593
