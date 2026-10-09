Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8A04D795F
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791547234; cv=none; b=RZPnHfittVnz6aM4Z0SOn9ocCpbNP/1bJRajyxNUKq0XFDH9CusngLYOTeZvEhkTUiPF29me2yljURVGZhHMqg2WOcP8N/lm6V6S97q6+TBDT3LuBrTbBXCMMo3Ugye2lsQSiaNtfMrgE9Ofv7srqgeDCWvPzdrWO0XAhvyUCU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791547234; c=relaxed/simple;
	bh=c34HeAsKXdaJ5nEYJnPH7/W3dl4w9QMc/1c4+kRTteo=;
	h=To:Subject:From:Message-Id:Date; b=oEOJdIru3QMuXwQxHLAm5Y8o8DEm+BzWQxwGrBHs8kd9SZZwqlVs6ECM+pR6eBa5pVbBwsOTBI/01S34OODim+g0uac//+j1I//xEWqiJT4Ce6YTjNqYX5e0VHGDiqSYtBgd79codJ+z7J7AfmrMdKTC9dEKkm3Q82bJz/TNtLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ryv0oxrW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ryv0oxrW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9993C2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791547233;
	bh=c34HeAsKXdaJ5nEYJnPH7/W3dl4w9QMc/1c4+kRTteo=;
	h=To:Subject:From:Date:From;
	b=ryv0oxrWL7HmfHjCRGKpA+X1idWC/EZqD+MyLLDFnFc/vTGmRA8Nmssb0nlrlpNeW
	 npygazFvEckZvjIlai8z+eg/ATrwXndwiVfH7AcKLA+DNowXJBvxJm49lEeF9tThhw
	 EErqVjTVn/pMMkmI4m6kM9J19pxWm4/2JSfr4dnm/7PlEKOLqpggS4vYFjPRrEFBs/
	 8mpzgjlzbi2ZK9iv/8rtOhmXGar3+OQylWgQ5wZ6uwgQyagKXz8KwJ+mmzivokfzlz
	 hzxuZ3UTtW49EhIQp+PYhDu59LGg6sOjkaixlIqoQeXO1dk56kHjXdF4UwnDuK8QQA
	 lA2iddTC2a9MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B57F9CA6019
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179154723373.19539.11277788576003237086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1f9ca722c3da2fb22122f2f54a034789b367010c79f1c523e3e77a124278cfb
Date: Fri, 09 Oct 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791547233
