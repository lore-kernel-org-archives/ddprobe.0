Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 654CB53376
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 16:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720111523; cv=none; b=IUCtdoMetDTWkvgX0fwcVGxVnLtf794aOFOVzadgkis/eEZ22nAcnUQITm8N8x1TkbYgpYaNWoYqRAtEwt5lSJj5NVdyC1br7lRRr+YNC6kFA3cnsX/hqWN3z13d3qC7Ti4ARbKKOgyOlHqVRUbOiT/vbW/OwMvfXKKQ2XOir+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720111523; c=relaxed/simple;
	bh=r5J3QThX0HM2o26f//uPKK5QaT40yrOI4aqUqdPcOO8=;
	h=To:Subject:From:Message-Id:Date; b=SYYvie61CE51WB8SWlO2TQMIE6QdrExkUAul7ZhhfHxAOXYAH7vL7yaFG6ROTkdNybCbxXDy9OBhRupl/SXE+5OMgYK+cnVOh+P6GVbMzHwe1VKQxT7uCx7WWzavJIZxCPXGzeYOFkPp3v3VvZaLlpKgYBEMTRov8fqycBwHHZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iobgHjvJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iobgHjvJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC2B2C4AF0A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 16:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720111522;
	bh=r5J3QThX0HM2o26f//uPKK5QaT40yrOI4aqUqdPcOO8=;
	h=To:Subject:From:Date:From;
	b=iobgHjvJZPZancaBXdANZzS6K9liyiPbjKm3B+FSC5rlSb0V+zf5uKsNwmXxXMVFz
	 OSMJDnm+WBG+RlJEiZzjLGvWG+zMVW2F03ctro7lw11biyLUys3iRlPPTAwc//7s3+
	 xW5rApbUTqYbB/8s7kDFihyVLPHh8sKDgOpiNXS0pVr27Wjhp3nchaP/PlWcPqO1su
	 CQtb9z8ZItK9zh70s4wsijLgFXCxjZ+hNAh2QPtKHUz/eyb8NXUVz/RpZR8PAG8oDE
	 RLBNrSTeECI+wFpzmX7j21gSDBffnPxersgCLbi1D+25g34zumomLRPB5fSzW/NKn7
	 MVRJCUi9dqWrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAE5CC3DA41
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 16:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172011152281.3890.8769395247380459602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 973e888f52b1ad9ecd19ec0a76f75fe51b4a3df0451075b483b8af19f20bac6b
Date: Thu, 04 Jul 2024 16:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720111522
