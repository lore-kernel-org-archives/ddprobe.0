Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69157224EF
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 06:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721112923; cv=none; b=ByX3QN93rLwa+dcyhtHryUt3ZQc8rmQVaX5ufyK6Hon6IwT+o4qPES5EhIzKGYgtPZta/OhatNTKUjwwSaxim5L+HKNmwQ9nreGrwUN0Mx+M3yr86sO3ZB9sa1ite2DaQC7/HjMotL9mKkxFVs8WfQ68L3CNys15Q7bj5trPGgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721112923; c=relaxed/simple;
	bh=qZw4MQsmAOnipOM1Xz5cqGnmmXDVDM4O8GZe7XtxZ/s=;
	h=To:Subject:From:Message-Id:Date; b=oS2RbBnm5MrH+GA/+66dYsmDlL6o5FzD6M85X7owF3QJScjuwUIVWN77MNkb2yA43tCbyqJpNja9ym/zt8w4uX6pWmorWFILd3gDekgpTlXLdBVGxEqj6aeWmhez4hYltfum4LKxlrfTjeQdYuw+C0ueyr4NguohlOIt7HMMr8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=McKVcPOq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="McKVcPOq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3139C116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 06:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721112922;
	bh=qZw4MQsmAOnipOM1Xz5cqGnmmXDVDM4O8GZe7XtxZ/s=;
	h=To:Subject:From:Date:From;
	b=McKVcPOqzB6EqC9KpleQT6UoVMOUDnFV90SYYCdRhoQ0m9b1YEX9nujM0/SA1LzzE
	 rno9x0dH4mOlloFFQz5s1CGm7EENa1d/CP60GVgBxSeEWcC4pun9Etvbi08MyT9ge3
	 0fZoDozUDR9cmwpBtd6/Bd9W/GNuqYiVo3xwEhLurjOcupI9SS7f0ghGCa9DUv+H55
	 Ke6UGb8RbTFVNb6Gk8DqjUtlZs9pgx67G6QzYXTyDV1AeFfTnoxLtgqMunw438NcMb
	 1e8lg+EPcXl6mP9itrthjcLKnYGA553OlK3sUmn/ZXL3OVdVlVbChFp5weo0QICedi
	 L2MNQ2aiKkbTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE84C3DA59
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 06:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172111292277.19317.7507985069790253777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6e677067822886635bc08d3758392ab7c39e0214c0bc20526a5c761ac127b90
Date: Tue, 16 Jul 2024 06:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721112922
