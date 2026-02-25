Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E97B0392825
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772042094; cv=none; b=Os1qcDyvyYqV2YKd0C9iI1xhrqxaoN8/nWvATkKGaRwNatqOtnUuDEbYyL4XLLXkuXhrlVL5qGg+g5E2ZvRy0hS9F3vtquTeFP9M03Rie3L548uW0u/T05D+OREmhPaCyojrqYBg1OA13OjxUg9GIQ46Tw9pS4NeY4oghOm78z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772042094; c=relaxed/simple;
	bh=4gydD4oLTI2VJHtwg4Dx+GzW6qFsesZL5mF02xHy3bA=;
	h=To:Subject:From:Message-Id:Date; b=ehUHQFrWV7GUoQU7F8J+Seyi0RaOSCkkcGbdH0mnx9QOJ7/1MSy0VhzECSbzL3m3RV8qa7vIu9NkRKBoB13WPNfanXMAJUkUfpt3JLFeuYOrHHb50nTJGfeFF0XkWKyBue1L9HPGVQR2rsyFe3Tn64oF/Zcvno1YUgVyJCYIFV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O2AuK+MD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O2AuK+MD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1375C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772042093;
	bh=4gydD4oLTI2VJHtwg4Dx+GzW6qFsesZL5mF02xHy3bA=;
	h=To:Subject:From:Date:From;
	b=O2AuK+MDhS1SPWnqrt8ftPPszXMo8i6VuN9+eLeCMTZ9/4zEdeKv5MLX3UtmnvN4U
	 jfc8yXkKnI+y4KvA8IlCW6CKr1aYsZ6SCbybrr3NKHMAKCw5C4j528i9PPzwYV+CjI
	 QErKELAIa/7XNukBMx9yclGfNV3pH1hKUDY1G8RrrpkOws81y2jZc2eKNymSX/NfOo
	 vJN2sSa7+PSQCqU+az4tO7bWPZOXgtX4CDiOLnXW/vW4U7nu2MGNWamFu/JVH8qVlK
	 OapfeYVCVtLknY10y/d2LkN8UwTqK2m55RqERnnHMn09BhqDbd+bdwiPTubSq0XKXj
	 h3aZ7mOaZiXAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91595FD3776
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177204209358.8700.5511381556817512629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 087d9a157c6d37ffe6a332352b4ad43194e2963221758176ffd94808868cab4c
Date: Wed, 25 Feb 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772042093
