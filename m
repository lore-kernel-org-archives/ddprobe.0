Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A35E13C8FF
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758194395; cv=none; b=Xb194jgcZaiL9Oly9C6J2CZ4PMJqHTEbGnnfJRAgQYiS/1fWCAr2GxAm9Izzzew0d7yMrNn5fn5TP5kMAZ1Qt9+m6UxYZEEn4GFEKsMJLHwpxzuSuNC65jvh156afIQHLR1JhnID1vKG8Fh7enFQeir2f4oAEZYnmKEn2c6MhlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758194395; c=relaxed/simple;
	bh=oEM6s+ak+wZZx4nSJagff2gzDKLEoGT16Z0+OI6EJmQ=;
	h=To:Subject:From:Message-Id:Date; b=CRNULeAA/mpkazhiXd5VRNf7iKlQxEA8eiPnjppTFTOGyHZ6IAV+pqOaTJ6HpSD2ZblkhzLYLUmcGdGegZpsKqbjebMvrrp9jA3xL4VUlogIFB0WORKKd+VJlSr/B7onYM2QYGTK8RFVOEvS42s9j1TyxHCoE2m8QL6PFok1uC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rqTM/yyj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rqTM/yyj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA6EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758194393;
	bh=oEM6s+ak+wZZx4nSJagff2gzDKLEoGT16Z0+OI6EJmQ=;
	h=To:Subject:From:Date:From;
	b=rqTM/yyjay8kYIXxTX3WmcSZCY7O2EX9Mpdyu3O8yuHfy4yE/FTeOWPcBi6g5NT06
	 PIM+SmP3+5e509o8VAyVZNAyOfCdllG42FAB9yRPnstgZ0VKODCTttkxbTBzCoZIiO
	 exnpQv3yVMKr2HZ1znF7r8WMgeZdEtTLhFgn4DEXqP9iY+/HojA4nOkhYKEYXqp9fb
	 OwADShzAig4jwqDeSW3jIETnHc3fMN/qt4YjFeRQBG5n+hUsAPu+Qt5S6SsI1m9eM4
	 EZkfI7vHzeGcmJtSBpfy5ouU+tS7dkLmsOWws+fIZRGEaNJgClz3RsZ22iZx1OHnSy
	 wQQO6DBndUxFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DB6CAC5A8
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175819439360.32236.5492051031328240049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d34056d6fb88ccbea3c71cf4f6bed68b551621eed3dd779b8a4936229ad8dc7a
Date: Thu, 18 Sep 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758194393
