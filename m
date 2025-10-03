Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09FB12F85B
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759452595; cv=none; b=eQqoSAZ3Mal+SQzl5bnTUVvnBSDxEMkWVgdKhHxkCcoLyyf0OSsYfKTjo9kTXnOVwUjnFqTqcAPaI5Xh25wPM2gXkppNpUbIXU3ASM2qD4XfB+//sQjN8gEvkvB2g7lzygSazuFloBQt/2O1njSmz7b3KuLI+jxLLxDgh9KDHew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759452595; c=relaxed/simple;
	bh=XO0s1gbPjDRPEnBpyOlDPdriccdpAZEXMPKe8iSzUDo=;
	h=To:Subject:From:Message-Id:Date; b=kcs04Fr11GX926bCB7LYJ2sbSJVDwh8KBbkYvXbJz/N71YQX21SlSkaJrBXvv1AxOhy3UWrnryrYX7mpYbu2sN2Neelsk/OWc8LyTWdXoGsbdNebJqZ2m+fJ8U6hEuArH/UjCrsd6ykK4kaZdNeVzX+sXebWrhGA/nwhvkZDMGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7XQ1vmd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7XQ1vmd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCADC4CEF4
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759452593;
	bh=XO0s1gbPjDRPEnBpyOlDPdriccdpAZEXMPKe8iSzUDo=;
	h=To:Subject:From:Date:From;
	b=X7XQ1vmdrlvBJ77IlEGZxrXEVOE3s8IOHV8rz5OhoOxAJ4i8iBiPDdO//RayInY9Y
	 GdM+1mTj/3U17+HRn+i/ATGe2DOof2P4oS38+HzEZSRouqUYKD6p5a9jDOOCGrLMv1
	 Zh42HHGdfajKfJ6C2gD0yk0CpX9IB7MqpAUM9ofkhn4qi0Fy2wMPpG9an3zFkQiqkT
	 rJ7Kz5LVqjR6Jwx/x3wZa7u6zKRnpI6kh+HXFSCH4BD9rTPySKYt+3+5l77hyuPRm7
	 Fmp+xYp0QP8wmljfZOjmVNxwUQfZ6zcT0MVMSsfd4se97dL4ueVqpqNtG4h1fwcUHJ
	 t3wD/dwkZFZew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBA9CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175945259357.30440.12585543375724117742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4afe7db554b4c43254c0ea9a308d37d3aeec6a25113da2ae905f2030d5e0eb93
Date: Fri, 03 Oct 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759452593
