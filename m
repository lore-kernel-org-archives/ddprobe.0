Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2D01C5F28
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743175794; cv=none; b=SGcrUSiEQ5zOovH0i52EhA0kjETUurI+7GnQa8i0m/FSPHpovPI218Ia17y5d9W+KVKvBFEW13kGFmAg5S/h9dE8yKdJiY6YxhOlAbRaCJRsAKnn7U18JWvrX2vPK0pmbmMr/9bkVmuLdPKxOrwSb1ZjlBcMxaTk7eEFIyrhg3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743175794; c=relaxed/simple;
	bh=inRu+Ii/Mw4KQnK5VGc6HFvLzMLJT9MnXhsxwelw73o=;
	h=To:Subject:From:Message-Id:Date; b=KjOO5nwIyo7INUA5aQoym51GM9ITNS1gTlsFzIhbrVuaZO/92mx38w+oOVshDwcMLThjNrscew12D7MgdaDbiI5aSmNdY8V8sGsgQOxc5tmW0QcM3EdUUivPR4D+OwKhzN2v5MujPdSbgfxB1dNGmc8Lg6kXlRSCA/YNC+P1PSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hk7atBUF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hk7atBUF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBC4C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743175793;
	bh=inRu+Ii/Mw4KQnK5VGc6HFvLzMLJT9MnXhsxwelw73o=;
	h=To:Subject:From:Date:From;
	b=Hk7atBUFrbj9tYAYBhnLL54vXUH9m3Ga+ybsKQwmN5976ZIh4WbQ4KpKnJG2w2qO9
	 HXOX7jeFXZstnanNJbZOsCdd+WaImfyWRW0e8BXA69bmSeip7HInVJI1LSoAV3NVkj
	 /CGZVTjrvVxNaT+mnl7S8dsC7hkCasAV7ituOeBZOBN5J8oKCQPquEF863fV8erptf
	 xIjIO4Jkfn5UM6HfTeYL3RTyXJuO9Mrjs4yVXk0gqOzOt5IGgJzJ0yvzCFAEciPMjG
	 MCtse1thnLthA6iDih8a7EPrcoiKKXk/Snq4M4gdttuIS2uuGss0wYcP2HezZYWE81
	 7D0Od1TiiYkpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A35C36011
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174317579359.5768.895181188604799964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9c87c84ef8ad9647bb8d515e2ee3b2dc98cc0dd545c893dd1229612dd0a71d8
Date: Fri, 28 Mar 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743175793
