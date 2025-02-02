Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F2E1F55EB
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738526754; cv=none; b=D55eOR5KX4Xct5MWKi2o6Aw+xPMoKl7XctwX77AQjL95ep4iMMIssjinB5PQ4DGV0/bJgJN61a2T/O7wteuMCNwFiUTXROOnMLxy6tt3TEhi6OCpWoAJ9wVQDAn5d1lJ383hNQiJS5kDbnzUJ3L7r+Od6U7jPWGJLWsjNkS48fQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738526754; c=relaxed/simple;
	bh=ZvBrdCA1+n7CJ2XUbOkvjgWP4aIDu+tY7esVxpF19ww=;
	h=To:Subject:From:Message-Id:Date; b=YKOQ2J2F+RM6sZXaprl5agObA/k0gU60/jvCWDO1mdoeGR5cLMBqzdI82kUhF5CoLUKgtw3gnQKNRsZngsO5w+35LWALPwOqYdACIJJ2rp+vD+vAOLWK6vQwHN5FLV9d3RfLQ+Fb6hslv/fdHx5b7/5MYsF7x0zeYEUMl6bQuvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIhIYTm1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIhIYTm1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8BC0C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738526753;
	bh=ZvBrdCA1+n7CJ2XUbOkvjgWP4aIDu+tY7esVxpF19ww=;
	h=To:Subject:From:Date:From;
	b=dIhIYTm1H4njLTA2M+fm6ZlsQUXlaKg0aA5A2XypYLNXIasWfFiFFH7rLlLuCgBFG
	 3MPozYcVFnTFBngSRqMRqVfl8xWXvS+VRBOZK00KPZnzLRnXdvZ+8kPGNlo100TSAj
	 luJgoud1tAdexf7wSp3kdAVgxCY8jgwPnve5eqtYLswTy0CQAE6kIHPw7iPli0Nkwe
	 MFrHmbVmCdJmhsfF5lZB1a0XfK3M74c0AVIGlGzAd0OwIEqLdikHS0DBsLnxtAgsdF
	 WIZumxyPmz+KjqWFv7uGUmqg57Y/XcIDkVmIb3mvbRL6YZAFAEJyvD+jfEsMC0F8tQ
	 UOMKuBjqYqeig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3158C0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173852675363.25509.17595269329419684709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aa04814f8487a2e1b05340d1c7a0220c0ca8dc452547d96755c36d5c8c64184
Date: Sun, 02 Feb 2025 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738526753
