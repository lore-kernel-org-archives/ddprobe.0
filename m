Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346161B947
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 14:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721141723; cv=none; b=gYLohE/tUf0Dp/hnVKPHAgsNpKb19wzpbs63sINL5wREhf/l0RVtOiBeUDcAPe6btb9d2/nwEGFOtJ19TxeQMObGATxmTZeBtE0oWdmAJdUH4IjFKIALtPgNmeIWEHx6zJy4EYmaVVBeCUWJHBXFIp2dUIrl80FqZCeoTCQ9qh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721141723; c=relaxed/simple;
	bh=g9DJBTknuhaJqlxD7EKuXYsZdTXjjl9CfCXhoH8F3mw=;
	h=To:Subject:From:Message-Id:Date; b=tWA6MSk/wm3Y8WcyrYkgyqG6zP5ojWKADMk2fuDciyoCAXs+nl0bFBYmcJkboqHMRzTNL00wsb7jJJsQlZStTRJs7xL4e6ADi4vxOGjhpGd21X24JVago+K2jz5tr6xslvab48TGXbOGPOLKKiPnVWzqaJ+PYAkBMawVwIiykNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cvu/ft/6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cvu/ft/6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D22DFC4AF09
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 14:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721141722;
	bh=g9DJBTknuhaJqlxD7EKuXYsZdTXjjl9CfCXhoH8F3mw=;
	h=To:Subject:From:Date:From;
	b=Cvu/ft/6QlDhX4X98oxlRj50m+E2XG/qEHLgHIdBKHi7NMzEFltAhhEwIddpbmDzn
	 j2v1W86waU82LN35aREBKjGe+aJ2cwNuTybjpWm28W5l+HV0GpwO6a1D27nqYJJQpK
	 X1+eHI3GvRox3jfCbb0dSbUIBuixU6TcLwBiqoiBDZOeA0nVDPwFtlyFMbrLFZ+sl8
	 Qtl6mYTr/t6OuEfgE5ALdB/W+LfAyKfD+YMLhMfMzwMM+DMy16uMo1qzuy123PIElo
	 MBTRmaQXsXjGvBcrd25TZYNsh81zWp8GxJzmZlG+g+lQM/XuLNRH0eswkDLhUVdlqQ
	 SUFP4FSM5gLzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC77AC3DA59
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 14:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172114172276.23292.17924172049185852828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4724f7b244e407136d6a045a29305532dae3b8e8b842747b344ba7ecfda223c
Date: Tue, 16 Jul 2024 14:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721141722
