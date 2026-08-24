Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42152757EA
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787554234; cv=none; b=u0OrHGsZVDPwuaPyXTU3+q0yKzQyooXlOX7UiTEtlj+htX6IsLgVkJSXGBmR5CsD2/SJwy0owI0HhGNEWH71HYlkQaHLx/JSEE12bkhLH4L4wRYn3FMM6F/uCHk+iExpn4bo0CzQnghXGHzSSQaxOgw4k099L4BO8YlszSuuZmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787554234; c=relaxed/simple;
	bh=l2muPo6L5IEZIva1e/7b8QowYAgAsbLttzAyD9sj6yE=;
	h=To:Subject:From:Message-Id:Date; b=o3/JkVQAqZ0FcV93647A2IFK8MRSK3dwFBAvbnqgmxAOVZM6Ni6NmKquXfnonxa0XT7LjvJVlYqVbxpDhUKN3Wn16nt+VA0LV5qpPnVwNi8KibNWhuF5LJQoy4PfO8F4G2PnVjoYz5ShEplFqDXdyeIfiixWFutzE3i8s4VSrXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Epr5lM+O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Epr5lM+O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE17FC19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787554233;
	bh=l2muPo6L5IEZIva1e/7b8QowYAgAsbLttzAyD9sj6yE=;
	h=To:Subject:From:Date:From;
	b=Epr5lM+OosRNktfJIMOuPITPuE2+JDzdACkrfmro86zkY65UHeqt30ZPWBPuJmTXa
	 gh0jjpmeOS+eNYTc21SCRsCKYASu0E1TwnE293nacfhjDFZ2AQli8XNLO7Tj8TLOkW
	 WdLWIeWcRXVe/ZMs5lUheyVxdyxogZl58en1GPAeL25s2CCwMkntngC8GZ/15tNntW
	 yciLq1KwlVgzJ7FCIMjCTIe6l2q1L6RNxdc92HRenI+YJ0v9YYgGk2+4/yqIt7yBnP
	 xZGxbS7/cT4qCBNifRIjIMXxnyfWPMzvjaFDb/44HozL1c4N4NcLKxMVjLe+1mObCk
	 BzCNbnhdRs+Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEC6C5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178755423368.7244.7806233070013254135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f3ade602bd8e9e1dbee63be1765ce413bb3e421543e2b021182c0a478df535a
Date: Mon, 24 Aug 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787554233
