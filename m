Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A8CE17BD9
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 07:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717227863; cv=none; b=kfaB+hyTA+nk2/neuxMzHpOmXT9d8GPMzI4LnhRo9K0+Sjl1KnoZLE5FXgY/tGdpZ+fgknyrSrb734FHWPOKrMWHmLhU1c2vmVO9cEv8Jws++rdyt4a2IRzxgyC9s/eMiEOxkZGKe7ec+ZXOPy2CWLl6HfYB10ltM4tIeFN01kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717227863; c=relaxed/simple;
	bh=nhWKIo7iwFrfYmkFGI/xtszkMtSrOb1uuFmXfCbuJd4=;
	h=To:Subject:From:Message-Id:Date; b=qGN9ad0wlB1xsZ5vYKbm66A8losEOuMOFYFCFX2VK1zkUyVcntGZYF15NkQ9PQ7GK5tiqXG4s07VMIa/Rke4jAJVR69iD5GPAkgQ+4JzGFtDZinGp17vbvYeWHyIUClL/801I2JhSDYxBZ5OEqWzSGZ4Z3oQiM6lChQwFqIaxz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NzVNJUn7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NzVNJUn7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05856C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 07:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717227863;
	bh=nhWKIo7iwFrfYmkFGI/xtszkMtSrOb1uuFmXfCbuJd4=;
	h=To:Subject:From:Date:From;
	b=NzVNJUn77XgZpOHbhthRxtnpEVF9Il5tnfLC3VEtc3Y9rixx5woYQ1D/S/HJpYA8s
	 1GfhC6G11Z9oj8ziSpx3iyeOhJTJJIqtfo+MOFTfq3CUrQr/lXtT6cNMWdG93Z25D+
	 k9jv92g4wLSTFhWsrxaxWZOAGwxPL/6W8h0PWPLkpTc3XNo0wVmsCBOZXbuw0EjQi9
	 YV+SeU93NQZcmAwcwkPFdYCKRpQWqaP4I+0nmlj6t84Va1e6DhyYAJ+miBBAaf9KwT
	 uLZo8F42kLaGvJqzAj7IJrYWoikh2MIasTMyyu9Gj8vwsbuD3h2br9WOot0kJHMm3F
	 SuM2BLU6cdbkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4D22C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 07:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171722786283.17098.8627261312811323862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e43f97f7c616b2a668daea2e0b2289f91b865c9e3e546169af4f29d997349b2
Date: Sat, 01 Jun 2024 07:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717227862
