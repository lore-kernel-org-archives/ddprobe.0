Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69B364C6D
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 08:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762676394; cv=none; b=HMMir0Pl1M6M0mA/Faz8IzzcuHAZ2VNy8Th490tVJToxZruwbBiaxx+n5lAgjCai2QqIJOS7fLkeodenZ+H/b3An1UDPMn30oEKqhTwgrOvaCKwHfJonjYoK78rpRgqpKWPHc/DhFEzKyhbsqdTIuwuYESxrNDGJqjsFR5AO8KA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762676394; c=relaxed/simple;
	bh=b4/RAM1HIQ2aHr/xh46ZOJ/0/0Lo/NQHRbsxZKpJaDM=;
	h=To:Subject:From:Message-Id:Date; b=lKqb/xTjgf8PpmnZEoi3pcHoOAtpn3A03aU9tEdVhhEgmJHi4u9OtkG9nVbnLz5hHirpKeWKsqP0vmWJ6WVYI4W/Btl0uILDBLvF4yXEndZjbIhHG5/lPgywZPFqILQfY1QsG3vmtKQchbrYCoh2HVWL2cj3KNvCOqkSHN1Psoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ncGe/W7Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ncGe/W7Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A413AC2BC9E
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762676393;
	bh=b4/RAM1HIQ2aHr/xh46ZOJ/0/0Lo/NQHRbsxZKpJaDM=;
	h=To:Subject:From:Date:From;
	b=ncGe/W7ZupDIbUf6+Hl6NvjT23CzjNZjXluWeHvzXCQ3dUo/VIpEaeau0cnuLrNgu
	 ZKrAhq4uMm/Wl1ljl8xUpbQSnA2VYEFA7vSto50fmmfravFDV/qANZdi5ZOdzrzVCw
	 qTKQDiih87NA+3E/J1b6KG0uLWGBH8iAfK0F0mh52b7cvs14Pm7TGZaGOLScxMVHWC
	 sy1AoQKNvmL/vE5P6ftSMZtCEXJSp8zUEfMHReJ4SDy09MD0TqaUGMfwh0Bp/rVQd6
	 22ZgjWQSVdhMrBTqSU3PrfW402+4XTUBorXTCG+DerggJrzjkPa7DpJmzaOv5rcpGo
	 y8YfdGOkgFWBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95476CCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176267639357.11901.14442587505723346399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75e5f34e8a7534e37b190325d4564c6e91764808d7ae347530d441c259d2a88f
Date: Sun, 09 Nov 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762676393
