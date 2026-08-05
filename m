Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C1BF45DF6D
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785932434; cv=none; b=ifAithBTnOd9ZS01XoP9UwiAmn741HGwTNESA55aP7HzksPKYMIq4aw6hqs54hFI2eYLOhoI98Bbl2YIvR3xP5w58nve+xPb7fGRzBW4CwWyofpuj1XxdLwUqS+g/xRPxj2YVNn8QTCVPFj//DIWpEV/nCoHwRZ1EsNyeE5Vic8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785932434; c=relaxed/simple;
	bh=iw8ncunQPSrAcgZspIMUI9QF8NzyYTYZHpq8jOuK8UU=;
	h=To:Subject:From:Message-Id:Date; b=PxlbwezcA5L7fLapej+mP5iqqhz/oZrjoy94RFWKvdRAy5l1oBAtu7YpsrO/n0Cf4UM2m49M7N59QMFFQYLdaoaN+VWZNuxfdl3WOySVuDvu+9TYj/A7wWQGtp9PPspBI2ZOGtttpUMLGTIeyd1vK46jXxtOvoBtE4bAJbjqFnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QFVcPZO+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QFVcPZO+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB9D6C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785932433;
	bh=iw8ncunQPSrAcgZspIMUI9QF8NzyYTYZHpq8jOuK8UU=;
	h=To:Subject:From:Date:From;
	b=QFVcPZO+EYvB5pH/XCOcaA9lKYRYIqV6ZSyt1qAjfQSQ0XxbKr5sn9Sp6uy89M+EI
	 eaDxKudO9Y9W6RQ7oYjRCFNFuEwT95YwHPH7RnnFN/uU5J25G4pa4hgGVxOYEkICrg
	 pxZ093P1Atk62MpPsTrc52YPmJlyDqeGJ9moX51Irgk1jwbB+hl4Zu+UKCeJkkaI1L
	 vAtPLXzLfWohpkLLMwtNfQKbI2cfWv6KgTasedl8Qkk4gbpS7G10U2rQwn+ol1kqau
	 i8b85uciDTscu87VmnWGr8LMucvlzPINOCSfp+jE5uKwY9ZM9q5Eqg2lp++Yad/+Uo
	 816IQCPXHjx7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6F0C55ABA
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178593243369.13866.9372333623721670645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c8f165846d07d65a810a2cbbe81ef5576a08ed0c61550922398159e991816dd
Date: Wed, 05 Aug 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785932433
