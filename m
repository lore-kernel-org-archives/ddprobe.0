Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B857DA66
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767705834; cv=none; b=gBJuZ9kIda1LUrvEE6PH4HFnzMLjjUTXhWA2enXZPYfmhMGY24TceH4juZ81AKdfzrzA6E5deT6yusm6oq+l5R6U8xm2Kh5VCmRjv+2WUHtEQpMz6BF8d2YlLHpdHMjwT/Y1EDunATXL2ax54a2LDxyFj9oH4ftAfg7yLXQuYiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767705834; c=relaxed/simple;
	bh=ArG0tW5NuEsrDHVsD9h/TkIL9NyX9l1od7J74QQvI/Y=;
	h=To:Subject:From:Message-Id:Date; b=AhUhP9vI8mInjytpCCjvL5es0pF39Pd9hpWhagiZpMEGLON19zJZDUCQnS+G5lGf7+wAiF7d3wNxczmbSu/yODOoGmBBYXZ3/z3VsQoQqfYkI+qUWM0G8wLaIywHjH74S5y18iWsPy5LRXOgGSYwAVmIxOVK4U9Xa6kasjf97o0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPl8i9ZX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPl8i9ZX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D5FC16AAE
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767705833;
	bh=ArG0tW5NuEsrDHVsD9h/TkIL9NyX9l1od7J74QQvI/Y=;
	h=To:Subject:From:Date:From;
	b=sPl8i9ZXdtwYFpuXXiwxPNCHw7MlAUkGpVuni7WCQQkk5dcKiQjFvnhTqmohTyh1+
	 jIBxC6KNhWMWPuzfq06ICdeoSXlnEFzpHwWsQD9R4QvF25sfycXwfjRJ9usWCs4xKw
	 hjJKpWPfWy+/nsR5tyDSt7bCjDC5ocbxYUN5/aO+i3K8YwuYxvCiwxykwHhl5uZ056
	 Tqt6T02Q7Jv8Pjf2ysh1M8S4/FtuPl/cQ9x/QiNWsC22wCTv33FqXOCHe8azzZhuuP
	 6GvyoDC8edTlfrXDO8T/iSTxtPV3FKFgnEJ3Rwn8tbo1zipy5zUAt/5WPu+/mvhuGQ
	 cgvdEiXIaTQPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9410ECDC19C
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176770583359.2656.8561307242592530455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e1a2f94e539fe33deb875b693afae5f0673a42e9b618d26a263b09d321e4db3
Date: Tue, 06 Jan 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767705833
