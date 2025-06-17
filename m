Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7A2E294A16
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750172993; cv=none; b=Ajuo+ph5xEXyG14gD0y69CB8Mzz8Ysd0vQHrRl3KEP4u0wT2lrO9ZObDJuH+0ZttqXfBYvTNy1Mo/wWjrdUVJ1NYxhGIni1x2VjXvcqLYqrHVZvsBFb9A6LnaZKwUawPYLtIeo3FQIDGHb0Y/VsNspaslKVDBzpJP3vq217k0oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750172993; c=relaxed/simple;
	bh=XWCj1Jz9S4kv2K/JEUkGrcFVRaVdTXKMUHxrJrcIvI8=;
	h=To:Subject:From:Message-Id:Date; b=IB3jUYnSeS6x2/FLn28NQ7wyeKO5EG726UDQtPFoxyDcSHiMOOBtcvf1QUAsg+v7LmRgmlnn02gp5Hj4Y2g8Wm5J+LUySFEDcCX0Dx7w12sr7+8AKRwcMBIh/TSKi8hHy41BZvRnY6/dEwVIP64G2tVE6r3zawIdGjNly3fzm4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iwKynAA9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwKynAA9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4044C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750172993;
	bh=XWCj1Jz9S4kv2K/JEUkGrcFVRaVdTXKMUHxrJrcIvI8=;
	h=To:Subject:From:Date:From;
	b=iwKynAA91bvEsjZ9xNhOGxB3S1lucwliDUhctCu7TyjXIrYAWXbpIuGnxLZoZPRS9
	 ACr9xML5PRwCrXXM70jKqnBmW9IcvUvPNUjRhPpww+NWnq196qw8BhXqCtlZArPVrO
	 MTbPyGLN/Z7yCvOkcBQUb7ax6xfAeAozMuzmKIJohuai/yPPGOVD5fxI8XKusYuUYW
	 rfUkb3wHfsFi+hyya3WpBYhV0SwKdDhpUBLCJTO6O/nKISfJXxHRSAwQA0EML5dCMO
	 kqc6lz4shrCSHX74msQz3RBUeqdHgAECRARHs/zJGQK59dyOR4+UUW+A+d9Ot7iaHN
	 3zYL8gENjAxcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BECC71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175017299358.28610.7348110505274620127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 998097abd2b5185d39ea5fa73d3f689f9d4cf632b4c759938bdb951f5926d778
Date: Tue, 17 Jun 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750172993
