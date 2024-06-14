Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C834146D60
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 09:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718357903; cv=none; b=tiYKucVIRpKcDivH9XhlR1UVjl8/3dXd4suMyLNvHOt3EP+eRUv+0IYL3yTQe/+szV6dZL9lIjPW3k/u8KXWKb0fz1qNzct+oMhb3Ip1tVkIR2Qr2ivOMftLTw/svdwzNhqS9l20YmAfkhklrMZf/P1o/45seVpMmYUDhsjgWAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718357903; c=relaxed/simple;
	bh=+kthXqG3Ftzuk8KEx7GCLefa4gfHzXfkjOMt2pQXzWQ=;
	h=To:Subject:From:Message-Id:Date; b=Hj48/6itlNnKyFYwmJOEZ34lcJ0M5pTo3XxmoyLJCCbb6qjG0YC4Mx6XDku1UGuGbx7WdpWWDHBKgp1jFILQbb+Mxr5+YRsbCj7j7cgKMHTWqh3ZZFa8Iy5xSQ3vSnwkLXuH+nOyuSdb1aCEIZZtZU/PRd4uidy31PZZdm4ZD6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eFljyaeM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eFljyaeM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44ABC4AF1D
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 09:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718357902;
	bh=+kthXqG3Ftzuk8KEx7GCLefa4gfHzXfkjOMt2pQXzWQ=;
	h=To:Subject:From:Date:From;
	b=eFljyaeMVxeBi2TnrpaZSjXHWqRuIaetCRzuNoGfTwvmJ47vX/+Yd2Y6ikhuqf4ix
	 26V0SHmUxy2G89Fv8m+iEdOdOSjc1ECa3x2/DDWsQZPeJEYp0yZrtynvMvz0sYlRF2
	 XbVMmaFjL4wANMweb520QiPGgostkRiuq1H1/rSi4B6W1aHR6NoGidYlm7IV4mAEpI
	 WiYzyePbc/QDhtDDunFB2i/PjIqJBaEinXGGUIp8/jMcBGJHRN42uBKbhl4zVEYtKb
	 pQA4ATtOv4UNRKVtUdPnc7Q5Rt7FZzW8pJvQ2WUyZ5Geg1FDSvDMNz9PeZf8WfQPyP
	 HtljnTwQP13Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2870C27C75
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 09:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171835790278.11044.13934366951786690621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dca27cce780af75c5116ca4f4905083643d59b2b37a75c7dac1505a26a78689
Date: Fri, 14 Jun 2024 09:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718357902
