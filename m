Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C57B6DF72
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759453193; cv=none; b=JhcGuRdCI5TP0+ZNWxlqSXoe0baQgPC46QcjQNJ7DxCqR5S2lQ4JPprD9cWjCYJzOpTX8h1HNrYokMtfysXJf6jNPJLUMGw5vrUsD13YeWKoa6z+cYk4ltBhpheQBCXSuQHckUG+YBvt8Tz2fmzwTl39EkxpwCZfun6VRLh0fy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759453193; c=relaxed/simple;
	bh=3yaqIzNXf/Mxni6d8ZxMt4/6Sd5CIJO1p4BtjJ7G9NE=;
	h=To:Subject:From:Message-Id:Date; b=r72TWjI8k5pzmw6GkXPDvsZ0vQyiAyqluz7mC1edCk8UxckeBm1ZgteiNvdUdhXvWhmN5aRBH3xU7PzpZxArAFLfzUqEF6ridnCFQmT5f8NDslnAMTpEyMZiH43TOO/axnhCiOH0hLhxdwiqoxtA9whPkT+Id4KOTzWOUVIBJjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pkc7qIRc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pkc7qIRc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4624C4CEFA
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759453193;
	bh=3yaqIzNXf/Mxni6d8ZxMt4/6Sd5CIJO1p4BtjJ7G9NE=;
	h=To:Subject:From:Date:From;
	b=Pkc7qIRcnd77Zrc0lD93NENtcdC5S1feOjAgWS0u3LrzpNfP1s05P40/zaNCoRBZm
	 n5+wBRL5irgSeCXBpqDnxVP5l6SwQCXX/NKZSgxJ3Z0dNesjcqswj6X5rPOUsJPS3d
	 Pzi5qwYsd1I6WrUlg9DGqaXb4EktW/ADLRLGeDQxvwSa6uypTSTEEUqt0+cmk1u7J9
	 07pjMVR342jIf49W/lVi2wTCbXNvZNrx5O+4wkN4lt8H4O0RXctizmbQcUfVXAt6dL
	 eK1iCwtpjqiMW/etLR3UTEu67OCF7H07gV3P/qYuQ7W3jodblpCc8dHSbMkxm9dCEx
	 cwXz0GBLRzRCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7C5CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175945319357.24116.13560281893792454273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d105c02ff944bf17ddd37212173295c1e4410f8ca0ec05d9574e707c07c10eb
Date: Fri, 03 Oct 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759453193
