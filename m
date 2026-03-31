Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 057D13A5E83
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774990494; cv=none; b=hSfBykoLzJG8g7XekIDQ24IfaRT1faoPq5Xfx1rLtZ5jNWVhsEtNrEuKAZYzvAxrBwfwywu1ydE3ouHFI245vUd9rSlz9Z7Nu7IfnOS6Th+LDpzmeVmNZcICBgPHcCJy/2sP72AIbisUrTwQVP0J+IzO4Kqgo6nf0WZC1YoXIIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774990494; c=relaxed/simple;
	bh=JuHPRdrgfkDukj2ko8mKDqMZTqxYgskcY5zE/An175c=;
	h=To:Subject:From:Message-Id:Date; b=PmXU5q19n8k+awKRnmFLFbcZlmKy8BVeeWGDFSq2G5TyAyz//Se/awr5quSrWfHT8zI02KEH+dh+2tL5dwtFCQ1KkEjapIWItqMa5twj44A4pR0oNZShLSjE4XQmwg/6IanTZUudtMSLIPErNEFCqBqQp7rLlW4X1XQXlVsb/Vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i9ZyFAbV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i9ZyFAbV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17F7C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774990493;
	bh=JuHPRdrgfkDukj2ko8mKDqMZTqxYgskcY5zE/An175c=;
	h=To:Subject:From:Date:From;
	b=i9ZyFAbVRyw+i3bZXVPP2aZQ4UDxhd8DuPKGyENWkEgOWK8A7Jr1x7jtYrogF0bQn
	 zc29kd9l47yjbl2WEXDI/8e8MK5u7lx4g2J5YzYOEKPafuQ3gEnrA3eg+7ohz/tQAf
	 +aMqru+zwkwWIwaNH5EcPuh/fJibJWLk7WirJN1/J7EFtUhc5nmAfIKofTw5ZW6/jT
	 B9gIT8wQLurpNwBjapbW7RgVWRfSuE/T4qupIgcTfoltxr6EuGO9LXowGiLE12R6Sp
	 MFkcA56tHO6WSLC+07943AUSE+yXyigEO47V4lsoKXRrlPhC9ZG60BP7O+oQWGTlz7
	 lo0VjElfURECQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BC310F9302
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177499049358.16518.1296873623664354103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf89f7a2fcdfb38f479e68b609d134210ad68ae1d1508d0862fa5e5f65145f0a
Date: Tue, 31 Mar 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774990493
