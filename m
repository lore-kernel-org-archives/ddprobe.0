Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 063BE36214F
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773042294; cv=none; b=gvgwfDzf15a0n7Z1ZPTvuog9dOpQNrDgN9j4i3c1M4DuYhrNBSiDER19/nmIqUqY+qumt+UuJUQa4eDG5CE5YszAd+dVMIaIrXRNSyWQkaRSgfoVsaYA2Dtn+op0GWei4XixW1gflYTgRzxiSEe08DLs/G7pcS4wfB29vPDn3jA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773042294; c=relaxed/simple;
	bh=UwOOoURL7CxfyioaWy1F81OQlV3ACr34YW3bENBoJt4=;
	h=To:Subject:From:Message-Id:Date; b=ry5ZTAqWZphwF2ZsGjJsEVm3cPqnC/y1MsIs0qTYIAux53f5E37ed0L4MEvsZEmKh1Yj8QuQ11ceTXcSY+qh2mTH7/H4XotEJbNuDwkfAhOopX/E4GJBJ4WnmwUWuaLzYYiWhejaLIUGuTfFeie++LSgfI/E97HQlLk+qI/pR9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UtmETTmV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UtmETTmV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2A3C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773042293;
	bh=UwOOoURL7CxfyioaWy1F81OQlV3ACr34YW3bENBoJt4=;
	h=To:Subject:From:Date:From;
	b=UtmETTmVW64ZYiuUue7hSBXda0HvdRt8nIUyP81Zg1/I10PaUJyBSicpIUozgY7NK
	 4EuB2L7bGtRFNQkj6ChXmKhQQK5+UXmE2AJYoD/Xpo5URIvEY/w+Wgj13QofwWoBaG
	 pI6hqzdWZQNvwDIGv4CX+bAPElNI8RjqUnJ/jNP0ylLK3nNaZcDLjUJnshahe8gHkV
	 P6btVZ0xDp/cX0UqO8r58qE4nrbKOnV2Gm/auknDe2J1IPSBwJ7Ax9pK/IW+N1vEF3
	 1ojgLFVGtF+2xIONA0bhy2CnOxFwsl6iwzxNRCA6WQI/7aifQ9qb5vqrxonndcYfQD
	 l5MmYgs6DN/VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F341EF36FB
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177304229357.14297.1776081167144391558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 290b43607dccbc2d75458a54448ffad561c65a7c18b48e27014e49df39a3e68a
Date: Mon, 09 Mar 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773042293
