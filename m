Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BECB2F5479
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766527434; cv=none; b=aKXdZJh/6mfbi3mJeO0h+KWZlKocEKls2dKSrvFZ16qMWXZKiKnkjQlyQ5TPFmqRQq14UxBGOzj6vXKmXaGAiVgBy8WhTSkLLoomxPYjBjCget2SmbYna8G/sZDz7wqi9co+1N4wti2vAXYZJpMbdV34f7kGy3DeOvGB+zStomg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766527434; c=relaxed/simple;
	bh=psGf3xolkSJnmK16s7ZxRO3Fzd+qy+REjI1KW0LnxLI=;
	h=To:Subject:From:Message-Id:Date; b=F1c0XzrW7ZvNHJMNMESBlDF5dx7zQX1fPGk8ptJyt51005GDp+ZAY98ujEUy9m30ePcRQbP3s9SqMm6hJwxsSN+tLLOD7PaRwQk8J0TINMfHB2IS/t8kDes9YYyqqD9+gKKbotwB8fYSAc2+0za6HnJtG8DVSXplDAuAR4PdONQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GHls0izi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GHls0izi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52ABC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766527433;
	bh=psGf3xolkSJnmK16s7ZxRO3Fzd+qy+REjI1KW0LnxLI=;
	h=To:Subject:From:Date:From;
	b=GHls0izier7f9J/KUe+i3dYOs2zLXjF3mUMdoZTZT/8OmobFdQr789P+3l6Yl+4S+
	 rJTv7XIXzPm8ziyOCo0auHHrTbOARB6cf5JLZpmTYHRG5ljEY6AEKog/AT5DvT6u0E
	 EURYd4VihbR6USaoAXju7VH6bX/9Eac9BUxW9dzuw7iuZ8HUBfNrV8VZlzsE0wZ0lf
	 96WR1p5Jl1iIYg6sL/FRBxQYPGbBW9sRCQoeZkawvuXzhJRq3LT16T/ZARAkoUI+Kb
	 U8Qn0uqfRY4p4RM43Mhv9FdJyIYmXOfOwi0WU3eIvDbfBhBn2M79EmNj5U4NvGENHb
	 vdIq4kuFZc/dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9349DE748FB
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176652743358.7038.1921189197004688447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edfe6a9f9181db055dffc6dc0fde6ed9b46387d16eb1e51dfb6901c82fba143a
Date: Tue, 23 Dec 2025 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766527433
