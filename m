Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E776E524D4
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709062697; cv=none; b=NufikiE/JDtbDDR9IlvS2qKntuYn6BQgdqIOoJq+c1b1qJCNykHPY07HDRl9Jf6wkOOiYHJKXY0dkO8Hpwry9CXLYfYf2SjKwLhTdAU6gRJpjB48PU+PYWten0NymYTsngdHdvnfHqxcbPRHu5SuyiIg3CfaZNhcKi8KZCWqb0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709062697; c=relaxed/simple;
	bh=2Fkt0yqkSB0R+auMKodW8mS0xKShK8g8TnpJPXtqN4E=;
	h=To:Subject:From:Message-Id:Date; b=fq016r8smSlby7iavZT+gN/0G0b1ceWAPWEctgbnspIaKMqNtXOrMXSGLKrwqHlnEaLBaX6/TIdBJF4yNSfrwRlQXknOhxqlr/YHvc0n8qpRgLCIainHdWJ/4ZGSMEqiTQeh7MzJ5NmcZ3aSYNpPWolGbkEEu52d5WrK1bfw0FQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O7bBON2T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O7bBON2T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ED10C43390
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709062696;
	bh=2Fkt0yqkSB0R+auMKodW8mS0xKShK8g8TnpJPXtqN4E=;
	h=To:Subject:From:Date:From;
	b=O7bBON2TDxxm4chSgxgDqCNzZ/WgHLXS1hTz2JLOT+k50LlGk5Cz0Je2+TtPywYMn
	 MQNYMEh4050zxcgsKPOdLh8SAl8/bFxwuXkNzDW07GyWBFILXOdfq4JVRuGdNJXMB3
	 dtcK8lktGO4FrofqLOlolHsomq6U+MguCp48yak6GsxD91qfEKQi9kxc7VGH8hLKVM
	 f1mivZEjA70a4p53notAX1e47xYHKzA6kPmFpO4XOSM9Oo9/PjbEtUnJZUxnGvryp/
	 K2ntITB7NcRr23OlbFPd0zSc3J62VZw5BOpSNtHCi9Dp5XpHw6fYUj+V1UiZ4utmLi
	 BeV2QY5zUz2iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62355C54798
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170906269639.1335.7505482672752932381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 238353f6f434e0ba573a512b53f5c49da4eec6bb08d802938b64acd2dbe4e9da
Date: Tue, 27 Feb 2024 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709062696
