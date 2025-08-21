Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C34641DF97D
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755738593; cv=none; b=BHFVPckqLM3UvGc4+RjwXPQesitfvJnW+pxuzPqQLI+V/WGge+J4sj7PCy5eCx9mlaVtvMFfr1CwnhyJUc8L8ngskVsglnF3FzKZOIOrN+3QkVmt108DoU9StqZRvATcJ3Oc01XPsd0ugrz6y74uOpbfkI6NI2fuvZ2JlgcrpCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755738593; c=relaxed/simple;
	bh=rDM8LmGC1/Tuxw3h3ZdRb9jNjeEDK532RUrcMijckSM=;
	h=To:Subject:From:Message-Id:Date; b=Fs9YZjuWod5WwkUZr0cgDFNbG+68kjcBagx9rWAc6xELkczrXmJvrl2EP6b7M9oe7h4FaSR6cHg0RxEATXSajcM1cnbNhSXffDaiBWKaSQsLzGz6NI2jGXpqnaIjswwnujQoXtjdqKi/1z/8iiuflHwkzEY+2BjHZ6eFfBy/5QI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SCGe+H4L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SCGe+H4L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F9AC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755738593;
	bh=rDM8LmGC1/Tuxw3h3ZdRb9jNjeEDK532RUrcMijckSM=;
	h=To:Subject:From:Date:From;
	b=SCGe+H4L4ukjjjrc65qOfPvShTAdJMLqO4pinkpa8SenOl/VvvzvIziw2RTcHWflA
	 nMBQ/YvIL+r9Y/f3HYUKkFQNc3B0Q/OH/wFluMx4N4Z1Es/XtW8MeK7NWkwhzRvsOb
	 OYjD2dpVqfFSnE8cLNl8pFzCDa47OYrzzL4I+1OJz2i7QB473r7lu6CFkzo0sAKZC+
	 LmjVwRt1UxWlJbK+28z4hJnbVQKg4YfoyZlkDYWGIgTmYdUgnfogNydiBlYK8lJkvj
	 BjUymBhMQFhzyv8bej81kFtSX1mtfgqEigtNzt785bXPUx2hiqHTX4HrSDMUDRqvgf
	 8CcgL2KIUehIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C7CCA0EED
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175573859359.22731.499409964854492180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07c8b3d3f3e1b6189cc69ca66416afd0f9038febc2b7df57940bb449f794abac
Date: Thu, 21 Aug 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755738593
