Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37AEE23ED75
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763087994; cv=none; b=PHvHvjkol09gQ6pVgptyWVJXEwbx7+UdmIj+cfU5+PPZQiTRD6qM/Sr96MTQcH/RgOO2rTTgoNyyarO34Y7JmWG1+85AbitJI2izpRAk1m+8/NGjg6S1aUW2Izo4maBTnL3WAQbvQSjZn2VRXmL9r8NtkupL3M60W+L4CdLwDck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763087994; c=relaxed/simple;
	bh=14IPbqBz55+HoprZIaVH/4ocKJHWSTn+gnwtqTGAtoU=;
	h=To:Subject:From:Message-Id:Date; b=HmGakfr7NR4Ld1V6WGA0/kSmEy0dPVpoHCLa5O656hRUCPIMEesslFHXmi05f+WeD3r3RmJuMgOLbCPPmQTs/VA0Cu9Qm/Gans8kR4WxKlVt5a0H/zVQkkK59vUlEnrk7BrOOj5w3cNRjSXQpftb6ptr0SS62lUFv65ZIEOsTzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/M/EZQK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/M/EZQK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADAD4C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763087993;
	bh=14IPbqBz55+HoprZIaVH/4ocKJHWSTn+gnwtqTGAtoU=;
	h=To:Subject:From:Date:From;
	b=S/M/EZQKpT74sLUh2d7ocjLikIiAhF63Zk3A3UuglfoM2wBxMNFX0+MCgl5bcZ2kq
	 rN5+roUa0kvi9ukwmOeFR8OHyS/XvUUlxOHSFtA/BZFDOu3rcwzLiFf4RjdFzidCEx
	 RGrJ7OitBxeaPaqiKTPDsiGhuuJdM8lvIfhRGrwOWr0DnqXEWD6Wu+TGKXw1dZ9nuL
	 WPKVd214zbAm9XWwouoMsDUUKC4VAZ51beBfqkhJcR0c05xS5ewl9v5FjC+PHMZjmO
	 KdJQ1JRP5/bHM8+V8fn6AVFXdToxqTYIQVrHg4mi1wPUNs8ZODTJE8NmCXy1NiyhRO
	 JQd0Qis4H6HCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96962CDB478
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176308799359.26469.17079176123931224055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8260b5c8ab2906cdda7a22d0f5dae811306460c4a22abb1738a8d831a694476c
Date: Fri, 14 Nov 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763087993
