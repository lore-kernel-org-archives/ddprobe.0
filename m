Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66062221DAE
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792027234; cv=none; b=Vusudus/8uPwKTSRfhI8JOQIO5VXwB5Lxwy46Nq0MgGRos1v7aLPKyFehB+Qo/kft87o0/kXKDYFYNOEYHB6LlWU/7I9jOkzDZdSi1X+pWRWglzJeagP6LOW+RW7R6SEC7KS2VGFlvGxXYxH/EC4BzLcCMdB9I4+6eXFSaMb1nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792027234; c=relaxed/simple;
	bh=lVW1yN3cxt95aAqBwF0WXEGgSHSwlwKkd64xG+LSxmY=;
	h=To:Subject:From:Message-Id:Date; b=pZPRhsvlSD1AKIOhAIkg9KcfI4wh99szeg9DlYJfVhM3Civ5Rzd6HedL5w9I+AXuaQ2+0VJfZ6gO4kCAfZfXdbLKz+2Z71Xu1hIxdWd++cXrueuSjkh7tS6ncinBKltqTBeioU5s/S4xlVSfYAD9F9VnUDSkNwWU4/9GQRFtKFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kjg1M5q8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kjg1M5q8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD276C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792027233;
	bh=lVW1yN3cxt95aAqBwF0WXEGgSHSwlwKkd64xG+LSxmY=;
	h=To:Subject:From:Date:From;
	b=Kjg1M5q8aTdKZeSjm0HcYgMqrcMPQxWj93SrcNe5tw6sMBqjX13OgbptrOro5KT01
	 /fu97H9yz8oVJCI65BpzG9Z1KS7yDzvKn6QbKGHrW41Vo++HjZbRcCUzfqnn60StAA
	 lkFWXaw6Tt4FMl1baPfCE7AltTvhg2kDYaVaIAdgoKtDWA5D2Z3t90910n9EOuLq27
	 ffsi0XxUSdt0iO4nwoVVU8XRqRQzPlB63o3CCXoXuCJemAs7ME4f88dENyLNbWFdJh
	 ++H9nVqtfhU7hDvlCnlWXBTWI2LEHrj73eHbZSx/XKYqLBvcn0PKFX2Zf2m8c4PjDC
	 bE1e9AS5KR/aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F04CC6B30
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179202723370.14127.9778575849773446936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cfeba0c6940ed563667b7738eb6ba81a9c9884744592452d5e5fc47b3823fdd
Date: Thu, 15 Oct 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792027233
