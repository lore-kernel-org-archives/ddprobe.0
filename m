Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F89A2FCC1B
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758651594; cv=none; b=u48aKaWmE7kL0P1KWotaHNkojxLEgQ3qMxkaIcQ5f3Hw38c3Ig23YJ/841oX3wv35caAwNbchGVQAvjCWkoWS01ZtztJa7geaKgkeLTusrKmmERKyTDCrXrOfdclOkvge6YHsdez3E9tHECgylbjsD6RXeot6inct6x4JRh/J3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758651594; c=relaxed/simple;
	bh=veIX1cWvxJviydq0SBHNDVZQNxAnfAGmwpOQf4eVBpg=;
	h=To:Subject:From:Message-Id:Date; b=giQyuQf1m36au6/i7ulC+03w+pqYhlBjSUd4RJcV5ZG0dhddh2BPcm07bMlpgjEWBAMUY/HCG/Qp+AKLXblvo2ru9/PMHRBEYrC9Vb8WgNiB5fzcc4fl7t3OmKGPV8FcpDAPz9ynzcRFyWRsdy4KmcRRBVmUjdMWXbSSNCZo9fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HloGkLkG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HloGkLkG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B311CC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758651593;
	bh=veIX1cWvxJviydq0SBHNDVZQNxAnfAGmwpOQf4eVBpg=;
	h=To:Subject:From:Date:From;
	b=HloGkLkGD9hxcTkO8iajSbtaEUU8bEwN1fo9FSX7oqAezTPf8KOdhGCo0nWkntyGE
	 F1tflcKR9BfOy/MdKcX1BpWp51ELO2t0fkIt42uYsAX+l3ovdjFJN+mS5v5dGdRwJv
	 ir3yf9aY8KY9b9Tb+1NbTI3i5CJx97ZMt8NpIb/3BpDVUMVf4qySVFJNVT99lt1lrQ
	 y66QWwXHcjg1ev/wnH++zstr4CHspAhdWwkloYRnWbHRBWFVqO8bAvLcYbIyU3lIQB
	 4gBrvdEfePwet43NPDp2eImG9b3ac18x415EKzThYsnNVgFYCEAGxiLP9NHQL1U62Q
	 IQQSoate2RzTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B189CAC5A5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175865159362.25547.6360220755521224928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5a28af276ca0ea88439a83f1f0d7861299b5550d9e00d8c9259f681da251d47
Date: Tue, 23 Sep 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758651593
