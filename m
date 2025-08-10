Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261BB1DE3D6
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754856594; cv=none; b=WL80OWHhQaEa0SEzbPXQpVjSO2vFB69DUK17hM9HclK0WhQWJUrO9gNV9yiSU4Ver2tf2iF4xs8Ev1CeIymt6G2cPeNIXo/wgXSLI3z4AuhC5Hj8d8n2ugkfWdo6aJZejow/Fw3DUEu0Il1DXf3ICs2skc9jlk98u/MAx6eqFKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754856594; c=relaxed/simple;
	bh=cpcj9bLDE/ZudkQb3YEGZdwgezi55xSHRnMy+9vHPR4=;
	h=To:Subject:From:Message-Id:Date; b=urrh50Ro//M4eKxpuJ9PwGxyu3xcfmHrjf3PJHUOsb8e1YkYZ3jcbwHMx0I0ZdZa8vFVJ/UA0VX87cy2C3CzqlSQzNBZXtY7GkNWrSXQiY8OZ19ziTby1AtqUxJsqeyfWgtJnzkA2SJYLCnq+Cwf6xr16hwqIO46ji7+tpvchno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KmLkscuL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KmLkscuL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DE2C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754856593;
	bh=cpcj9bLDE/ZudkQb3YEGZdwgezi55xSHRnMy+9vHPR4=;
	h=To:Subject:From:Date:From;
	b=KmLkscuLJyoi6yi5PM7YbZJwjO2+1Rss9+UqPwi4COWFFokwIopJhVI/RinoQhNYQ
	 uHqzr++OXAxHOrur7S7OGCGq93Zc431/YlKLK4d14s7Tml+gIaqSG0hb6iM2DW5yHk
	 1qoYq8SH+JMxB7W/9PLF/vU1X6rEtVgFb6xUdelagXs4cTIUwYDTG/C1tWi71SuCNx
	 NNuB5heODhzO8Z8WGy5tPoY7u0JL9sUcoeMYgkMcwlMdqdgiBXVWHu8k+4TLbDd3ri
	 COP9VpQcvnD6hocnv50Yqv0+YgIEj3m2+syibkSOI3vX9nxrzFRPU5xmZdjtEjlz/D
	 UyGm62pcjRY1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921C8C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175485659357.14838.2480370151514876649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 985cd440c7fedd0fcdfbddec2db72096f3fc7706c6d47d7a74f61bd08a2edd0e
Date: Sun, 10 Aug 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754856593
