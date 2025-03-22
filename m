Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3629722FF44
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742665194; cv=none; b=i+7bs7RnwReOel8hyhxrfxmbCUUVKTSrPRKNUdyW2s5MmYyPf3A/zD6TTrr54PWyfd8j5SPcrvEay80uFF5Y8g5aXGYPkR+nO78wXFLGXAU8V+cxaO437XOPeJ2tY5GQckPeeY76lJB4cPLLCc5IOk6HK41M/RDh9TmWdCOFzug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742665194; c=relaxed/simple;
	bh=UMwO+2nKX/Hx4kY72JBlnTa7wq3tqQTDvYRS/KNJWp4=;
	h=To:Subject:From:Message-Id:Date; b=QzmEUe4IaeIpYxFnEvfl9hxqwp/7T8y5JS9kjbDMxLazVMSHE6tLqxd5t3XtGDLUWz/037muzb6//6K9paL+QOW4SkufqyYoseDpUpVUagOD5khbm0g/2r6+vxYJYxIbBA5hHcEBP9bg+ab8EG2BqPgut3OD9ntyYWPE+IXls+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjwquCix; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjwquCix"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6FAC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742665193;
	bh=UMwO+2nKX/Hx4kY72JBlnTa7wq3tqQTDvYRS/KNJWp4=;
	h=To:Subject:From:Date:From;
	b=qjwquCixhUwHnAepIOjixKDdeEGpRFyzHxlXcdbEhN8RFxd6UalFyFXkKqtZufMww
	 KNKsXMZBBQRYL6QvT41PcJXDwg6q4hiXMr3wjAcVOMIZBhMYIANL0LGZAcckeibxkY
	 uRra+ySAD8AJM3C1tYCbZT6bVvoAeukcVeb78jjk7vcOWqDUt2CVGfoHYo0t0ZJyj4
	 brmb09/sYvf5yWsJ5nF0Z5gf2AclpYyeOjcrPzloQvCPlffzvvA6QgrOsjuqm0TUAE
	 WItPAfUpyPLzCAwHJBP9FPmOeZ4UDpX9S5a7i7QUJwtJC2DBR3X6L5p1cNiITzgpuc
	 6IskKANm/IpIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A0FC36007
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174266519360.24171.4572645298917446163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4447573bcb5cef14fd944703d1cf16b5f46b0f8df5dffcafa13e54f0289022e9
Date: Sat, 22 Mar 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742665193
