Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92ACC401486
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790365834; cv=none; b=G8h+H0Wlcovn4S7CDtTtTSVDVQ3AKM0+Ht/q/xg83hljJwYMtfa3BrQc5W88e95RCrfIQ22V6A6wXdQTDKmW1F3A+tXli8/XBhiQUwco86SBJ5RFWFJemZ5z6hzG7HRCzQ6vuSoAJYFnyqtJd135nvYK3DlMrTkx1tpaf/uXKRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790365834; c=relaxed/simple;
	bh=3ysuYuGyO+0WvSms6Ti3q7zaD5YqL1WiTJvP4JwSn+A=;
	h=To:Subject:From:Message-Id:Date; b=i0VFzTLpMZLbVZzakrfJSyjcJNuO3doGSjc9npOVg+tRUhZKIR7RZf+LjjdqDh6k3KhaALvgU6bd56c5WLcWKWqiJRglU5xpbD8J5gsZXsLdQL/lJHseJHY6kxD3gstwIH5RFMePV/4Bx3vA+S3r/5Y15e+rS/0NhS/oNaWWyVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZ28OG6p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZ28OG6p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4849C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790365833;
	bh=3ysuYuGyO+0WvSms6Ti3q7zaD5YqL1WiTJvP4JwSn+A=;
	h=To:Subject:From:Date:From;
	b=hZ28OG6pDxuBfjALHwGtdL/QYFIe7mWwRrWcgS+cAg58jepaIf1q2JhY4vxWJrkia
	 LsJFuuyhauybVxYBIrm3+9d/kwZPXz3IZi84pqeAAI8dxtsFKOkcYgdQOuyS8yimQv
	 OGy5Na3gPwEHXGNQZkZz29zFF3PvHXKf+1qTBC3UBG8qQf8kZ1eDiGb1/sGX1IKG8V
	 IKIECGUFyxEp+AZPhYfJhs1/m1iaKijHviuMqxpK6uN91MkI/mCP4dR8r0Z5ZMldHR
	 u+1dvpfnJ9ByEp1dLPO/dyA8NrAir79TZlS7RG6SMZ+unbZ9FyEOukRDlnMDeHbabI
	 OQOcas89OJOvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4BBC98321
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179036583370.28423.12431408818439141074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7af17900e9b17c30f31452f1fec4a094fdc4c8a8e9f04e9b3df312fd7b6f8b28
Date: Fri, 25 Sep 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790365833
