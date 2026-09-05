Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83F684503F1
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788604834; cv=none; b=ihatbcj3ZZEqT/FDol//cXh+bmICddDAXWAHbeX09TknhY9kOzMsrzoWO9pgqW7noD5pCYpN+j7WS9Rt+ge9MJnrf97Va67n00IfBv7zdHC6/u5SV4TP1xCuTpUaYGjY66oz33ogIHC/3lJhXkqYRX/kKm8vINcD+8zOtq8oFNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788604834; c=relaxed/simple;
	bh=uuZdmizc9P8/SkURBjEKeYBqUg5AaA0Yr8UgfU9Uo+I=;
	h=To:Subject:From:Message-Id:Date; b=jpbWEsKqYor4gB1PcgPnBAknhDft9gGq6n9Hfa5ncrmdUtjq+RPzjR76a57tM6mMd7+bNvoPcmZPe8pzD4h/QM/XjOgmpg5wS3TJvOrqIc3L2eXIYU9aWmCDwvNxTyAcnp7EPghg7czZ9Stf/XkV4AY/S5Tfj35EpFmxoUT014I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=erqZChzs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="erqZChzs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE30C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788604833;
	bh=uuZdmizc9P8/SkURBjEKeYBqUg5AaA0Yr8UgfU9Uo+I=;
	h=To:Subject:From:Date:From;
	b=erqZChzsnPBSXgrXZDoioK+0I6MPwkWNrP8rTZVNMXFeXhJQ0cqmoruaPer+posnn
	 DCgEsOXSFOovaZzv0WidmZutRgN/EtFbfbHRwgXaHvVooK15/IS8HvqSRK+aRNxMjb
	 UTrpzulW7f0uxwYY17QUUHzHO6ePRzFDVlbZPmCQC3KNmhk6FVRS6zhz72o5YQ8onu
	 rbdrmE0dhJ1VnfUIZxvZsQp/4uqrb/XJXs9j40nWmCeuqbsu1VX5YQEmLEMFR+nfRr
	 PRlJmwO9XvsKZEcye10uSIV7Gu6sN52fl7uSlbxmHSauB6qE6JWS7OEdCN1nSoWhPV
	 V5hdR2TTVliGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF40C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178860483369.27636.6245354804346682558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc3269b88d0a8aed3b8ee779a940aa287a734b82cb85c83793ea71dfa9132a56
Date: Sat, 05 Sep 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788604833
