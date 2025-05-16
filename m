Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDB021C9ED
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747376995; cv=none; b=qBC7nqZBWl/exELP/jt8r0JO0oLKYsf+Ec6b9lwpBxPqL7fUblTNjY8XqS7aciQJqfEEl6FcuFHC5LJ8Q9mOgkSL8YyHZrc4SdHJCSCPmoDOeQFfC0kpEZdooESxiV/7uIBwDsI1on/rf1FNCOI88np769Coa/zD5ir1YRnUAwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747376995; c=relaxed/simple;
	bh=6wP925P4OlBQytz+wV0w1C00xg5Ktj0QY4N7qN/920Q=;
	h=To:Subject:From:Message-Id:Date; b=obMBh/xjCm+RlC4eiVh3NbAndbiI/rjts5EQZhQkUf01FIGFP+TKzb292hUuzCoRayITfVlcVy4jFF7o8FWvPrII83WtvXZafyszCmdWsqlpWZQJ96Al1TwdDWODjpfNAXsz5JRqmH1gegQYCXE1sRMcTbdbtIZ3CP8WMrkj75o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FVF9FROD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FVF9FROD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C77C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747376993;
	bh=6wP925P4OlBQytz+wV0w1C00xg5Ktj0QY4N7qN/920Q=;
	h=To:Subject:From:Date:From;
	b=FVF9FRODAyMfyfavkyXS5sVAQtZL0XlCcavQTZvqlkaq5CqrJrcumtIoh4rfUpt6H
	 hypILjb3kCkJwLq5l/sW7HVG5ommsPOFYRzc7ZagPZHUk1hAebwEZs0ad+bRu7oe+S
	 XLQ0oysrKE3pu1dphqZE+rKJ2wAQGem/wcbd6jb29AINc/ycaghi01AJtw2AD5Op+v
	 fcdtyLMFmtWDnU623iQkrVJURu19QzaiKqIhOVqpUojTmWRTVNm4CQL6S0GQQ3meCW
	 mVr3s5zDeG6XOA8idZIkrSguUsjVXFZ6pSjhh4kdel/VQSUeJr86fO5ovh4OErEUwv
	 ya+R8mKDSF7sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBD5C3ABDD
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174737699357.16761.4152453324353014588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d971e7f52e3d634b22b86f8aab9ed96c8a9172496c83ac6681821cb3d3518ea2
Date: Fri, 16 May 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747376993
