Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C92803939C2
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770210833; cv=none; b=r1ZwFxUot/zws09BCfLUi3zG7gVXECNLts8pm7XBrKERwDptzw1P++XZa4shgPavotmLCeM4W5ybkIv/EGzC1XG9bH4wAQz8Idzx5RIbwjr6jLgiiRQNQdRDHXYcXasMCVyqK80XePT0wxEwg4YbPkJ6njJbAgdTavqEUUw0zlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770210833; c=relaxed/simple;
	bh=9HAC2rBfu4srOeduFovrBftyW8l1ebcAuZ6LNXBQhn4=;
	h=To:Subject:From:Message-Id:Date; b=RxgUk7P6zY/y7JOT6h8DzW6CGXaBlDNTRWZsQU1Lckl85T8AtkC9DwQLh3LnbTUuYkVEosQbSXzQP+2VNfcrcQNdYnOVeE77VmuBJO8v+Edlz2OnC6w0j+GwbkgzoOpoRl2VBbqoDQtlidiEbvZ4oPgVQBpJGYmzhrIY6jdi24s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VLhVaq2q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VLhVaq2q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC53FC2BC87
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770210833;
	bh=9HAC2rBfu4srOeduFovrBftyW8l1ebcAuZ6LNXBQhn4=;
	h=To:Subject:From:Date:From;
	b=VLhVaq2qcJQFyPUNJ1y1nhh2zrcj+Katb40gvCzF0YF0N0ObludTZf7AzPqu954ax
	 i+q0slanNlQMmnmAz3Dgmx2Y1VK29iQSjtMLi4NQc+n+EM8sataI0/z00BkgB8VcFa
	 SN47/wP2q/EGvDsD2u4rhw3MWFYkXBv0NPNOf6jsKj1mYEF6oZSPo+euEU61F793D7
	 iuO4KhbwGf1YuHmKfPkNb20RYSTCU4i1SXTL9vSiLVul6dnWZtrgB4SlqVsCdLREyu
	 oMpwV3JE9NleKOA1wMCLY8dMqLUE92SvBUbSSqcsIDmmg3rxA/R9zZRcT8bx+qqWIU
	 zKwOMeApdNbOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8E1E9539C
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177021083362.2481.10315422139935467232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 523addc9229da8b510d268089df35432ec2d1470d47c75c448eacded4228606e
Date: Wed, 04 Feb 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770210833
