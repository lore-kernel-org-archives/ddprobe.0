Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4DD217F4E
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729904154; cv=none; b=ZyO4cXNCvz15Bnbvduj/D/yPRXPwxGmjEQa3Y/roo8tchH9ftRXOtSuJqJDVJ0BbBbu+rnyjWb1cOEyS8gZlB1ImoGryXFq7j+50brElDC4aLaDLIJO/FG2RDdnnt0N3dyPOU+Sr1U3kZ67hu3WAmxGLowzuz5a1onFE5ucU268=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729904154; c=relaxed/simple;
	bh=XEUEsO9NW/HhNXDXVsAGFZDMcJF9FQMUur0HoYZndNY=;
	h=To:Subject:From:Message-Id:Date; b=kOZjmr/J079H3pDDG8OCPqLPINoswtm18Qeq+LCL2yvNa5nuJ7WSbA1XG1n1uYuzD22p/udZycILhRnEa227YOT9qArsXrduHHv1lReg6z98eC4+J0vGrBb7Dv72Uyao6tDgQbOF+hljhh4ELGpQe6ZPLxLJ4Jtakz9bWxcNQpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OTwndnb+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OTwndnb+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0300C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729904153;
	bh=XEUEsO9NW/HhNXDXVsAGFZDMcJF9FQMUur0HoYZndNY=;
	h=To:Subject:From:Date:From;
	b=OTwndnb+Zs+t2yWHnO5f3dCK5nNGuEgcaX2ltPCvZ362pMjn3+x+oKSq/lv3UMgB9
	 342EzUXGAmPfRE18d1blTzhIJPZWbtLBW1F6SZqebX5KzUQYj5IRDWdu/HklXejikD
	 eESMCcR+wQNixGvuJyw1ODhvkjL0ObeytvvCjcpvySAbYt9I4TnC8hSg2Hi8muH2cY
	 8T9nbTg0v5XMKyvEXMgu9lkuEYvlLXqoIcIXO3gRxEeXvWAnClamRCagdig0AEVcZw
	 aLFgcpTP2y/V68p5XOHRNl97ArYB9/CHGMbc70gOwumnaZ+3xscv8rHYm5dmLAn906
	 xBDgcKP5lphXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A026DD149F8
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172990415361.15268.11398754708549916720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4157ffd4f9fff3198878d38c8ad71abdcb6621a8a9bd14e74776beb4f40e81e3
Date: Sat, 26 Oct 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729904153
