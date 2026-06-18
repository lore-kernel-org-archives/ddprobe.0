Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 631252652A2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 14:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781793394; cv=none; b=sckmStQ2ob/Ai27cfhOBubdhwSE4LWwIQado0gBgTiAnulMRU7xFf9zSITJcF/n6D5jIU5OqmN7jLA4YYHufK0+QtlBMf23QDWMlqJqU996HI/Q5JmStHo9mHW2cGSUdvuxnczDYAz2cTSNyjrK8xRE6AxgaozmhH7EUtZ9jcLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781793394; c=relaxed/simple;
	bh=RTGfRb+rNGs+TYY/1Ca1pwKsLPNsZw+SaWfLBeT0h8g=;
	h=To:Subject:From:Message-Id:Date; b=caMvK4fAnAhtm6gWiEQr5hiZCozUkazGBc5DeF8SxbsBiSFVVuzbBRNMMq1R23hDBx4X9Q3nkxOoWxfFy0TqEC+tZXPrvkqQdK4/lxYqmThgj9WRUvNko902w93M5JOEUaVInCNaQeavB2S99/kgQtnZ9B6X9uzITvfd0RmMMgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qpJ3T3Mz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qpJ3T3Mz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0372C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 14:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781793393;
	bh=RTGfRb+rNGs+TYY/1Ca1pwKsLPNsZw+SaWfLBeT0h8g=;
	h=To:Subject:From:Date:From;
	b=qpJ3T3MzyfcWDCk6usW29C8lscHhdqIBB0pzLuJLVXehs5zTtG4+VKEAryXTs7KJT
	 I+TiBK1NHqZTDDXYS93Tj7s6F8dEf53lDdU5ng8xdOllLLcFUYqLYQKYP0KpqZ6KZH
	 C/lfLfk9wM/cE5Z8Cgwdewh3+RhqxEdFswzPnmFkVf6t9gesp/95jjZntUmmXNIBKi
	 Iq6ozhhpk08m4WF6qEdHBmmdo5skC0pFKLlGCCdwJvaPgohr//WPRSZ4LneCFgRiQi
	 R0Ej8KbXhphTtH79EqZixcoKxHna89lPmpFaCKWwvyOPdu4NBvIZUZX7CW4Z3POnpR
	 CTn93QIw2Clag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAB3BCD98F6
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 14:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178179339375.29646.3469478078677347401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89933824c7dd795f0ae5f560adf9cb7e97c3b5b90dad1c1914eed012a46ee2b5
Date: Thu, 18 Jun 2026 14:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781793393
