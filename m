Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF7C1224B15
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759930793; cv=none; b=lTzx0FGqctGum8/8qz4K6/m74fIsMR0ghDmAww7mHQl+CywSpTixImwTomUXaGZ0b9B51J0lCbyKhCFHtDYmozQon52PDMrx8IaFG7+hEl23Fnjkh0zMU1MHrX79+1RvtXXXDurncCNjcqkSze8HXJ+z/adAlfZ4z1MmmsOYopI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759930793; c=relaxed/simple;
	bh=fvda+jH6Dn8EQP/pMIF5ta71Jqb4eIECG22KvLCQPQI=;
	h=To:Subject:From:Message-Id:Date; b=dEgYV3WnB9c0fdm7HymI0jQR9IPWvzPAUt9dDHeBz6SQPOA4mc13DSQMWNId87KI8agO3ftLrJD4W+94UB6+pl6Hvykb1HhQZ0s7Es8Xt0+a84W1qBUu+xvk3WcmEU3LQrjr18hYwrb9hIhQT1PddHQfhGcGuI/iBVMeJ6FIXOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+uy0oJ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+uy0oJ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C8BC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759930793;
	bh=fvda+jH6Dn8EQP/pMIF5ta71Jqb4eIECG22KvLCQPQI=;
	h=To:Subject:From:Date:From;
	b=R+uy0oJ084wJYTq2Mi+lJFAUYw7x9m38CTBodA2mDnCIzNXFwf8EISV6eZEmvYvva
	 UnoIS9o6FPrzGLmdBrOPiiIFB7W0XH46LZWraUAj+mf1xgMTWWuQGjj4sz0pJQvqTs
	 eEpfusL3Yd6krdY8Ao0OMTM0iBE7IjhJwg4HxeZY6v54arfNbKi440hV2qWfwxKU2w
	 BYl6KrfEgbJ7NCq4d+cj4y0y60+ulfxdiyKWKZSxT/cqk977xObUfaZU7x94T9GIOA
	 aHZQWamu1vEroW6OvI/mqdBG9XREg5kZzxyOT+Kp48hbZwcAwNjb9RyJLb051V4aej
	 6WiidskfBTXFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94488CCA472
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175993079359.4455.12401343091521845183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 333671057cc2cf8484a3cdc8de49521674123a842b3695fe6efea8178b48fc45
Date: Wed, 08 Oct 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759930793
