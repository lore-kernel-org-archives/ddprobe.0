Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC3C190072
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738139154; cv=none; b=L+2WZOX/JAKlmHu95J8JvPPqYKfhB/x4c63REM5D0ovD0BASynQZ51wEZrAPmKyePLQwa4qovq2voIx9R06lS9g+sj9Xjmx040wee1+7x4ZQqcu/N32527esQYGC0snIrOn49fLOtK9wtkLyViw8uDXvxgiy9864mx4q5YMA/ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738139154; c=relaxed/simple;
	bh=GV/5uURnw0YfC1XwXbAbwlhsVR0fhD2c2bKg9OsFqJY=;
	h=To:Subject:From:Message-Id:Date; b=BTtyOFC+v80aK5wGvzE2PzxHzIbKv3MH+P0jZeXAuYiqWZTpp/f2wfOS7jxhWPc0CT8pSNtEPK3jYAA7ECdOhnXtERi5EjA4iWV7j07rX6bT2NwIU6ciTfyvgs6FQGrGQ+6blMHw0HIMyreH5FfGPJqNf2tsp8Rknku0Jf6jkVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A7I+U7aN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A7I+U7aN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A828FC4CED3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738139153;
	bh=GV/5uURnw0YfC1XwXbAbwlhsVR0fhD2c2bKg9OsFqJY=;
	h=To:Subject:From:Date:From;
	b=A7I+U7aNQIX+8158F/n+pCnJk2vaGa0kcYWd7Qy4EyKWlryU5lxWyTZW4Yq380c31
	 6aiRbrmlOR3cS5yokUHY2oV6nvcWTWJ2lqjBP9GSvczCk1s4XAYBYm5ThA8N8BC/Dy
	 ugzcdWso7NUbhH+NqfZotZv4+uFMe3i2JYhZ8YVizBp/iLXcOYrA1j7IkBlDNIiF3l
	 qiKZo1vNFxIzfOJbozctBX3DikH4CHwH57xnJ9HlYAw9xiUczN1LDhe2TsVFvHxO7c
	 vKO5wXXbQ3SBw5k+3DH2nHZAZzXF6CqwrZqqJx+RqG7eE1BQmvcC0DAyvSlqRHitl/
	 GMpZOHya3wztw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A39C0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173813915360.15063.12853346626650900946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2c7a17f275c55886842297ed788a44022b4ac27dd4695d5453c155816b833d1
Date: Wed, 29 Jan 2025 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738139153
