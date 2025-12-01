Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28998306B17
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 11:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764587574; cv=none; b=HYITBkZX2LvrK7zas7wWHL2R4F7dG3/mB/19mC0O+/asUZ/Dy1b2Kjnpi2HTcvVK/JhF5fvmPnbgj2K8I+2gm1NqcAhy6ureQEp25F+0kv8SxxrYw0I/JmK7nbND27zB/rCLM97576lvgtPAjLfHbz78+G/DfQmoGZeTggyd6So=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764587574; c=relaxed/simple;
	bh=wBA2QS7C9FbWYMhXYZ+3r85Kh+K/L2bqzR39d2vFq4Y=;
	h=To:Subject:From:Message-Id:Date; b=ERmVvfBV7upsJzjdoF/ZkU0Ou3R1AMw+DEqOt5R6tOHpjZcV+xu59fkXeeLfp3rOaGDXb8BfxUfUerWqfWLXjlf4nJzqJ+YEU4Dj+DQ2H486WqTALKHVSwPgv+NpZyq6qBAfcX3gq1fEen0DRJgc6zzfAQPLwP1v6bbM8OTQrps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2gH038m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2gH038m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7126C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 11:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764587573;
	bh=wBA2QS7C9FbWYMhXYZ+3r85Kh+K/L2bqzR39d2vFq4Y=;
	h=To:Subject:From:Date:From;
	b=J2gH038mLSkRATlLFbUA8cY0ogPy++gVI/AjWAooCFodbskZmP3py+ATe5nzJcMm6
	 i1AclmaaqCrIJvHi833LvPF8+uryHA3QS4bPBkFK/ERILOGRnRku3w2tBJsgV8DWps
	 WegJ4T3If1pzGawrFIwWH7iL7nxV23ZYaAjEOk91V5z6LasEYyMDP9DEB5lSkonWL4
	 K/Tq6VPLhMtzqN2QRXHtx3N2IepKL8LUumieuGqcOyCcdWLq87lO/JK4JYe5DrPsa3
	 27+i4HMICUow/9eGxZaqmPN6Gv1KEMj6C/XdCDDbBwo+R8ReeyZclnBUTMv7Am64f/
	 GpS3ABJ2x1iHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93864D111A8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 11:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176458757359.1917.10639291654689055551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eabe0fcf348f98274f382e719e03dbc4f96f05f0218b3c199396f9485cd913c6
Date: Mon, 01 Dec 2025 11:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764587573
