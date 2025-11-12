Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E536A2EACE2
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762985994; cv=none; b=MDZ5QRR7N9+uQOeXjPUqU6aqR11zofI0PwhfOip3+sQKNWJSeLQmZ7jFT5Y1+Zor3KJtN5edNVy73acdPyI7QO3XfVLKDlVyPoVVr6LgXgg1wR0qs3tiaMxHIFwAJudblncZv+KrIMnAWzQoiHQCRzJNRcVdkKFI9+aUSmyG464=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762985994; c=relaxed/simple;
	bh=wnv3RqxLPvS+YQs5zimeNEo7V/G69ew8zEUFpe7Ta8s=;
	h=To:Subject:From:Message-Id:Date; b=SJShaV0F9sXzdFOxa3h8WAcDt2QODo1JhmPoO6YDBnnYUvNrOk4xtMKRR2F3hbnz47/lG8nmSNYu0+n3XmrQlmJMdp5D1Bwaa1gEr36Mpn1/AYaHWrhdoj4wjlBpGySRIMcH96Q9/Q/Q42rotHhMzw848ud6UJ/o/xYQiHrRi4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cDcgUyoo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cDcgUyoo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4042C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762985993;
	bh=wnv3RqxLPvS+YQs5zimeNEo7V/G69ew8zEUFpe7Ta8s=;
	h=To:Subject:From:Date:From;
	b=cDcgUyoowwgWLoMGxEVhf49w5ANvV67kMqvlba5yMHFSE/DYv0hM+couGxwzBSeqJ
	 RB7WXdL+vFFjUVqZVpHDLWWOgA3YkHulo4cBmto+PhdNsqVu6IbgI9Raajm62e41bU
	 46/3th1T7RXWEhXfVqSDbT61MvOljwra6fHPQ0lBNe/7oo8GLWU27W71VXsI1PRQNM
	 c0/Js+lwzHRK3tiCOJuLhOANWO4GC/pecCRm2tphnUcXEzFdw2jbslLPhWqDlZpAFp
	 oDEQ+g03t5jqgszGqh6bUF1WP4xcI2db87pyeSASrAB05SxQoTYD5LdfgHbeaSA6iI
	 bvZIAq/r/NuOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B174FCD484E
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176298599366.19249.12374806565577628266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c6f20b37daf8386900026c7c7f5e9aa935610562dbbda922b449c74c65f792a
Date: Wed, 12 Nov 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762985993
