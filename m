Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327F2F4FA
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766936034; cv=none; b=fOcWAiiZfPg75vLRp3Pws4TXcUJkXSY+0hDeZQpxDvl/1k5GFMQpW1KKlLJLrOB+tH2oHbm7H6J4GdvqHj/vfcm/+spnVdSsTSw4EQ7IZKda+by+HQbLsQOjCZV1aXuSN1udc5j67YAY5B+ThrGuQrR4JRzRNIvszoptoL8UjMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766936034; c=relaxed/simple;
	bh=w92I9NYHOPVcoZ4VdEJgOJcHNQK2rVTUS3QbGuq9JPQ=;
	h=To:Subject:From:Message-Id:Date; b=bZYOl5hF0yqYcGEl95rV4rEjaxkER4hfo4ZcRQPJlJg0laMDYrJHrmhHhd5pXYty/YseR7c2bByO9dXNaN5CbeeLbkAlwFiLzDuOX3xUkxPGpp+jyCMBQlAFdksHuTdCrSU5p62HhJblAqEChUK/GQUxe7lm6OZqK2EIbPuyCBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPVOXvDe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPVOXvDe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD70DC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766936033;
	bh=w92I9NYHOPVcoZ4VdEJgOJcHNQK2rVTUS3QbGuq9JPQ=;
	h=To:Subject:From:Date:From;
	b=tPVOXvDegw3YFb1wFp6aCJWqbKdJMjVMM9Tc32Lq+c7c7r5qoPe8LuhAfbUE+mxth
	 VtXMjHhEOM7L6rt7pcVylIWDPltpYpgzqWDw6sOvIzpCx1jKJG+RUPUl+nMp/LaIwi
	 YktrCTymLz4N5gA/+yAZrq4bsiLooYE2wRjWDPdV7SOGHRoIKXwE8GzQic5CLB/jH4
	 FJtmMKHLw+2tndXSSJ9A3wdPzBTnVSDa6qWJIWcmaOTchrwI+9WFncxuEp5Z87FBft
	 UTsq4TjNWABH1kgcU4dr/f7H+lsR3A55Jrivbo4Ooan1epsqaOSU2KamhV5UwOsIkB
	 KT02j3IfGMTAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A83DD3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176693603359.19251.3049742612518973104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d73f7c5a327e75202ca1fafeaeb6be448791771e28fba69323e0219d3d6e5bf0
Date: Sun, 28 Dec 2025 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766936033
