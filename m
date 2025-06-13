Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B74F2C15B0
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749811794; cv=none; b=bebq7HgaSX8utuPmpYbkAJB8Dy9kVYS02fMjRNMUXO+i6LaPv63JF5Q8VkB9wseZ1ZLn55jUK/HcL/x2VByAG8Y1VbNq6l9vKWxoOPrSNzXv15RdEbpexvJe8+XeEV7ROzD1RslbqwpEOMXwBnd+JEmGuBCvmC2xamxsy1ca+qY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749811794; c=relaxed/simple;
	bh=VPIuwBRbyyEvvvL9ThVZ7ismogrJMt0nPB+q9YwM1pQ=;
	h=To:Subject:From:Message-Id:Date; b=s1M4scTcUNsDlxuJeD0CJfMshrAMRiT89VkZD22ZaQSfp4liY1CSFxcniy3H/TxIHL8GiH7aqwystfgJpFxB7gVlO0q/+qVhS90wWGazGQfmuZfcJb8vsvdzLTI9e23ht01jXHAmPd7PPi5flW4w1I+HZ9ITSGjm0SlXnTOtnpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ShL0yJby; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ShL0yJby"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6389C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749811793;
	bh=VPIuwBRbyyEvvvL9ThVZ7ismogrJMt0nPB+q9YwM1pQ=;
	h=To:Subject:From:Date:From;
	b=ShL0yJbykSZnRq9LQwqYCPuoBTmPbCewmKJ7oL7Au/hNyx4h3D/HnCBYXZJHA6nzP
	 t0k0k2pCQhYeo3r9aeN6HAbl67frXQGdYSR485TpHqf4YO7XugkW3OJuiSVYM6fzBQ
	 yq4RgBoBmtPG3t+wayu3rrnp9aX3RvV/lbBFRJUrPyK8luJr14bPorViA/NscDnYJ7
	 qdD4MyFMQ+ep4X01JdiIQB+WZkvlDAyawSpKuYUy1tE84K+EKEc0mnLtL8mv+VcfZP
	 l04r70PFRbDZSvYEkesW+rUk6pEvETT2WlWSYevAnBoIoHySqLITkSLb5YxAa0Q+jW
	 l2seYq6MywSiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A65C61DB2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174981179358.26047.9039660860464182059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 888925eca135d4c6845ec2e52dd78e3ef1aa3b39c5803699bf00508d4170a3e5
Date: Fri, 13 Jun 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749811793
