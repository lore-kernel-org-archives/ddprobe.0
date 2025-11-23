Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2207E41C71
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 05:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763876514; cv=none; b=iHlfzRaBOiP9VcvEedQTQo1rBUbydTUCyeNrkvfO/3wRUc7cAskyaJfNzB9BgSmMCk59o2GbyFS2J6YS73v3tUwZ2YQgthFmUhPZdNbL8FAt0ACF6ooSlmPpZd7hddrTRSibBAYYIxaU+eJ9lG1qg0Y1EJipf5xYpK4YIp/VopI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763876514; c=relaxed/simple;
	bh=MGQS8EyP6j3El/y2knsW603kFjcgmLj7Zv/+jSjG2ZQ=;
	h=To:Subject:From:Message-Id:Date; b=FQWfcYK755UZe63VtMzzAMKxtY2vKKjz+N8zJkphCqdrU9zyZSS0NNupO8JxSbO7+QJpZe8auDJfAHp/azMziXI2MGYZm3uHYKC95OOEw9ljlvareeFYG2jujV8J14O5tGhVxpkiwuiyBdUz86c7vEGw6v4etuuaKsicqKfi4jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CvRHXG+k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CvRHXG+k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75CAC116B1
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 05:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763876513;
	bh=MGQS8EyP6j3El/y2knsW603kFjcgmLj7Zv/+jSjG2ZQ=;
	h=To:Subject:From:Date:From;
	b=CvRHXG+kWMz2wmBfo1fD0xnht3tj6rr+seKEUvypnD6RFkOlAzmNmehdiqwQeKm2q
	 TEDtlfUp5e3lV2sI2xG4dzD0hAtXpwujCVyBxc+7o4BuknVeD3+VwQZJBPbbb+dUOT
	 8Mr+VTu6p5IYRJQ4mrhuHq+YqxiD5PMHCZFrzs9Wwi/4BGkKIo7yz6LPpZHVAI/vNU
	 vB2beItT+v1sDvlVjvgvlqF6AY9kbKDI4p3sBMh/wWVvARZQA2v0Qn8AR0GVET/C1/
	 Oghug3o5s/rcTKpnVke07urpIahPwo91JtdmMl5O8nbee7Oag4MYhhc331YigW213P
	 mMyPk9WBiUReg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CE1CFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 05:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176387651358.10958.4133044600249244555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0759523e6e2a717ff3bd1b05cde7504c78736ef13bd85d485ee5c7e69a6bd63
Date: Sun, 23 Nov 2025 05:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763876513
