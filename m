Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F00323D28F
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747130994; cv=none; b=qRqT3fh7XuWKBsEoTAd9TpC9CtaAk7PxavWtd6Vfmat8dG86daoImB4h/87kiRSI7cxZ9P7rtN850cpZflgqHuRM0gTwVhnMA65aF0gCCFBCqmrWcyo2gZlQzTREHdPwtL8diTjVU4jFrm1Y9HFFW1QiRQU3/UwvJzmwCIH/a48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747130994; c=relaxed/simple;
	bh=S/aIG+l+BiA6cwPz0bdCmYAjQ4nPA4OMhRNPOZsjJUU=;
	h=To:Subject:From:Message-Id:Date; b=f1lD5ASnnSxrrSjp7gC2MTjSm/ZciXjjyUSBnH3eNmL+oaElS6iDegmOWoVYrsjhLjPZJNdGIFOfM68RqRr8w2hq6MxQU30nxCRe1aw5BWNnYlIOJfbh1doTnWSkgHCl3Ncgd9Bi1yTsIbCmM+yKvk7T55pQAARgWzBIvBDTPEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+y361T1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+y361T1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D891C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747130993;
	bh=S/aIG+l+BiA6cwPz0bdCmYAjQ4nPA4OMhRNPOZsjJUU=;
	h=To:Subject:From:Date:From;
	b=C+y361T17oXAWQ6xzJSnKiHoFqIzsGUOhWCPXpdczzmdWadOQ3EMkCm3astaNqgxX
	 955ke9rP5FrQKJ/iEWkR9sGa/P9dZrZFqRaLDkM4zyXK9IbpgI90fzqC1cpE4+By9M
	 Earw6/KlJ+7M7lJGfdqcZX7zYrDyswlqlx4LeKrch3oD3NXTr7VsLOpiRUu9bZFHcp
	 Ao1OW2FrUwTtja5wrU6kuNRomJJZbelAA70HI9fZ3u/9ft4PIDRKjhuVWWS8LdcYE0
	 lP1KfaYFoYKpzQow2eXBiLGknXktsS8JvjR+fSnQ0VqZ6gvhkr51X5aVTijahCZ0Lw
	 TNZuPp3tRwOww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDA8C3ABC9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174713099358.31586.6720197021128010432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e40da1cbe3c0a1c98f1036b83df2d76c3fd35e3d448a9b4e383e7275a020cba
Date: Tue, 13 May 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747130993
