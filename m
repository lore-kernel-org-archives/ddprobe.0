Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE09231A04F
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 04:23:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769142235; cv=none; b=uVkMkoaYtiBogsD0FvTthEiuglpoQjSR9sOKEy8KyRY0YPj9KP32O6kRzuvU/lRpSJ9pgUll1xA4VuEck+sxyUK3I22DbOLXx3s67YbEBfSrJhrS6RFlVPYt9jSwUqY2dWkTw4RSFgsTYFGmT9X5oN3SkmR+Z/sF1wmCokPwUoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769142235; c=relaxed/simple;
	bh=dNelnGlTXNJHXld1M0goYgGE8g8g/70z+pfplo0Ejbk=;
	h=To:Subject:From:Message-Id:Date; b=pwN02t99iXrC5Pj7e5t77imbl8cdJs3ZSKUWunnbZ+diOWB7iRIQzTVu5FrFsegvab6NV0O94rDIs+qiowu9UEFiiX5vG62TStoAJ81BrQqlRCY9TcphRQxkJukA84izQiLT3LM4OIy5qNSoiF+Eejh6XzfEEW9e26E4srhx+Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jhSZGuAv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jhSZGuAv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54F0C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769142233;
	bh=dNelnGlTXNJHXld1M0goYgGE8g8g/70z+pfplo0Ejbk=;
	h=To:Subject:From:Date:From;
	b=jhSZGuAvF9TfNUPBZeXDsgM5nGrl74q5DkV6zPbN2qt4Z/P/rZ4a56pWFimtwd2+7
	 DtmMgV9pbVXyNQi5Qm0wI3+ihvVCBXRY00ejH19vKmSkVdSZrTo8EtAXGs6THdG8XZ
	 o3HK6C+OO9Hzr0uV54aX099RTYrKck+kpflv1WQFkDkz+MXG1KGV5sGd8K2Vw3O3p+
	 qkrenBqE7lh5UaZ65yqp0pf7litWmtvt3ejXL+lFFAbvAjdcAgIsfywyTi/40UCK5C
	 Z/r5AuqfrfAwEQd8Yekq+WsiaXL3PzdNBFYuXzP+oR0WHcUCXICPur1RXJHRd0vzFt
	 z1DmZGC6j2d7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DACD6CFBE
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176914223359.32037.14748977897033371408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af98a9f4e57a25b2ae56997fe336a4a76512b3986d066034c60036e354a010c5
Date: Fri, 23 Jan 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769142233
