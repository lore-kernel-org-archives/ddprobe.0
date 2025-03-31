Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A0F21019C
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 12:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743425394; cv=none; b=dgDAsRwRcVEGgZVp2IpxK3c8MWzh9lKpj6cht88I15fhvz+CpWyH7wHMqb70w5FKjuMAHZk89UK7ORE0cm4jDLXCLNTO6rmFm7XJGOFAkjvyonfeuMH06p+6c/FdJkvP7LNrrj56vwNQ269sgeE0dksBgNQGF5/75a4JpC+WvkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743425394; c=relaxed/simple;
	bh=Y2jIzXdjbUVESYAy3y+4JyWC39JyI6H08zaH7N+xdx8=;
	h=To:Subject:From:Message-Id:Date; b=ugvmHUyxbPabFzRNsLJRGwxgq3P5zE3Z4zbNzkNhaU5zqeQkW/M06Crr6HFiWcMw+mK/2chWsp+KTpbYm0POvELkEhfoXs4vmIPR2asVL80UcqmcOKlBA9wxL7AnQiUOxU1j+YNkBGHIFy/neflZWGUqLCN1aIsB4VENg0MruNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RkoPyw9z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RkoPyw9z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56F6C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743425393;
	bh=Y2jIzXdjbUVESYAy3y+4JyWC39JyI6H08zaH7N+xdx8=;
	h=To:Subject:From:Date:From;
	b=RkoPyw9zT5JcJdPqlqXSZFJtoHU9RJEOM5q9hxCUpfQimJeW5gfmVpenQWw+PubUz
	 cS/fKfjCr3FCtIPf3+/UoOI+tZ9rENj8o7D9s1ZIAqBeTS7KFzbVrDNx5xTEeDf9h/
	 on85zYxBacyuXrFjp+kueAtL3HvEDxSnyFnF0yTqnMKkXaaqK/HCZckYSr9iteeEIU
	 wPlzFHQsMOa106O1uxd0qoYAbEQE14TdehGHhcNi810pvp8Z3kXC8JxrU9c2yywX3M
	 lZepBFs5Fl66EOyqSfncM4xSlDb2/jmruEy1XsOp6tx6uB/o2HmBEB/yhr+dXR+Onw
	 AY4GVO3fCkn3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D83C3600B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174342539371.11658.6946581051091522027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb582d78a9669325d41ba71e997986ed1ac27721a010e769882f288ad562bf30
Date: Mon, 31 Mar 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743425393
