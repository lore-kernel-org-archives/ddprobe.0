Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446A014830F
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738908354; cv=none; b=M7A+4mmlkkDJWyVIW9DdkUc+tyn6cqPt+yC/ka5QIY8utu8Uaw6ssCm27b+ji0Y4/WGgDjn8UL/WQ2c4XzD+nU17nly1EqeDSaYTxUGfwTLsZVhRGMWVX65GoIYeGPUkDUPAD+4vZPEs6L/Q9QlDJT10cWqXUt3aOriUzjaEzqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738908354; c=relaxed/simple;
	bh=yqadhLG/D4bptBRZerDfJGhgary0XxKLKhAxExvA5A4=;
	h=To:Subject:From:Message-Id:Date; b=g21QD3moYMWXvhL4KuHuP/V+yFLHKm2LBWvUXC//zZJNmMJV3qy5oG6lOhhzT7tM2SFRN461FIat7uGtOu3s5Q+sskIo0qCoX4CTNnDswPNd98CLOPrxcveCzq/oZoxBJNlmYQzluzaGH8x/Q3z3W7epqZLd/N3I7DmYKF/4XxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XEPUS+FC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XEPUS+FC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B044AC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738908353;
	bh=yqadhLG/D4bptBRZerDfJGhgary0XxKLKhAxExvA5A4=;
	h=To:Subject:From:Date:From;
	b=XEPUS+FCY0WqduzWrrfdtIyq/bOijNqhtAzTWAZk4bgmQSlYleZaWy9TYfQJoy2Uj
	 RiUZ14h+8f5qm6mF7lMDfg8VyGrm8v1j5J5/iVCgd4CpMxHybGrnDTCBpOlAU40Neh
	 iZsdyxCVL73vrAFuLWHS8PEa3qqOd1WrTeWZwGs9LjzGH6z6Dv7kGb4KXvPFidPzar
	 8l3ogucVluVVyGjKrP3vtb3JjXtPhJ421Hjbj4oq2NeCy6YpIZ+QzDgcKgb3++dvLa
	 ekeJKkFlbq7hctv/rQ3+hxuKrSSFmZfqs4YI/zw5RPnup/7hFcufj6xJqun99cvjIz
	 IYMijTdNjBPcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96445C02192
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173890835360.14722.8716079413779982519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73bcfe5b7a0b5c5cf20ed72b991a9f3ec5652f0eda5e740037ca139bc734ba05
Date: Fri, 07 Feb 2025 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738908353
