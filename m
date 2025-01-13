Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0391FDA85
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736762754; cv=none; b=gsbUg/7t63d/Gdx9UTKHH3lZvECT0vrYUxmOgW6+eq5QRW91JwgalfPDzYb61K2RsZz2aimWL/7asQTh9eelTJPg5Upy1vb1sdqW811c+By7ApFDIS65aby2x1C+By+EHCIUFVfqM4uq2ffcKlQcADe6UpTj0XdBeKkMS0xJsV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736762754; c=relaxed/simple;
	bh=LFD4GRqf+RkA1ZzXbCQYyP4DoSkZQ+rktyZVdXVEXCo=;
	h=To:Subject:From:Message-Id:Date; b=Yo2Z/0N0W352gtGgNPF3REfPWW9ENIxdV2kXnkk0N9q41cbXRuDTfTREdlvFX21xmp4M+hLRLOueOgw66MIe/8WyBQfZQnCV6RaBnTQPGy8wGNt0pegpSbAKM8jo8H5nmB4KhdcwMnqyBVQGQH65OP24nWr5qdmEq9IWHjqkbk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gCyuXD6J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gCyuXD6J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A6EC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736762753;
	bh=LFD4GRqf+RkA1ZzXbCQYyP4DoSkZQ+rktyZVdXVEXCo=;
	h=To:Subject:From:Date:From;
	b=gCyuXD6JC45DcGuyBtkSEpnlgfyoOh0Ctb3VEV4iB2ZwhQZIHIMtVh+mGm+bO0mQX
	 7aYZA+244mnRSdeDMpS7dJNb/VRrBkXYPWm90f0xAyk1oEVsyzCQ4QD5RMkO4RpNpj
	 137BT2cK5/RBC3mrEHYgc4VeD+Di4YoJ4RlSi6q9gO4NFU75W/7wUQFqp3YJCpyihG
	 QvsbLcilnnZU+YBGoqyS9649a5e9+cRPJSPkTWf6MIT3M+D6jQS5XaQJimrDzEpS77
	 F18s9zfz5DnXhwmypjCZ/45cwalRlbMrSsrp6Zfksm39BipTZiIsEJAyKBd7VTMS+2
	 MEjbPhHW1QtLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933A3E7719E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173676275359.21926.8760269068345537463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25bcde27420c82a01e2b4c9201a006aa904b4c5440374cf2dd17c9f9ae52bbb8
Date: Mon, 13 Jan 2025 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736762753
