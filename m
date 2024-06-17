Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77755198A3F
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 18:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718650103; cv=none; b=UkJSarYCgTr6W9vy0qSNoDwBx2ZqMYtmWd8mlLbZbpFa5PDOSxcIXwzzjmPgPobVmWbAlfWaA0gCmg3Jhes+bhVMlPIYn5fr1tIvUDzs4IqysIUOlkQlCl5W2USAz3QlGkREo3GJ4hfzy5Pb2+3eqplwu5FvxiVv0H7Eu0RNXR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718650103; c=relaxed/simple;
	bh=BOAyK4Vw4/5fsKwi111JN9+/rAB5c0+O95ITi2K0EJc=;
	h=To:Subject:From:Message-Id:Date; b=V5l8tAxAGtrlpec1J3NLdVmtSBYJR/vyWfMYafdIUvJmtX9nUZAu3BOZzFbj+HdY4Lzj+I/kjp9xGAU3ke0X+v4hfmD7Ez4vSiT1QZXUOxzlvl/wVlAE+dd3v1ai/9XndTCbQblkPcwWnRegBve97lmOWl0iiIUJrEKTRLW1MAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+7bZqAO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+7bZqAO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07F42C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 18:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718650103;
	bh=BOAyK4Vw4/5fsKwi111JN9+/rAB5c0+O95ITi2K0EJc=;
	h=To:Subject:From:Date:From;
	b=W+7bZqAOUz7iA5z6WznEE/zIV8sj9VN7ckDFtk82TOE0G0dqN++MfCXKrEsLqIDET
	 JFLtO46LzQxHTzzRYI3qTmTygm2YCnQ9zCDO6u2KsT1fMd8Jw4d/nvV0vR8UpxywUx
	 0mRWjtIkhGUTF+xvAbjzOcKLORqK0Cuqn3zrT85GSCBaeXtggLZlGABu28j7qCcJgb
	 oq/Dg9ta4Qhwq1OFgmqbmNRr/q5HMbEOGc7XboP6epQwpmV+R7daDo1+5zR7T7LWkd
	 abhoz/rbAWJTk8NB83hxVEVB8GoEbsyt+R4AvBKlPI4d3t8fpXKESkouBmxFvTXWku
	 QyURzRZhML4+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEEFDC27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 18:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171865010289.1137.1059232639256195583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 967a19efd48856baccb1d7f11cff29fe878163dd54ad572accf2de51863fe803
Date: Mon, 17 Jun 2024 18:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718650102
