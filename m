Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6785183CD6
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 22:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716501803; cv=none; b=NH6iPY3B41AqY9iIoF8utlJWhd+4R9ROre63czN6M7Hyea5qVuiooi+HDgZ8y7HxNGaJ08dyQW0Tmqn+l8I7SiDO1Vn5/jhLfFGrxjPcOucfGy6rfcMGMPQo+h9linf4i1/M6nSqFOmrrQpI7EItnRDrmV/oM9o8kqdnTlaSvkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716501803; c=relaxed/simple;
	bh=D4NR7KBYj/5OrsX2rvDoCRkGWJ/2hXFOmTreBnLZlHg=;
	h=To:Subject:From:Message-Id:Date; b=WyhoZQwOI4Tz0L/HRt7ctTfQK+Vq3/1MhtjgCBvwFyih7udxvd+u2m2zMuTlmHLZMGA09u2cgnIFrwLftFF+QjLJlzD/z2QJFzvR9UoaTCWqZAZePv1G0ixzKUOF90Lu6EbaEESwOjK+3dIN4pwbmSU6qP+OU7zlusULTZL/vmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QHBGQcVM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QHBGQcVM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB67CC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 22:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716501803;
	bh=D4NR7KBYj/5OrsX2rvDoCRkGWJ/2hXFOmTreBnLZlHg=;
	h=To:Subject:From:Date:From;
	b=QHBGQcVMFmIzem4Gss0Qt2SOeumv6nisgs2ObSIXJ8fAGwVyXJn1Dbe5NyWXplRu7
	 Xq+s/xtvVAvegbc8ZH+anjE4cIsW6yuhLpvrDRQGI2hgLPq6fDXgvGT4EqDc71Kdol
	 k0RfnNIF4Wm+hEThLYZiaZsYdv/5B1Y85WZwye9TkUxSPme/7gB9SaPPSdhq0WCN2Y
	 /3KD+uiFLJOUE3Y7KfzzfP31qozKMhkNedRyr6+MXepdlgdbiVUCffcfHxdG0aGAUF
	 sb8TUmk4dYc61hOX7nrpkHktcfiK8jMmlVdMOext+yj75L+6jhJ4wzDmBAJis+1X7d
	 YCo3B1shhqxVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6778C25B79
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 22:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171650180283.5182.12020179868407923895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8479d315e84929132d44fee7b380ef99e9274f60651d34347f1605a16b26754d
Date: Thu, 23 May 2024 22:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716501802
