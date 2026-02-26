Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207A0224AE0
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772108694; cv=none; b=LxBew/GV3zbSwiHVqjMLZCLy5XljsBJtXoJH6XVQBtf5hIHsfLirI+oYNnl+ITde6uSiUm/9AIVYaBLtXkq7HQPpfZQvsbzRmjBu3bUKFQY83/UrCbeTh5IdA96Vu2KheAR9ovuVWhPjMIL661iXjK+WsPIzbrU/hPHwioxiXYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772108694; c=relaxed/simple;
	bh=chD3md61yD18wfZUHFb1U769laxD0yf8Lpymill4Te8=;
	h=To:Subject:From:Message-Id:Date; b=qnauu82SiXfAilffmJf8GBNmPgM7rLuonkhnudg7v73g65tRYtb6HRpGUXvAvEhWkIGi6WXgdPo0Pq3xnOLCPG/qU6fcnj7ZBuY4+eSezTUQdRcc5OWuwY9Q6yzXTcnfks6yAW6CRlCIiu0oOv+u7xoVHNGYdZ21/80odHfhOlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mfUTXVtg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mfUTXVtg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71EBC19422
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772108693;
	bh=chD3md61yD18wfZUHFb1U769laxD0yf8Lpymill4Te8=;
	h=To:Subject:From:Date:From;
	b=mfUTXVtgv6FjwVcp9VgFNrFzVMxabmAhdnzqm7JFaD6UFTEhEH+jnbP6Km5fa/eLq
	 6qd1B2TByuRCnW4UpK7KEgdfjj4+rPVVLUOJ7oIJqUJmaWhcdxuk1BEkVjaQhI0y0f
	 g9mWdtoO+QskmkreqItXYgDI8fnBkJLVmv89r2YAdkS/9nOo6Lm3WhZdJ01kw14bDk
	 KaQXQdWhKntuTknALSpBwAysFi/kvUopEU1YZ4Y6/RcPZNgdRCXEdnpTeF0yEWbPGX
	 cxCgd+4LpkLqkZF0TZcyz07jonZTK8GYP0v259NnjMMzmeRcPE9g7R1GZlNQaIQdK6
	 V9JRNNoL5ZGWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962A0FCE064
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177210869360.12474.3131576659830327687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4db5591eff07097b81c5ac9c4eb5968b3d028eec9a02abb126b311d0a0dbae86
Date: Thu, 26 Feb 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772108693
