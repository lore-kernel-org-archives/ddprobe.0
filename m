Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D0C2D600
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747794594; cv=none; b=NkCa/QTzgvvLc1i77pcugGKhebP3p0xH81H0Wp/Pca68vYVUyFnTkAQwxzTmZaXYzYcuB+IUuAexjg7P8R8Sc0B3LW3Rf7OeI31CR2JYNy0gfJI6Ya+V6ZXwsYRyE0m8IFNxJQDLMKQETDTVlEe6ZuwIWDNDIF2NAJm4uCKSjHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747794594; c=relaxed/simple;
	bh=3O9dazHn+XTrGibLK3pfTgbFQFZFWAD4wUVldCgXwm0=;
	h=To:Subject:From:Message-Id:Date; b=IDR5kARE2QHqCbOjdUahcD6mLRoN+WaelhO+9KEa3YjgpAN01/uTQS51Ira8hnbi/MwwOvioECJmzzUfBlQtnmSwZ8Yub1MLz90O1PW/ShKzqQJxw3iMbySDwjUYllkNJMqUYOCkIxJAD3LI8nYIUVajYkdJDX5QHgl0b7XQM94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WFFyYito; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WFFyYito"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69AAC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747794593;
	bh=3O9dazHn+XTrGibLK3pfTgbFQFZFWAD4wUVldCgXwm0=;
	h=To:Subject:From:Date:From;
	b=WFFyYito9QlwlMna+aS+nqTV6LtHUdyYKaNa39ppGnOXtYuSsctfWMd9gC10dhHR0
	 UpIJrvCa9/5QiT40D3C0CT6HC9E5eWZgKlDhDbVOqv7ViU8Z9n4iETUj39etxC9y5j
	 ngvFFJgJ0sd0LV4pR/TJFKxWQwJyojRoVfary5BFVelWrHRY87v6xpTCgGyxLMexP6
	 7CjxpE58ZkgHohfCsqhIRh72SvlW0ckkpE5w/ZOJwYKAMUrO12UsOoJdJwfaVngjSn
	 oy869RAtetbREUJvlHNMhA6F0nBmf5Afk4gTAUukGqTnJ7LYd1Oq6MhxEL1AJiEzYV
	 iyuImayiViz9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91219C3DA6D
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174779459358.25559.18236554370485335615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeaf6f8e31e8028bd519c5374be1ff17a892b19ee5c0cdcdc11234d2f9c2804f
Date: Wed, 21 May 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747794593
