Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4545947A88E
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791832834; cv=none; b=ZvUkrM+/oUv4iYgmkVk7Lm/sOo0oywUYyPRIm5c0PY/My/NCAWSNRRoL6Nm+RItyGjEIuzArAJ2/+idkkIH9K9e2M9Vn0KehM8jyJYJuObiTJx/uz/VIbXPVxW8qw2LbgiwnH3cfaBgC1XO6D2+TuLgJtHXsckWMIl4VpkvHDn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791832834; c=relaxed/simple;
	bh=eJgvij0nhz5HutTk4NCHTeL8arSaGD2W/Y3ycFC9YDQ=;
	h=To:Subject:From:Message-Id:Date; b=dCj3RZxgKqqQk5EoEM6Fyh0UYwYe/wZ0/0+uYQWuTYObA+Nl0WipkZxkEV8LlV/k8pPGi4K2A0N0f9U5Zvvmpm6wZPB7oWi8Rhk1bhX9TE+uxMU66AqhujWLzmgIXjf8tWR8pwSlgjF4iRItHcHonkhrjn07l0x42qg1X3J/RDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m34wCK13; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m34wCK13"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE69C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791832833;
	bh=eJgvij0nhz5HutTk4NCHTeL8arSaGD2W/Y3ycFC9YDQ=;
	h=To:Subject:From:Date:From;
	b=m34wCK13ok0VFi4pN1ySUuyLSUpGS3uy43ORpBZpC0heGTvrHAX5qb9wlOAgT9bgg
	 877gpxqg2wu0dUuKQc5P8hGs1DS03J03TYfCwYt2XCWWfwM5Z75ltOoJVaex6JhFc0
	 bPZ1KlwP0tsl8ux34IjHcv1OIeI+vSJSgOHq5cm3cw4rxJDLGKqyaWM30fG1T51URs
	 v8KM9EmGIsD+D4NIvn5WehmiPfIOdctFb1sMfSgcEfM6jPCXXkqNhZVCVdsc7OeiiQ
	 pLMiqcgubTP2tn9EHjkGdoX2WTgmiQwkb7Cdmx3Jz4DsqFrQJxEh/y9+Bl3nct796F
	 /oz3fvfgGwrSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6EBCA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179183283369.20174.11129610179967288735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 809a98f4441a0315a55fd332abddb6d8dd5aca84c2af426691ce25735b53d198
Date: Mon, 12 Oct 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791832833
