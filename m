Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DC9802
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727835954; cv=none; b=sfvQamVzuS8s7IbxnbK1MisNeRfwuz0x8nhyeO5L/vATjdI3Uq8yiQv0DSS7ijgWFbIFCZExr1cImXpPVnyCr69ntvHRG5US1rkmF4NH+lrJ0s6z96gvYUJFcQiyj69CNolTBml9Y68VRebIwtXOfp/urrZxjO2PwHDfRo4vH+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727835954; c=relaxed/simple;
	bh=tGUcOlI/IaMLKclRbENV0Df4akjqGrbEZKgL7ahdDPk=;
	h=To:Subject:From:Message-Id:Date; b=Fv6QZ5sty8AHa3o2I7hSzEBc2ZrnEPXbCCSvgPkdx5BtrYGsFR1y2uu0Jb002GdV+yOAxfmuS6AyhxToxynp24zTQ4sk1pBZ40/Kz0LCP/fHl23UinPceuT2jsHrSxj400PoLVp6u+CyPGHvJtl3sjZjP3rO0eE0bRWkYC4F0Wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VfFd5BaX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VfFd5BaX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A841DC4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727835953;
	bh=tGUcOlI/IaMLKclRbENV0Df4akjqGrbEZKgL7ahdDPk=;
	h=To:Subject:From:Date:From;
	b=VfFd5BaX//ZFhJHhArh20S7sfOQs/LHoAMnrJDbiWMI5dl7Vu+HhRp29e/4koIVu/
	 YAbX6w7MSGcE3Oy5cpzfYvQoRaB7gD3yFfM487htv3leVvnkBXPHhHiM1HIXaOAmt2
	 toDE1AjSUCw1yn8mG/3TBcEfhsZf3+y+ho3+b/C1ExVEaV41REPINmiT6qQTjBL56P
	 jqXDSZZ8OqH7e6nX9JnoK3gYv7htIoSI9XgjTIZEzu1ANmNznppGAsLvNjOVIgvAUq
	 eyK74VO1MqznIsFF/YCDHpsrxY4qBodj3WgbEs6iw2gD3WVpWoz9gY5t6sKjrRV2CR
	 QI1h8IYSMeeqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994C0CF318C
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172783595361.11289.12879854645634879438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26b765a2e8f5a613b11d1eb9df1b103f1592bbe37953b7dd4263f7e99012b999
Date: Wed, 02 Oct 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727835953
