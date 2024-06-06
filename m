Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6567913C679
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 07:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717658843; cv=none; b=oQAQunEpapVMSDNHg+93owrE1ih1KSqaWl2EvfNn3xYW507lrApGD/Ud6iD6XVBeeG3G64i1qdNdB65xHIiCqC76Te8ewNS+4qxFKBT+ZBoQRTpufUJ05OaC44rL8RoxU+rBxZEykGOUWW6DUbIsdUDFWqtaC7udenA/K+X2nmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717658843; c=relaxed/simple;
	bh=jWiACqvap0cub1CR5CTJR6vpf+3oc8F3C7HeEibiMio=;
	h=To:Subject:From:Message-Id:Date; b=HAJc5G/NfoJrIdCvF8YEaQ8irF2Itx6oxYLiGqGUHV41dooz2U63QzC+qL71GftXHrnAQGuJ2MWOm7AnXHpXlblsFZqWQZ0q/Gj67osOyH1/g/C/wum8QgWBvGFDbN/rIH9x0xHSdP8MLXN5LDg97zeWetx8SSD2wFiie1j5Lvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=guVp/isN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="guVp/isN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34EDC4AF0F
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 07:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717658842;
	bh=jWiACqvap0cub1CR5CTJR6vpf+3oc8F3C7HeEibiMio=;
	h=To:Subject:From:Date:From;
	b=guVp/isNutMUUxBRcp+Xob4md0qkadZyp5LFCs04BhcpuYPQ6LKQlaoLroaj/gx91
	 9+wHSZZ/VufIwUCE3oJsJpB+LTLZi6qiGB/sff0aak0xbukZuiqRihDqMf0N9612Fp
	 rddIUQKBU4ELKlCTUiq3Pp++GgEbOGDl6tpXSjYkGHW9TknvAwiSswOeQnF3jB79c6
	 XWwQ8G1UsaU0NblTIELGUlGjW8tdi7fF6HgGTY5YSm5uXZlpjAZfkN43Cb197G76u3
	 xWQoeKD9byLv3uf+gXUGdq9l24frdbN74rOo8wdGHE2AT2Y3kp7BNriBqXUOWcDe0O
	 muGzyQKSwVQ6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBE4FC27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 07:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171765884276.17238.3527372566582823258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a96fad3b452444773488b90dfc58661113acb16f87da329bb6ddc7cc9c4a33d3
Date: Thu, 06 Jun 2024 07:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717658842
