Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24238326D63
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772372694; cv=none; b=Baf3+gW8uL+JXPS6EGHtA8RPZIDmwWCHVxzPpcpDVJ/ACloYfDhWZ1HfUT8GYwc/2fLTUCzz7AbCvSZiR+Am5myuFwKcMS/OyKzpnl9MtMjFTPNpmV9Sc5HlttuE2aFNvd889xzmaLO/Nu0d+F0JD+HdetIvVFs34P4BAhxBnx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772372694; c=relaxed/simple;
	bh=CWAfXWF0r+BfrC8hF20ZpuBsH8wYxh+BfTUgc7NS58M=;
	h=To:Subject:From:Message-Id:Date; b=rDIJipcR+j+D1UV7aZiTGkSwAHczA1u+UUd5sdhhyNhi/LLtDWhrdduFlfepT9bqgJyrZp1tATKOTrKlt1TUYAWky83KQwsVLgBAQQViTmTL8ICRoeOGmIFVLlRFeG3jaDX5Y+H7mySE5vLNi7SEACFaLYqmgT39OuV4qA9fHms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AscNOf2m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AscNOf2m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3AA1C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772372693;
	bh=CWAfXWF0r+BfrC8hF20ZpuBsH8wYxh+BfTUgc7NS58M=;
	h=To:Subject:From:Date:From;
	b=AscNOf2mpneEdV7sksGkkOPt7YfellKneesnch1+wQxFfGuyPuFLPhOWs7m6/TWn6
	 pY6KBoynS647SBunqpx4/SB7DdFwR2xR9MQUYJxrXcePrm4iHJoi9ywkbU8U2GGf3L
	 yNKMK44Dwxf/y33J648HF4gOkbj6RCQgoD8f32mrJihj5c6atDKjlH7SSNxWMR0pxO
	 XHRnCGEG/rOhnXaBqDS99FpTGlgd8HcCMSQkGWGgmP0d/JS95AOp/fhuwthvUevv52
	 dDjBr1e3JmOlROO2ma68Uiw83S8AHI3VRDE/2YgyXpZ3OYi3mMahs3aHwqyWDCHPTB
	 ubx5z0/XS5tKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D073FD0066
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177237269362.16579.147880968363394441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 048f714e1fd6385c31f588474911ed503720bbc22242fa18e324fe8b9dc2c25e
Date: Sun, 01 Mar 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772372693
