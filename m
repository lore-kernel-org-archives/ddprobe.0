Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A3F22F8E81
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 20:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778186254; cv=none; b=rih9kNkiDE/JtMgVCc+VPZuHOTL7TODR5/78XE1X5NWlG1VVs/TK1iMXxiDIzLgWlrQUsofBGBTl0UTwPLz6sgzlt6IsXUe70voVZ5juTWxA9u6lGnStr01VX+XaLF2GfcgkbE+3IprYBmMURQsGOz/kPJ5NmWbAiI7qafOGFW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778186254; c=relaxed/simple;
	bh=0WG2/xoukZZcUQqR89VUTLDrNDnLzkUh0U37GgXFt/w=;
	h=To:Subject:From:Message-Id:Date; b=CuJmS1gnlGPxSDXMHSrTUgIz2gKBS37+Oe9CuAu9R+UN7vkaUYfxDz/skg8y/dkspuCHJB+iE10UNXqddO8GzGXcdaFanf9cGqU7GU6UuuYYOFJrnlb9ftZq+xcdpM2zzU+usipcY8UopozZfSNDReCjS1ZJLyZJQ8cSMTacnE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vIltEf51; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vIltEf51"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0730C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 20:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778186253;
	bh=0WG2/xoukZZcUQqR89VUTLDrNDnLzkUh0U37GgXFt/w=;
	h=To:Subject:From:Date:From;
	b=vIltEf51jXZcJiKYd7chE0uP3V2yX96gQWnh2yauQ3n3PVmzSQnqZXLGYP4uOJQnD
	 EJF4K3pXPF40m4K7jFesCjIK0ONwaR7C+ba0cKJQDebvOr9+i0X6I3d/4QxhW9NyAf
	 2ykKluuWZUa9u+TAn/+VfU5MHvf2XoEFjImA+LfiFVMK+gmPGyRfn5MesfRzWAucbU
	 zMUem1AxCMVGbj62cYKU4sIcA+TOyI065Huo1BM7H12e876O+AXLINwIeSQZvSeqrL
	 2LPGYzz+NvFX8PRK/Blk1zrWARKLrzswFacGy63qXMw5TyFaLAs7Q9mJU+AoWjbr3M
	 zD2n8id4iUpcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF3FCD37AA
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 20:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177818625369.25888.2930212294336002200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfbdb1bbf0bce0d8f723e3708c7aaa4b27e8893e4a3c0c882bff7c9e4e27c070
Date: Thu, 07 May 2026 20:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778186253
