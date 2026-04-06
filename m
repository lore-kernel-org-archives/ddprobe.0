Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C2032695F
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 18:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775500534; cv=none; b=ZYdpt8xIp/d8Br50rVBxmxxzDBwFrwTnH6U5tI2IRzdBhj/C1dQKnFt/YW/1YW7Zc99fJW3F8aLkiwjDJKx75jvDGCJ9oJQTQ6+4f7RsztEwB1pGdQ3Z0kdcf+SgNU5N8ad5begPJnN8yjAmNsSJXgt4Bl2y18pFaNvnblToHw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775500534; c=relaxed/simple;
	bh=+AG5QNugu/gBU1rZZBSjPNYEnWgxnQPfTPdlElH0I8Y=;
	h=To:Subject:From:Message-Id:Date; b=IAzU0vOLbJEY4c8sC3eaYCw6q99hxfRqKJRYrKBXz0Z6BR7l4CL9kjDkzC4hUXejhW5lgZ4aien1GKpQsJ3LjwzSZGX6qvtQf/zn6rjJg5VD3Ls9p2vyDz9tWKZ2plzNQjwFBe1ouiJkuaaBGou8W3giR9BiCPAgoq7Ds4FSea4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXn4dPmQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXn4dPmQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C264BC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 18:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775500533;
	bh=+AG5QNugu/gBU1rZZBSjPNYEnWgxnQPfTPdlElH0I8Y=;
	h=To:Subject:From:Date:From;
	b=aXn4dPmQxzYXXOF5dNA8kfo8dOe7pvMJm9Q2x0ygSq9+sCtBjFmJEwcAcYfv3PmcH
	 /CCxVzcv8hwaahhlWyKV23MKgfseNsOy0eu1oHqBrXnpNJRrWtZqfQpDgZc73iNIPa
	 MkrhcDIA49kIvu3tgK7rBFhYqgXk/btuGZnC2/pchXnmVPVDTeGyIQFcKSKPi9kl8+
	 YXFGLIkJDHoutUldLtZP2C11VQcTsDs9CXIxfdy5kAqHEo2+CXnGIFB8sefueGXB44
	 zrvHQP0J04XJ2n9atKP+lZ6WOZdhEMOXumSE24hn1rLETVi1JmbCmqO+BvsfefU4+w
	 hc77WE7yKQt8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24F5F46C69
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 18:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177550053370.28027.8002775345252419970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e47ad636beac5e0d6341abfd9f9a3026c11e82a9f5dfe943c279e6e5c6958dfc
Date: Mon, 06 Apr 2026 18:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775500533
