Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE32E269CEC
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745843394; cv=none; b=CwVzOIwSelzSnZIzrIHbLYY55q9iYzvryoz+Yy0SWujOn2IgH0OuHP9XwueYLYU5tMjOzdCp/fB0fgZPGdorqzjBkzyapjhiEdiBe6KgSgOEJmyyEg/2ONixLNSRycRT0Jge0Z1f+/5eoZTpj14v/KaF+3OTmDGw7vmvvyz8gak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745843394; c=relaxed/simple;
	bh=njfqg4/rWr9pol3GoHBcbtf1H0TZHEjaAGVWGkAAlrk=;
	h=To:Subject:From:Message-Id:Date; b=EJ1ykgu1Uv7CJZ8x9ov/HR/BPso96cDGDEKHxAaG5PT3FwqD6EyOi86mOir/hAlekse2wz0tINK91hWjQjMpU7KrLU2i4CvbFqDqsGRSHPmfG4ZQtE0ldrA8S1o9zMOoo9Z7CgrVao4AAW800KeaSkvZ1SXfFkfPay/iEcsSEtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XAZOzQ55; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XAZOzQ55"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC611C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745843393;
	bh=njfqg4/rWr9pol3GoHBcbtf1H0TZHEjaAGVWGkAAlrk=;
	h=To:Subject:From:Date:From;
	b=XAZOzQ55hYl14NOxV1jTYvNBi1fU+8ySCFtLaWkLHh64MsNoBsdUqq3Dt5IsFjxeY
	 V64rBI4O9z6Hc8g95969NfHcH8CscBjiXWeMmVOFx/z6yHAeTr5YkRWOum833mhh8n
	 MoksPVUOi4UGTccKBGU8mnWbk2IDQMD7mgl87TXC/9thpHW7RtE8hEyQoAbrpjym5+
	 mxjTYekQXx1hmGkMQGBlvqzn031lXnTYMTUaLrq83kz1aQV2VDAlFVp2qiKNWwj/fc
	 EC1CmPYZjJB24TevWWyKbYx3X8+aB+oN7NoyqU59q/aXXgupPC7OJWxHODDq4YHrgs
	 M5iuduRBOkELA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A22C369DC
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174584339358.21419.18204514384091760933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff2374c78730b1f6ee91c14ed958c0c19395f23f9d5c2277b56b3f9e1577feac
Date: Mon, 28 Apr 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745843393
