Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539F961FF2
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743880794; cv=none; b=pWeR6On5HC0pmg7tHGJ+W8Cy9KY0GcwWiFXarFsLdLQouO86tDLLLAnc9GpEaPo8MkDoE8j/hjAKbgjNktwCmII9cI1UFErJEaW2OPR+kxOs7jDuzDY4rQMTreoN3GW6AKpcq6xUsiC964QHm+sq7BRvjF5QiZV13u+c2/WZetE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743880794; c=relaxed/simple;
	bh=maGtgvoT2UbL4ecfHSDS/sdPeJMZHiiQxq0N1OasHjo=;
	h=To:Subject:From:Message-Id:Date; b=WvNYxzIIEqfBbzP781bSkCobxPaet1JEwxLm5DN+Ra8PKI9YYPZV+1HSuFUqmQYcou6u7qQ525SoVukX22lklpxRM9e7KrUBfjb4TJGFHuXPPZpktlIoAWPL9yiEWUmGlSYRaJtd7oYuT3qOo1iCKenVqVx+pQ5Z1rg2x8VU0ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AHb+rk7c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AHb+rk7c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B26ADC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743880793;
	bh=maGtgvoT2UbL4ecfHSDS/sdPeJMZHiiQxq0N1OasHjo=;
	h=To:Subject:From:Date:From;
	b=AHb+rk7cIzSW/8ssSILfCR4AGIUQM7AkojuyzhCF9zcRlBZKvwGDUYcsZZo+IcHe+
	 alMXpax6UWmE75pUWdr7R+vAzilKYk5mAWUgL/vikw4sos1ZY0vgjcpfzyhtC6ZRDZ
	 Gtk3DztQ9m3zTlvaR41JVtwa6cEOD3JR4OcbdtxOH2YHB/d/mdQN7RRB3MeXqi3Pst
	 3X0+CmYmHodGdFTVMN0X1bKwo8XCMx4iYyucOltgQ9bv2fOa2v4Z/YJiQq8Fb+dXJn
	 0l6eZ1LGAp70A5C5t37+rdk4WEODnL8tJC0pgiSite8VAwOBS+n9W7RXtMv4YKnK7u
	 F5/g5RnII79wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C940C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174388079361.24337.9537986958512800268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31e23647897796ab1ba954eff00e19834786db5470242e85a48114a48ab34cd6
Date: Sat, 05 Apr 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743880793
