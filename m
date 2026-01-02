Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D449C8CE
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767321234; cv=none; b=HhUgt54aVwbhPHY4+pfh/zym7GCjW0rTSVyVATUQnJxFTDq36CHD0yasKXKbDylGxDCz2zgWD7py3HdF70yW6NQR9lS8YB013G8EJHjqGfMUgDhdm8F3ACH3vLnPXzd4WOHztwmZljZZNjQ1PnTPY0OtkMizw3+5w6niqqnJchc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767321234; c=relaxed/simple;
	bh=RDVWBmR2R+wuHwVhdDQqdhmP4zn9Iqa/B5lzgcjPhLM=;
	h=To:Subject:From:Message-Id:Date; b=J0uu/XNFJOjBhVfxpRZNLj1fDAk6lmQZEtYB/5cTqsxKZlhoJC2fDayCBYlbsJ9NVWkWMKfvZHCQle3xPJsqEqLHZA6S/in354327uFCXkJDtC/vNU0VGCj3iutra0lgoLnMUupsWIPOl44hbRdveKZDiVDKTXBsuzZyqaIMNLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iIlHRo20; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iIlHRo20"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6153C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767321233;
	bh=RDVWBmR2R+wuHwVhdDQqdhmP4zn9Iqa/B5lzgcjPhLM=;
	h=To:Subject:From:Date:From;
	b=iIlHRo2079KBSBDPr02tbaNvuw5ebaSXP6guZtfat2KS6D4PT54ww3g6Wol4QbBut
	 qtksHqLcLNdNGfSDSKi/XJOlc3Hay+33CLI8Bu+TdXy20o/gS455XLj50LAEMC5xre
	 LjYleHVw0uwrsaRofA7ukubUgrA1Ayt684pSKw/ST0IMd6ZLYTOaPiSsKYXfLo26na
	 3CYlh1u+o6M51iQDkv+2BivAZHtTodFFZn1jR27EK+1rgqlFzJGS9U27vV7Hrr8/gs
	 +83c5DU88VXnj66jWRfppdhDBn0Ndy6sBDkwXWH9vpargAy9CZ10OOONwR+l7HffdM
	 lnMZoyyBQcAIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9291AFA3726
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176732123357.17788.8963788091121378230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fd59708b81569570fc4c343dddecdca6c8d618cead46c6db204febacefbeced
Date: Fri, 02 Jan 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767321233
