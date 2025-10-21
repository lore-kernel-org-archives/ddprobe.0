Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9802E2F03
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761039594; cv=none; b=HWe14ywrg59akkoSEQLmDLW6zi+ncYReCxlK0sHh/5DN7BW6XD1ZCFNcn6eNMSnZb8VG/el2nacPjkR76VwyvF/0JsVh4VCauFRXTB8/u1CRCJaBgDPyVUZFonAvNrKyPNv8zh8JaZD6LEfSINK2rm4aExYHFb4j77jnL63TCg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761039594; c=relaxed/simple;
	bh=K/1CQ4G2W07WtZCQ7NHkms1sLbdJjJYOHfyC1QUB714=;
	h=To:Subject:From:Message-Id:Date; b=S3ifKR8LI7bZw1ac2Tm2Ulkx+2vXJrfdZcPrpb9R2AEnTHgjPWN8WsM4lI+Z+HVD3YEeWhXpJUiKET5zdukq8DV5/gujdQuGKZ26VYBuJTTj7fWEWmIEYKz/8DkGMzi4Y2NYeDEnlSIOkV6tHKNjfS3Vpd/zq5c1jQKLCF19wCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQ1KCZzW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQ1KCZzW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78EAC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761039593;
	bh=K/1CQ4G2W07WtZCQ7NHkms1sLbdJjJYOHfyC1QUB714=;
	h=To:Subject:From:Date:From;
	b=EQ1KCZzW+8yTW3Ja0n8LOczn6D+9T/1DkzYZtYOsJhSo9jiwrzN2ywI33kew9bKcn
	 /XgvIMcOE+m8wnflkFrUhjZfEJujebHEgwatDBzpYhTacvKd424q9Zi0GnmLaV/smq
	 taZnGLDduwBwp6VNf4nKmdWodAZQDsQniWqp86ptA981u/S9nbGx3YUWgDZy/K7OIy
	 YNgt/ec+Yx2Jxmay2Z51VlwS5xCwWu5hYIme7pvbKQUn9ECq29lTQCHzeuZXLYCKm2
	 VbHfZQxB85rsIRKWjL5ynArMGPcB6mZ7yFUA7CWBQcSyEn1aJweGBygqwOiYICJhAg
	 fi1UWHrH0Cz9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AD6CCD184
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176103959358.19135.10870867378524256681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b36903e4a0ba4a6a99b4d7f7cd413de9fe00d16129af765f8f66e1d59c711db6
Date: Tue, 21 Oct 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761039593
