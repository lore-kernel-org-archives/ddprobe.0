Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C86F61A23BE
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759932593; cv=none; b=fyMw+j+LCuza3aJuNA+tXYOwq5wE4oALK06X3rayXo0jkq1lY4RO3rXyaVuXHl7IcaOSzcaFZlZS953cY5SZkNxtMUg1jxj+CeeIiwSV/+hZRCIYEfl4Fs8bRnbckA1Z5AwxPIITB8+jG+jRtuzdZXmKuUJBwDlNwn3zjMy4PBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759932593; c=relaxed/simple;
	bh=yLJemFd1pdNsUF070ZWmCsMB7r48d3YemZxoNMXi+Ko=;
	h=To:Subject:From:Message-Id:Date; b=bly4gXDV7SBPFijXiDunr1pkQn4NJut3A2iMt2DGzVQsv2H29zoolZSCR8WRgTTWyyl/IV9BWmq38f5NK1JP6JPKURIHa7LuNFAA2fxhN7idUHjVFllDamvA6f4wKEnHh8QLAa4ICj2HZLxEK3akj2mHzSvoAWvAl/SoGuLv+Oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uVI/lCPq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uVI/lCPq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0EBC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759932593;
	bh=yLJemFd1pdNsUF070ZWmCsMB7r48d3YemZxoNMXi+Ko=;
	h=To:Subject:From:Date:From;
	b=uVI/lCPqz+KmLOF80rO8JREJ/62fW2Y95LFa/bwmS6iI6EYFukx1/cHHX6/MMd4g4
	 CIYH2CRZuGeMqfIzNQBYVSteTePDMyZwom3rigBxGv3lMPtl3mj+4TVWFBkyXZTcTt
	 SK9+A22VpJdnLfVIj0E0yA+fiiBEl0VfEUEKKOTmrxnBzAx9dzmfPCmI57v8qM03Nr
	 hb+gSfm/Q9oJfOLRDx44AfsK9ROLWtzDXp5T8xLgbU8YDAF7cMy1fsWqNi+GEei3b3
	 D88rkB3rAeH2oifeArzeSE7aD6MST82xLCKbdkuRczrMpU3vBUEIgY3+pkfmhHA+Zt
	 rauEaOqpqKQng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEF9CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175993259358.11343.4552060099028823222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b28004e4fdef5c43b4629cebc19a0ed9bc665974533de0cd32f91463ff85e15e
Date: Wed, 08 Oct 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759932593
