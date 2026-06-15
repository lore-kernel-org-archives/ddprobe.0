Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243613BBFCC
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 22:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781564194; cv=none; b=gRRX5QwsQ4NCyPtERIL9GwqvYcGgflCB4hpWW3ywVtNwLxCDPbbDxBo64Q5AQDz3ozm/ziuNRNWQ1kQUtrrQhQ8HIU9ocT0QLGSCqIY7xylX9+WA3mscRvUwJO2JIc2+Wos6OPEsTDQJ+MemOnYrzE/B78j8zKCWA53/vxGXTb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781564194; c=relaxed/simple;
	bh=iCai1whINpwUzksGQRRBH+qh7Qzkwx6eXMm6VzcQE2A=;
	h=To:Subject:From:Message-Id:Date; b=QdHDpX0wN2Eff2XRuJd7nApesXq4zZDc0vJp7suo7TLWWxErSCKGmW6YlHFQP2nytzMVU8oX6hqjWcn02rc3CYPVrBZ0W4XlJa/X/ICchKFbKgDo4MK7NfLHAPxW85VYJ6A7zX9VyjwdcyCNpWuU2UorJadick67OZaCnU2s91A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OGV6pdGw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OGV6pdGw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6354C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 22:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781564193;
	bh=iCai1whINpwUzksGQRRBH+qh7Qzkwx6eXMm6VzcQE2A=;
	h=To:Subject:From:Date:From;
	b=OGV6pdGwRUzP02zXGF+ggF61fdnEmGfmWOUa3SpknV9mp9ZCvXUg5o5Nu9WzV3++l
	 xaECsgPeAMrPxrJRCAUGwT5N8g2vLoQvu5Wj4Aa6sDuiXvkIDESZPiurYs7fS4n7vx
	 XNQvtoKhhGFy3jZe1rmuobjRCCth0hZAugO43qEFvByhQtl4aeiA0Y8HqDU7aBp6wb
	 mZD2pM0iGh3KJqS7keIyjSktHkevFoBIPMmHD06NuVbm2hwO6ElJnjOox9ZPneoY18
	 0j+e/wgE3rpxVr/qHIWgrNHKmd7iBr5Auwc16ssEYwKqy+91ucoCZfWTRbGZXtqtFA
	 ixsR6xnPKBSeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBA76CD98CE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 22:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178156419374.9135.16634443680970890489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d854e36fd01bc7c2f46b72532077b6064053190685150a82d45f5883f777be2b
Date: Mon, 15 Jun 2026 22:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781564193
