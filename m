Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 951F524B28
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789171834; cv=none; b=esOAuF5FGqz6iUP3/ZxPF5u0NEF/1FCIH9W0Z/MbN4fDqO8OW9uWhnSuJKUtBSALn1vFPyMqyd6Ci2P95uyLNQK+RKv2R685KVjjQXRNQ0ZCmu/SJ8W/RufFx6Jle5bpb5DF2XF0a29jmiGsum+6a8ZXWRG6riSg42eyQmOynso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789171834; c=relaxed/simple;
	bh=uKBCN3ZAwOWF9kfUPr+P9PlugDA9qoi1BtAwCkSQad8=;
	h=To:Subject:From:Message-Id:Date; b=DJx58gJDOHJW0ND9sNXtJBJQF2mR3g6cqk/PPCwdgQrXiUEJNiqo0Ek0lalOC/NZXMN0lOHMxzTDSy+LS3x2EC8S6wDbeWgKhxZsnSLpOUzMQLBfXE3iHAUj2m9NYIt2tzvEskWZwkmLE1rFDmIMA57MJB2AbFsYu8ovdr3xJ4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dzde5bd1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dzde5bd1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5079C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789171833;
	bh=uKBCN3ZAwOWF9kfUPr+P9PlugDA9qoi1BtAwCkSQad8=;
	h=To:Subject:From:Date:From;
	b=Dzde5bd1HOEW6O03XTSiD9s5WExYfHgfhyac/40R68QBSaNl/Nukr+zMSVgdhRS9s
	 2aBwU0XVqo5XkeAx+19+vV1Do5/60QyNp4u+aybWfSqEvbPae4G0IFsXLgujUUAaCC
	 h9IG8hv5/ISfCR+3IQuqPhrA6hwiOn5f/QH+38NuzzjoS0qGPxbJtciaWjFev3mQWW
	 oIppW+5W5rwYrUnyODW9K3g5BjceoHowKHItlIRzM341zPZUkiRja4RE6LY8WH+rTZ
	 MtOGM4IQ+tlMaCqnVL3CRXtYhg3O49qOgrUwfH7Pq/HkEkGJ5PaKElA+DiFZVZu3Ha
	 ElPPd960Rkh2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01DBC88E45
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178917183371.29809.802491458621207077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 083cdd839b0f0b5ccae625e68cd0b9ecd3beb5ed73db69ef32f746629ac6de5e
Date: Sat, 12 Sep 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789171833
