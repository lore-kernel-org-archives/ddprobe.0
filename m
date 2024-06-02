Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6960963B8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 10:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717324523; cv=none; b=gfcxa6J+ViO0roc1Hb5K5yu/7+13h7t/E7IcU9w9VinEBJU6UCp52ZWZasIXwUo/zF2OdFnpoVKR+cgAi1oj2NSa1bLLMCOD3RJMWoBmQ5ktqKZU8LaT6xMPDX3IDTSKs5OnXCa9vVwDiV4Xb/NyC9uPuxho81kScvTfnET41Eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717324523; c=relaxed/simple;
	bh=zY8EBmQy/w5KB3sEac+JG22wtbY+zpzLJTS+bo/77DA=;
	h=To:Subject:From:Message-Id:Date; b=cjtiFcGfY8LGNuNyOA8Ip/tx/1LiuJzNPoC9TfVGc29E1KR5BJQzesbBzyUxSXQ/e4jAcD1kVpO2Df6mf1lHftwH9b4Ggm11kh/6X50oCECitzujj3hsKTmdFVCOI+5h7odnklr4EAMWsyrIk8xLYR3VUDJHSXgRcgk0vYRAzW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rvMEYO7F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rvMEYO7F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C8DC2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 10:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717324522;
	bh=zY8EBmQy/w5KB3sEac+JG22wtbY+zpzLJTS+bo/77DA=;
	h=To:Subject:From:Date:From;
	b=rvMEYO7F6ZU8TZHC+h2G3YkP+TmPpNVhLfr4jZ1GRp1TNVzm/9rgMginDqN3iNceV
	 V6YClJypcJGW1zR/1Wroo4G2rMZmPpVrWUc8SQ93aLzTFrc+fofgFsvaAAsjpuiQGD
	 ce1e1DHgZp2Xmcs28fhbcekcwafDMbC6LX0J4cgslSNI2KvOt1g7zYK40oUf3Q8uI2
	 xHLcAXXXJDYadC1yLA8rXid4/1e9WW3uoJL1ln9NSxX18H+MuZlT7nXJ1LGdbngK0L
	 72I7h8fQZ24vFE9lRPN9Mj0FOFng9YDMBaB62bd0ipN41yd+iJ27+niaUYQvFLeOzb
	 h0PEZBomiWuwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEAB0C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 10:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171732452277.9729.8166196586963209861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fca1ad68642f2869be8a135327323be107bd71fd195a785e3201586f5b98ccae
Date: Sun, 02 Jun 2024 10:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717324522
