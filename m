Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB2CC2C0307
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767683633; cv=none; b=bmXi1spdDhzbMQDOqSLJJvb+EqvyPbmV2gwPpW1oqjJkwKzioCOL28mrlX35D5bDuO3bLlzOuCKV3XxfP3jVXunhB08n9acDcuZDetMBrTBiBPOThoZ6csvHzFmb71vrS38KLsjP0FmIKpcytg/GVFfzBPBI6vvybxI8WLaXTXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767683633; c=relaxed/simple;
	bh=SFN3zxtwrCXhNQPK0w+ShdXpl7x5nvwnGSK21L+9+W0=;
	h=To:Subject:From:Message-Id:Date; b=nkmTKc6SpskQRuj8rAQx8wczN8GwJRsTIKoBunkqW4cIwaP/OpMq7CP0gKtgkf54mtovbvH3WaMEv182BQNKZxO0U1fv7fBI/3Q24RCkh3p7a9iF/GtUjYQpvdsnq2R7iOUXWjJEbHMa2sBtFUL7Huc2XUA+Ejt/MCaJRXueb3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ObS72mq3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ObS72mq3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C736C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767683633;
	bh=SFN3zxtwrCXhNQPK0w+ShdXpl7x5nvwnGSK21L+9+W0=;
	h=To:Subject:From:Date:From;
	b=ObS72mq3Z5EDAZYqC8MoZvfwIMNohBo5ygng430uaZis+oGbAkL5K4kxzwNmQPlHf
	 PGyJYMfIpWc/wy3SW8w/KQH+Xa+oON4bAaVZ6aLTv6/ablJyNFpyrntZ12yrYWqd4T
	 1ofhXw2teK+YXT6gU4DrHrlAadtSh35LXZzUM+nnZO4gKzsJSgFVAbYx0a2MkRcP6J
	 tnXnTewf4XNK6dRnzd09AFKhm+iZf/M5b6btQNiFnv8BSeJ3siROlhF4OHFgg2UG27
	 Mi5HoWATT6z076QIYavzZMLVv4ulhYJn4ddQqhmF+HM2mKjEboNHX6Jz+wTuCtTdNd
	 ImPf4ADlbcRIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F23FC79FA9
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176768363357.12661.12939437677926807586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f67e3658b0aaf921b6ede3d767f05767ace7dcc95015bc72987d44f36e6aec12
Date: Tue, 06 Jan 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767683633
