Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED6FC1A00CE
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760977194; cv=none; b=tMMXBjZ862bJlOyIZJVGfZr3kWVA51KcaPbPjWu7VEKUFwqFUe49sAwoDuD9+laxl8hb5H9fP+Ov0CKQQlWtotn4YWycXo5XU0chzkQOCQgFiITzXVuUinlgVlyt+GXzaww4/hAq6e4jlgQLyEJQgLHLrogOk9xOpj5q7ZxDYqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760977194; c=relaxed/simple;
	bh=3OiNHglSfUfSNPSUhR4JRO2sxxE56qAiDNIHjVKhc0s=;
	h=To:Subject:From:Message-Id:Date; b=lqSxasj21CJfZ0RdEqZADOvd4QuVcTgEp7e8KKrRURsBMxaQPM6qD8Y9uqodgQRO1dD1GPNSbJzkhu0iucm2l8uyFC8Bl5nI9FpbbZd5RROCSp7HhkjRN+Js2waALQW6uRqMfulhixVJqks3iprFMRNKuqLFHgItVj3z9mcjbQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awZPSBZZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awZPSBZZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A168EC4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760977193;
	bh=3OiNHglSfUfSNPSUhR4JRO2sxxE56qAiDNIHjVKhc0s=;
	h=To:Subject:From:Date:From;
	b=awZPSBZZljWxQZBce0AkcfvSE4TI+hBqJUqN3qrAs8vBzgJAAYkLNrGNcHGqrtxbR
	 gqWj7Dj8Nu1dO7UIGsucoBqOKOF4Re+aHm0/CzJs/PoqOD4/AvRrSVq/kFQODP/2Hf
	 oS+Al7H8pNdZQHhWPM/QVeZqcBk2xGqI2JZ7RcBIAD8ghEVx+bP5X9zKqhk9AWDOIj
	 EIyyRVrYpaym6n9de0Rm/uLU9+ZxJVQlbJ07KLHJjByeWiq3NJhPD7lVpw1+ki3Ap5
	 Rw6aOgisNOb/hyg6+9VDeddjP1vJRMu1VgBe7HPuVDkSuWG4I0tHLgzpSUhkhZYXK9
	 zk3nHo0WAgmoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF05CCD199
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176097719358.20923.6729087405315911363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b99c2773c5ff6916a8b73e516b61155309d90f20d3d0d7694256f203ea58200
Date: Mon, 20 Oct 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760977193
