Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 624BA1802CA
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 12:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716985463; cv=none; b=Ux6b+XzI8ZjnBnYYQePkWIQ0QjrCodbn77Y8Fr5EIg/zPAQxxtu1sPa3Z4cUohTNOdTN3JJab7Nkph7yw2EcqY4UvhP/JkuSceqNmN5TINkQ/dvt65YEG503gCBAe05xPhqztbg4tOuk13kep6QKAAZuAy/1F771dPrb6J6YVmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716985463; c=relaxed/simple;
	bh=iEh3UdwsEZxyMw5OulsPXhSDV3ZDYuazs8zvmr3qy1w=;
	h=To:Subject:From:Message-Id:Date; b=glc+Qf/u6YZyc0rIqsmH9MopDhDL9chNQb3gUFvoDqHeJoyBVkxqBqndBT+3QtQy4SbTGWBcmP2MHNtPiHo7IsLeXGPDIFa2MoPJeOJXXbQa0rElAPtpfdrmKALJifZkwHXArfsHTMqjUjyGnoZTnjhseIoehTj+lvFVvl/DvfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=glgYIhoc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="glgYIhoc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9953C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 12:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716985462;
	bh=iEh3UdwsEZxyMw5OulsPXhSDV3ZDYuazs8zvmr3qy1w=;
	h=To:Subject:From:Date:From;
	b=glgYIhocbLkLTT1EgGJlJ4y/2Pv10Ddpupp/ifsjFOhLGMr75mhO9BtW/dRmsLh1s
	 YtKGnpRxbVdCB8c5HxzmUJtICrVUxEWuTdqwTHPmzXOJEBTQoMmYNvsq/nUgHjWjRf
	 QLba4oowD4pbNJnfm1YnFPMNz7dNqPFdhR887weIrvKRxoyDs2oARxCSZcX6xyhjvG
	 waDyVI4jV0azv07JQG5jlyCY2/K8RXQfQ2RGXIySlPbjl92ouAdXSo6igW3542Zkys
	 pNwlEXeKUqnD4QKd/EeopvfNV9vGf/6AvlvZAGJQk/LRvL4Ov9BtaYW9MGz+Mvf65J
	 3EZM3zIBTZJ1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C29DBC27C44
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 12:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171698546278.29280.5268653564952184854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a06addd3e5096a746bd8c05f8e4461a62d179b567ede6e8ee1c7a685e91f0e0b
Date: Wed, 29 May 2024 12:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716985462
