Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D89200C2
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768698834; cv=none; b=J3U7YqpMHgizPSkvQRTdj8ROnOVACfEp46wFkcfeWYM1C4oy50FhgiLEIKSFeptbKzPeYQpCRYuDC506ETvk2MSgUrQZtmLmZDVVL75hxxMVafaV5Qa/T8CpviWwx3xpHzCILkT5ev8T2w2WmYxe7NlGy7ar1bf/wwd4zafLQyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768698834; c=relaxed/simple;
	bh=aMj5DjgndMPq8tTkGBMH+e214xAbm9iRKri2W+XjNXY=;
	h=To:Subject:From:Message-Id:Date; b=Njl3FX0xfTnC0wB5Iedf9+51iz5gj1RGQ8NVCP2oBewCxO6aEzORpqre9N+TmO4O2x3Xe7PchIBtVCjyFJ/De8lZbIDgxJPbJmtMSJbxdfGOFANxtk/6qIQBPPC4yR/z7IMfWLjIgDzq0WToPIV26n2fPwSQOGnivnUnok3xWV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=snsgCXPR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="snsgCXPR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC388C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768698833;
	bh=aMj5DjgndMPq8tTkGBMH+e214xAbm9iRKri2W+XjNXY=;
	h=To:Subject:From:Date:From;
	b=snsgCXPRG93OLW73uReRDLMn4GyNS6NVqNIw7DlhW0+sIMursSm5UOy4FYzrNkyMd
	 s48R+3cQSEqqKPe56JLz0ckgHWzefmlZsof88CbFNo5rCtFsDmh9LTZwa58XPakNRz
	 QpHeQWzb7Hee1jXmq2wBUXC9Z9ou20yYQw8hZLKIiNfVsxxnvQofBI/J659ii+yS11
	 ofDvQtRGBZ0M7wmX84yPdLmSIRDrZa6xQYorg+sQ7klM9Pk1h9xwLa8Q7yO16uf7cj
	 2vVK1oS8pnhsUdxem05IfpDjv5ka+Pqu6qgQ2UEviwwvNCYlVTXhs2PtuDdpZY2U8J
	 EE1VUYV+GiuRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B497CA5FE1
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176869883360.9664.4783763551864924007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 337ea5009bd8760f88271da72b3cae08e5e9b64971051fe7da57ebba1a912968
Date: Sun, 18 Jan 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768698833
