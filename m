Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2615306498
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 21:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775077534; cv=none; b=OemraTjvUqHD1opFyVVEB94juAHtw2Eab4Ja0EfMQi6BgGYi3IYq9yXsaw4vO5nVwXqkJNfY3/t5M0LgAZyoKp7q3ALciWP66CXeaTm5KEZX5fDIlC2nHWJ7mh3HxI/jfSFkRKVKg+/NwTiUI1po1203P2+v2z4zt0F/+RqXioY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775077534; c=relaxed/simple;
	bh=FGyK6pzRCYWZPAp67xVfRFsNQ6v2+iVy20ul3nWDfbc=;
	h=To:Subject:From:Message-Id:Date; b=KkBgZ+gSOFTkjQpfMBTlKVzXH0DVoM+oB1hsD+ZE09gFn7FAzG+bylb+fxssPsp4N8cMLj7gzg5dcpeSZSAZcDIT6vEJI6bah6AnZBKOnWWv6cMey1fe75P8YaP7gOEsLfu5LRdMYemziqAhpdaC43RRKayFB7Az1JetJhfywV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mUDEznjw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mUDEznjw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD9F0C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 21:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775077533;
	bh=FGyK6pzRCYWZPAp67xVfRFsNQ6v2+iVy20ul3nWDfbc=;
	h=To:Subject:From:Date:From;
	b=mUDEznjw0E19QP90kZEfuUc0Q8PrzdnXi66B+Y8n1u3svob4FQYcoxUxvQ72zxofk
	 TqFBTneyfq5LEF2T0reqSLnirjCiTPT9FjO2NB4nla2Hc2d9VFNd+BMCSSiwDFh0Cd
	 KI0BNwvnTbkbB1ZkYfuIQyUa3F922ONaEN8GwD472q7aZKZgzeRvEj1wfI0N0GG5TV
	 IMHFC5RECo2gBFy/+4fLA4vAWu0P3/WpbXFDbG9dfGNlXg2vv0G460+NPOqH2MLrkr
	 Mc5dZ9j4lc8L7DemLv/304G6yrE0W9iPOjZval/QqW4f/4v92vCncJ6QoSRC5u/CJ+
	 IhhWcsgPOP2nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBF510FCADE
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 21:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177507753370.9362.11269340038277550746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa5f7063dcaeef1bd11ab5c92d176ee276e2ac68777f0dfd09ff76faa4cc3396
Date: Wed, 01 Apr 2026 21:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775077533
