Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234FC163
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757047794; cv=none; b=uWCQbe72C02O/LZ2ulrGz2/amApaUWhygW4RRdBWCmKoWgHZ0FcpKhUrvVVb8QxfMvBcx5N39C6lbBtc/N3szzl4448tz0m+zkwbWrRuhc4a+AtvXF96fhXCNHlobbP+5+cjgyWoz67WRmiji7suH+OM0lZ3tLMDhhKd9XGUDOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757047794; c=relaxed/simple;
	bh=TziIvVYSHCcfOjVaD+L33/5161Qb79VQz1PCZuP0g6U=;
	h=To:Subject:From:Message-Id:Date; b=GuzTaxiQZBPJkMyZWCFxL+rkB6+YhHTh5Ec4xQVi8iTHJlWFkvu2520758CdFQccLMUcR6FTp7moUXxh1YghEr0sU+W606FhDZHcXyLy9wINYUy5hUO5iba0W2ms0S7gIXRCZW9cZo7ABpHtsQ2c3ew/OjfaShdtNfyTRNjTYmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MSnZgYAt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MSnZgYAt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0752C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757047793;
	bh=TziIvVYSHCcfOjVaD+L33/5161Qb79VQz1PCZuP0g6U=;
	h=To:Subject:From:Date:From;
	b=MSnZgYAtNuLSIVM4u3WrrbH3Y8e3T84XfVkOiiUHmqO1AqHcqj6R9AkrPGOjYgise
	 a29aF1hLvenins6egiO4FU6YLvAuC0SK4KqRZbd5A2eeTFNIAu2elLW1YjFRKMlZc6
	 Ksa+HmJEaRJaTPBduQe+gidggWALqWK7QzNGtuOAhBwm6MEDnrfKn5/rI3UPReq0so
	 KOLWUKR8MnrhUdBw/aNtT25OD1VTM3AvItS24t9XI28OQe93PRUOoiobPhvn0/UENf
	 JCJ7u+FM5yly0pehgclClrH/nWtdMkXJXmjBDsiHVckDRfGal/jrOEU/oSukor/cRK
	 yPIZWIUaTZo4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5B9CA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175704779357.9393.11484972663074374396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbf942e05c724e1cc11c98e82d93e1dea03407561c15cb6e3b622908e08122b9
Date: Fri, 05 Sep 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757047793
