Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B529463
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761263994; cv=none; b=DeUh3Amqq5o+cfx9KU1/HMep9lSxlEraL2PGOeqv4OCBmbaGWxYSdNfTw2QEyENBdqZnZFbQh/P2xgrNVc9WSpqTBaM4n2u7TDHKKM8+/5i5W/prDGtjMs+PaWqZEMRDHOPB7G92LphyjBI3HP0rbCdHLERyCzKJhws1WqP3/FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761263994; c=relaxed/simple;
	bh=fD+qnrm6TObkDs2gCGBEmynepCYo0P7YwX9lyDURPYw=;
	h=To:Subject:From:Message-Id:Date; b=hSA1051heAowSpRqhdp6L5J983B3QammYbCIclE3SCH7CY1s5f0XNCPqwK6pI2P92ZRueF+AY9hiZG7DpQVr/NRMuJPYmtXOtJlU9oO0q8nAdqAN7A8H2/mfb1WEsFBcdF3nNmdBHzsvHfHWILpukTbc4GvBzOazafaWPnFt2ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QIJr2R0N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QIJr2R0N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D30C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761263993;
	bh=fD+qnrm6TObkDs2gCGBEmynepCYo0P7YwX9lyDURPYw=;
	h=To:Subject:From:Date:From;
	b=QIJr2R0N5jywyQ3RUU0QbfY65YlZHgcuxvdx5SCzsnxUlZsTrwlBvgzRYhCh8eG1U
	 tjzlcAWhdFwqZ3KoljAIRfk5M8hEJdUd0+CXdSZHrhutWc2lSbucq8Fzs4vZOuMZtz
	 ew2NJA3Ja2esn4sgWbFpaz8/TC0g3XNKT4GlJusdIrN86y2TIYcwPoNYgXXh3w+BOc
	 ugQArXj4CyovqrnVyuGgIVuSot8Jq9U3wqK4uGR3zIK42j28u9vxwA6RY8I+0c7TBg
	 wHRfUI38UcuRGLYyJUEIRuB4SgCk0RK8WnpdF5sLNl7kIup9LSS82H7Kgr0NGKE97T
	 AswZbjm9t8TUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EF0CCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176126399358.23018.9852294204635319674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04d37998f1ffe9712a95c9bb7b55138eda5c0ad08569519cdac7900fa3f29eb0
Date: Thu, 23 Oct 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761263993
