Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5B425A322
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 10:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764411174; cv=none; b=FStw1DX65CsjOWkHPT+jDEzoqKNi6/uNQqgC/ucmPZl9ne66xYmCVQ/PErjzldSB+vn8s4MRQNH+BF47qacKgVSkOTFWWLRV4QFH7BPm2f6yphx0JnLs+XBrRXXtQH2tQrhAndBuTg7vO3z4Hz1w7kxlqiVgbCJd0pQXGMbCLmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764411174; c=relaxed/simple;
	bh=528BfN1biOt/QnxXTlXhfcXF2lPsdwBHwsVvarZZeCA=;
	h=To:Subject:From:Message-Id:Date; b=bcqXW3GG4KYLG0HYC0TKAmsbNt2ivmUW8U80oF305oywSRtxcUzqLfU4G+A4cdPWf8HcyFZkjeLXJ43W0GiOzKTlcI/udjjsud9MjZ1b4vh0a3NTeRfSyJ+hrsJTLBG06TOfWjnIjEaVz8pJcsU0vQuWB5JcI0WQ1/CCv5V54zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cflfuE7D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cflfuE7D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E66C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 10:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764411173;
	bh=528BfN1biOt/QnxXTlXhfcXF2lPsdwBHwsVvarZZeCA=;
	h=To:Subject:From:Date:From;
	b=cflfuE7Do0FgKTbvg2wrB2r+iP86CXd6LQfWBtTw5brQknRkNyVTZoYEfZJsrLdGf
	 e3bXBEGOKwhy0I+w/575j1kZstoGT9c05vlIi3fnBfljR5AGML+PEUJP/cyY52Ytzl
	 ip/VFx2S/PVE+gol+N7Tcc419o5nC6SF4NsqMF8++65NsQYEQQJKqMnA2w7a5ywcuB
	 hI+10Bye8kuxGQjKUjuq0HxhqgJLqMx8EnnHxgV36uguoD1SLuEQCZDDbcPI1DtZCz
	 wHB1q3iqCJs3uP7yc/YMkpITTH+MYqvMLr8o6BXd6GCLVY64sq2/Wubrea+V8mCK6J
	 BO3afeSdEH/SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD45D116F3
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 10:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176441117359.17427.15499828953863958301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab21ba1c525acaeec5b9f90f04fb314b4d7b29ac16ceb1828668bddfb7322f41
Date: Sat, 29 Nov 2025 10:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764411173
