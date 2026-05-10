Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416221607A4
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 11:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778412634; cv=none; b=C0q/QhN4dU1NN+9ktPEpZNPiQWjft4LHyOPNT4YkBaeNSDuHrjSW9Qurb3JdR0HehVjudo5kz4zp78ADHm9zfYrIdd1v5iT4KwGGryg1oN6hxRjEN56R/rBaHE9RQnQ+Lj8mIAC/ANXoXpYYtefjxuxRjiKTLhc0TO51wORD9GA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778412634; c=relaxed/simple;
	bh=tkseVTFBD5DhYtjndjPUpDefVkScX4MbpFF3nddwlIg=;
	h=To:Subject:From:Message-Id:Date; b=qxgsNS19vFAGtp3ujq7kldAvYEI2k4ZFj+XLViFCCSd/zSTf4CSOa3Y5B3966/woILP7Kb5ow7+ITHyAkwaJH1+7rEsiWyUrSn25bjyMAgDX50kztBSchsvVs+Ang1NsvfCXcV2MFxxyVuxD4WZJ3d/FnPRc3acUX9UwRng5wF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTXwOyve; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTXwOyve"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C69C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778412633;
	bh=tkseVTFBD5DhYtjndjPUpDefVkScX4MbpFF3nddwlIg=;
	h=To:Subject:From:Date:From;
	b=eTXwOyveCU928hZwIzlg+6j0KOQqN3OlXxUjg4Cc99lC1tgKfi4XB6guUkZdkbsLd
	 zaKE1cLN08YuPIBRzwgJ1VXLyadRB/hT8hvRUjbkelUMAWWyXw00hooerh6Zb0JnFp
	 zDA9b+fKP0LjjvEK9Cj+g8CdPxxNBVJqZvbhCBvW2E6UKKIhJOy/K3BeZVH+z24d1Y
	 Op+0LD+WaoxpbB6EdAq2UP/zmRiurlQX+5cUiq2fAmjBnNfDlxni9kyJ20pP2+hH7v
	 Sm/WHaoBPNH0Y2DvE6zbjr0QAwf3X1rMqST95nP5IXk+Nl47h2lF6AZsznY+VBdTqW
	 1TzDDtQgIzgAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8D8CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177841263368.19805.9337386168939142944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54a500f7fdd889e3cb11be79f0df0c88ad19eacd5cbaa011b8e93ab07dc0024d
Date: Sun, 10 May 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778412633
