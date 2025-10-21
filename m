Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19941256C76
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761073794; cv=none; b=IhQ1uQ5tqRKdEwchoK59NAM9C7+RZIeehMf/E417ceNsN7V0+IjgbvY3niHWzkS0v+ECGmIPqH+O3CqSE+w/0syuDAgKXxdeQMXx9kpxNS1KGI2Q8gAUk7AIIH0uof1/IiXv76wnzBzTsNNFfriLBKgo1Rz+tpKX43X2si9lNm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761073794; c=relaxed/simple;
	bh=Y4XXbYGgZFPiPR9QWpq6Wf6OF5JkBpTzQc8BrLgxtmg=;
	h=To:Subject:From:Message-Id:Date; b=ouzRnXMTJCPOAxeGcSYXR1H+0KMz5s1c3q1EAdwBcsf2MLD8j5EZDIt800SzQHJVPCfjW5gk1Hk5TqyQ3k8dr2l0IYPdCHZAZRyE5TqJHgUfrDtnXk5rv1ZU1W2nXDELXmx4LUkoXSTKIV9QZxOANhLTBr72HR5ATFhXmbnwyDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eoMfuYgW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eoMfuYgW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1328C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761073793;
	bh=Y4XXbYGgZFPiPR9QWpq6Wf6OF5JkBpTzQc8BrLgxtmg=;
	h=To:Subject:From:Date:From;
	b=eoMfuYgWh+SovLQhti6XkKABPCWdsLQ/qMFQunu5kVQxVcBC+C6hw6rrRxkmvLUy/
	 pAxSQB/VfisLB/sg+wHd/glVK5l6FEFr5BHC5Ygs4B/QnD1cqMb9Zo598QWRAY7U/2
	 BPXEjfK0kipxleaCv9B9apDw8XMCfl/C/6rnlbNYI6Adtgp1d7ZnnQO1BoT2q/Na/y
	 5pjx8S77UpA7nKey+EUkg3hZdVC8dyUtekcBI1xk/VCp0c4yMkI9AnAExwDo+K8f7P
	 EdsV4JRdB6EeW2FdLc1+NxiEkiPTKYcWpuVXZB+cUDt2zM/aNpSgUeDpuKifNwa7y2
	 PqiTRk2QkXnjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929EACCD1B9
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176107379358.2547.13633912042593218611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c3ab5f271eb3178018ba8ad81dcd07fca58d505c1c96fe1bd5c6d2e66f48af8
Date: Tue, 21 Oct 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761073793
