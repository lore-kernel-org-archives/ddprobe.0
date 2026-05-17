Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C30B327C09
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 17:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779037834; cv=none; b=i6gAF54Ze6Zm1d7w5vBq8ApJLrTcWNpC3qRFqywas0/TKBCzrR8bu09jJwYqdOefm+4HlIMj/GL9QSfWZH5s9MWp0070MKSeUXGyKw2dQ1uWYbWOPJYXlJSomOQ7F3GbzLB+cuCAmTC5g8q2aQjqKEehxSc6DZwkA57Tr45hZmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779037834; c=relaxed/simple;
	bh=wCvRy28K0kZ66WsxN0okMNg4D+nDlhsZzLKKE6koHI8=;
	h=To:Subject:From:Message-Id:Date; b=MFZpKRMT+I4vWG8cEqb64vdVOm4r+H7a6sGh6IK3/iJVaD9sP6AYcxP3kkdsG/iMSxvU2z5mO5VORGcJh5EkaPVS29e6wVvU8LiNNsR6N4M66li1y4T7AGz6+z5isnTNaoO+ywr6Gv8oeHe1mxPWIgNQLAdtdrjiByJ8+x5m8BA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CV5RAIBH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CV5RAIBH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF22C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779037833;
	bh=wCvRy28K0kZ66WsxN0okMNg4D+nDlhsZzLKKE6koHI8=;
	h=To:Subject:From:Date:From;
	b=CV5RAIBHYogOeZY7BKLMQLZ56D9iIUH6GnAwn53n1SnbqZTvxL94gJPkhcNLkozJt
	 kYaLoPZwq0rDloSN9nOpLUp1zTIMmQTIxVuYPKAXwfV5CDr95qTqJXknZMp2n2fzI/
	 msG88ijkCfHQec92gSkYPx6eOP8YT8vZFimi1/5o/XXxawcbtdpTVYJjSG44kUWB2F
	 c3mO/2BUSa2aJKKAHI/3oCW51JUiIvoSQFbkvhFMYpum9qM43AJXRgdbG0o2dhYSxb
	 zESr38GAPW2dbizN6oswYFuAAUAyLgDLJSq9uYB153MXYd8yXLU2wWGxEVafDHm47A
	 jiMy487SCmuLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC75CD4F4A
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177903783368.14706.17376571438028153658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9391c69bb7242192ef2a818d4c58526dce41ae627d73590aad40530ced33c88a
Date: Sun, 17 May 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779037833
