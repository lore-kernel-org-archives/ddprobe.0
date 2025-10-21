Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF88F348449
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761066593; cv=none; b=cJtQxF/pes+/BKXESfrDqchylM4gqgfGZ+YFjRTXwNoT2drBJiKJX4xCbqFmN+g5QsbLjTmkNcq1wVfk3uqNIkLvBAcuIj01fjRCSMvIWvXyXShnUoUbvmKrCV52r7AbSErYL6jUxwTK6UxbH/D3qvEg2H0Jheop3UWZiL7mGmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761066593; c=relaxed/simple;
	bh=pAu06XXdHiT3xsgWc0hG+W0/iKKIe3ZOhhBB2LgFiLE=;
	h=To:Subject:From:Message-Id:Date; b=qM2bu7SQoDvjyN7EkZdwz4h/suBJQNzx8/iVkglsU2DZeeztACMUJ8K9iJbH3lROABPfOenRP0/Sn67wbMQ9MTZry/VD4ciIalXTn8DcqOktyONExRfPT9PtWzQaH5RBn29xKJ/kBEckPwP6CTFQ/ABFnrV2flMGm+1/A5Qfs3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SvYU3wgX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SvYU3wgX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBE7C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761066593;
	bh=pAu06XXdHiT3xsgWc0hG+W0/iKKIe3ZOhhBB2LgFiLE=;
	h=To:Subject:From:Date:From;
	b=SvYU3wgXzpxB7RjTHPFYYNOZCANwQdXVN/kr34nSLUEj+ku2kSNjHRe+desEYVqQd
	 JTj9kRM/wnAhRcfWOMHQPOlQ68wAWdgGozw1iUeGyNGcBmwP2YsfnmGElEtlf+zGfW
	 vKe0qpTNRWw4nIxqq4MFVlVMp0gcz1J3SwKJADDGnV6UCfiNhaHPKAXLjbQcURuhge
	 Rv3gBVXRA1hHU2bpxjP4oOZcOtUBIn3U5OBittbsMVP52e1zLe2wCabjJaKZD/bbgx
	 Zb97L8AQ4ZjoRRKfA9Zi7hpMv4Tc/yQlx6xMpUIlbvR8Wu9FgqvLebU0bgh5WfN+u+
	 AYYmmw23PaCbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C96CCD184
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176106659359.10310.3949802655928614164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19327e0a0d7ff43ac4b51513154be978ba3a3af8a6cb8a11cb382ebb85ee3417
Date: Tue, 21 Oct 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761066593
