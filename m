Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A1831A9FBA
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785987634; cv=none; b=QGxFi4PUgU22WxMmhPVD+hVdP+5imKFFoyaBSVPKJB4ccAA2LaBoDKN4icP2yY4zveHN2rXlQjtFDWwpRCafPjCpjIKLJP/lmDgm5Y60644033X+Ai/vKuxR2gb/qcDmgq+astwCoKP0HJhOJGj4EOJ5eH+gbeyezWemp93VX2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785987634; c=relaxed/simple;
	bh=po3fJdUplrlmg+jGpImoQYtiLK95wI7chx71y7Hjt9Y=;
	h=To:Subject:From:Message-Id:Date; b=dOHzIXL8nko+p4lq4uBBE8jOFTdIEgZjPfbU+1Vs9BrXusQgASIiiJr1yHChOMBQYYg8HQuphUVDgp1ImVbMyQu/Xn0qq2QEboXIfeXo7l2mP09UX9Z90cOHfU1Og2NLUnVUVxu09oJNbE/ahhAUNy2ahMD+C4cIWY4FInpERYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gsnacYYN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gsnacYYN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0AEBC2BCF4
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785987633;
	bh=po3fJdUplrlmg+jGpImoQYtiLK95wI7chx71y7Hjt9Y=;
	h=To:Subject:From:Date:From;
	b=gsnacYYNmwuZlm3xVZPz3wLDVzL5v/USc+QVz2iYqIKQBNpgS0MmfhLlE890xGnlD
	 rLgkP/O/c0NX0B2lun3sMBUeqjBttPxURlAMLcGqoI4V0KWbOgGeU6w+MhGPCFFqHJ
	 dRA4E6AilR/PiW1KRpNEqArC7ivKj7pzfj0Afzt250lZT/4ifCCflL8m9LUm/oP+FA
	 8h2K3t/Om2PQxNkkIbv2/CSrMUxbVbJie9Mhm5nrlUd94xxaMiKKlMEOY2SD2tYeVz
	 cNUkBmy3zvtW9HP3sYokk4rihXom3Aq4CZsUxxYgcYu5L0Q4zyC20gb3BKENz+aeLc
	 yCFotMkUp8/Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB48C55838
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178598763369.16769.12683407804072249546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29a56cd97beb4ff42fdfd2c77306ddd574c60f0ae8df5e27a9d9059ea50f4ddf
Date: Thu, 06 Aug 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785987633
