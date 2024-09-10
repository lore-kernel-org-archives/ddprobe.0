Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4831529A5
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725935754; cv=none; b=bmUEW86WTsd3l4E5gHXSA9Wcxv1R1JxW5Pv7/U8wuYem8jze6ECEdZFPUblB++64eN/Ol9/olym8EmDWWC0cCTUFPHZtq0+n3r8OzKLL3zdZZhCZ5QEPo5FSV1Qn3cl2ZpmynjbCry4jrn9QzT+AFYkiJaGy887k7zTA+Eqh0lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725935754; c=relaxed/simple;
	bh=IBroti46KdQvrwrEv7t+hKgt5LM0awZ2LVwJ13WkTrs=;
	h=To:Subject:From:Message-Id:Date; b=SuUP6YsyaTOhgca9Mb9YR+beBbHWHe9V0ZQz78W9lMwDZ4LaXpdnVdMz6DNFfhVYZN/swdWDtSgJbMRHN5aeALCw9oo4nnc9s/Ai9HPPvqEEIhVghofJLZv2FsXbKmHv31CJMw+FeXPXqIvSYS2vcdH6WxLbOVKreCuTRqrS5qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S1bSjJ54; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S1bSjJ54"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCE1BC4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725935753;
	bh=IBroti46KdQvrwrEv7t+hKgt5LM0awZ2LVwJ13WkTrs=;
	h=To:Subject:From:Date:From;
	b=S1bSjJ54nt70T/E4q9ohFwGDspYzQ3c21EcDWXtYUvkmQlf8qcEAZwhhrGCJ+LqFI
	 EWoP+NyOjfLZvSgrktHVMA5v6E6CEQmAY9fzNjjo0U9zkRcGvfMwN3wTE1yCaLhjUQ
	 0dz0Wb0mzC0p6y0IXt72Ap+JUkRf+oBL/g9MXqfWQLG0X7M1y3gNfF4+b/TW9QjDi5
	 GphJLBWU6xKs18xuU4m0uTDIgZaT97RleDs+zO3fjZyVmsz5OHzyk5Omfr+W1K++NM
	 x5XCWk0fJbYklkzVzApA/30PEnsdVotD2mb9ayHNrjGxukbr31nX/jm68yAqMrCRPt
	 BQsAN8RAx58Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6CE2EDE994
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172593575364.21449.2964596777713118669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b79974e60b7c858af6cb34961c27804bfc5f15a3b954b9949763e5826659a85e
Date: Tue, 10 Sep 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725935753
