Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DFDD2A1BB
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746857394; cv=none; b=ZHjN7Oq+RU3ztNMK/LHDDM0XY4lsj0U6rkExZXbOeXkkRgyVIURvZGSkqChLrgJyb3kmCaXRf6HcBlyuEMg/N+O42ZLXalNHPY4BeUg143x24pcU5We490+mxgjkgi/B+6cml/nCptyJwTbNU7I56V+YAZdvcGznTZZbPWga4v0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746857394; c=relaxed/simple;
	bh=TIgoJMsxkLas9RLtaVq/qrA7syLT3zi70975FreTZGM=;
	h=To:Subject:From:Message-Id:Date; b=Xb/ARCgR4TkHrzjbAaq/mp11Fvg1DEcVQyIonnqhVZwr54gb40KgZd/ifdKpQv0jU+pNzCYSMu5FrAymPe91hVuYff3g6JuMGM6mzYv8vNxbJnP6FgfgOC5WvSvdhO1iHZ9h+MY6uswEsWqlCO2MB8OPFnuZhWkLHEO95LkO0ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HID05Qz6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HID05Qz6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3502C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746857393;
	bh=TIgoJMsxkLas9RLtaVq/qrA7syLT3zi70975FreTZGM=;
	h=To:Subject:From:Date:From;
	b=HID05Qz6pz/8wPhLw4trRzBXqPP/GF7z4CGOQVJ7bkvWfASUQM+JwESfHsnIJ8Jxi
	 cKDLqhPDpX4SowGcUtr44FRsO01JTZsEQTG8emh+K93VYKeGQM5n0b0VkEBLAVuOhG
	 dV/BeNBLjc0gq3y08zBrjHeJcusIPMSvIo5vhb/avQh+S3OceSzw3e5UfUWJIJXZT0
	 hdbv1nmaRP7Hpd0ijp+OVFqS/lRw1m2bdLhambs/jVSA4Vjqyv5/dFID6sCLvK7EG6
	 Tz+YkVjzMour/sS3SG70R35NOHXvolZinuZqQmyFuubwT2JzVNKm6asCivC6QuIpwY
	 wFzH5iL32hklg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91170C3ABBE
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174685739358.14456.8157068794163806038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d7fd88e63db2cf5d60848ac82f9247e1e5c6782f58f904d9993d348391ea989
Date: Sat, 10 May 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746857393
