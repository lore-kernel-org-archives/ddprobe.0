Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04C87361645
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772712294; cv=none; b=aUxA8kS+Bl1ugNy+QH75HK5y+G8doyoEvGB27lPW3q29eyZipkfR4fHUkh/0pm6DdmyVM4PGqxnk71nJgl7oXawrSHqRh05+46Zh7/s8NsqmRnw9nZFseUkqg+QOP6j2LuEJmsK1nnJA6gmVVGUACxvHvhbPBdfByEngmyJABcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772712294; c=relaxed/simple;
	bh=SGGC3l7F3VyEh0T+RuEZqiqxSADhGCB4auOpZBqxlMw=;
	h=To:Subject:From:Message-Id:Date; b=N4TeHURtBR1EERZNJd5NVV7g0Mrhml3Gnehcwb8+e7GJEAHqq9s4aoFE67ivGTcJm4b99tnNX9gpqyYRH+uFYEXX3S+NtaF9k8IxdvKjQBVwIwHaOiWz+rXEhvB465oe46y0xITH6kAuFTJab4TOr8SyCwakr6vJ356yQ1Mmwv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NjwGteCn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NjwGteCn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6812C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772712293;
	bh=SGGC3l7F3VyEh0T+RuEZqiqxSADhGCB4auOpZBqxlMw=;
	h=To:Subject:From:Date:From;
	b=NjwGteCn1NmzsNAxThXsnPz8ZcsCbev8bUFsS2na9199wfUXJP/W72/OtOIcl8ku+
	 gLZv/NSocz3v6DeqA9mEc/CXG9OIsQ2PAaIYqupOLbDfYItvWrqu/AHA7BGwsnJqyh
	 +/WYH90VypHD/7PB/bImJiMgKDijNoSR7a39yic2bs1TgwJuHoj/Eyxia+9A5ecug7
	 +hhvjesT1fFfmDYndTDlq8IuwmO3wy2yQNa1nSt8Q1VUW8yHTpvdS1mZ7PC9UzWpvS
	 8+R8oEBVrei1EBbbIqKu/LksXnIPBbwVpP+ZbW9vzuvaKu1VvfNxoKtkBgPbgZO2fg
	 NFfntlfdN67Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95846F30946
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177271229360.9587.3046296785218489892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2fcc3bc3f5d1b2f3db4386db27c1b4cd9b583b0695c19d5a6f394054944663d
Date: Thu, 05 Mar 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772712293
