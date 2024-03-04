Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E4252F30
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709515696; cv=none; b=pD4rFIBAHe0lMD5VLDst7EqAch6T0A829CRrK50iRGx1jBnCEXkR3jp3hfN9yBnH+e0YnFxdzqqMf+FNv1SziNrCgd3xpBuUapwRRGUZ0yUvZOuDpedqCa5aJm75yCeVKGhOQv330vw+Cnub8CRkO4/VU4uWlh9nozIWk32+C8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709515696; c=relaxed/simple;
	bh=Ytzpcdh04QrRPi3jOC9HoexXhy/4QCWGsy5gu2QIfn0=;
	h=To:Subject:From:Message-Id:Date; b=U3iPkWds7A52F3KIC6PMyFgm7+T/lu9IQOE1BweNs/XJ9MeMCE00R+cuCeYSN48W/gCHkcjyS/YI4ANcBboC1M0v5p9hW+37bplORlGujGXD/7/aCIb3ylveHtKt5SlqpEkWpQWpNiT/+U1WFd/PhZ/soiJ8i+ajF9PqBJlXFVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Avbi7PNs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Avbi7PNs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76A66C433C7
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709515696;
	bh=Ytzpcdh04QrRPi3jOC9HoexXhy/4QCWGsy5gu2QIfn0=;
	h=To:Subject:From:Date:From;
	b=Avbi7PNsd7QVPiwiMVm19g4mMMbU6WL2ixMDU4Odvx6PbDnxhkoDHFLsn2JKMPOs0
	 AMY0r+jn6jrGu9sDcNsDpGRwK1JOILNBcyPBywkehI6k3sVnFde1YfBDzvEPzp70m2
	 8ZwO5KR78MB+/9V3iuBy2n2vDNe8W0hjhF0V0LHMoWnrvMw51e04i+hJjDIXf2LyJ8
	 lsYFEHk+Ikxle4JLKgfWXP7u/zJ//rK9d3wDKLscMJuB+INdgVANO172oYVxFHRmzp
	 bRfd+ca+V6sH8w3pgwjGUsqkvUufqY5BCBWl2n2dpG98cWYPVPO+EWG9JMvADFd4zG
	 HVJJMAwjCaBgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D5E8C5475B
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170951569637.5187.17598767367298459133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 235ffe3aa7cb1f56d8468c9cd191e7d459c068ab8550b952e357224abfd2980e
Date: Mon, 04 Mar 2024 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709515696
