Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED5F353EC0
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787002834; cv=none; b=OieQRa3h1k7IPJbJnrsYKDvAFbQfK7bLxwSPLGepq1q0U9Ps0zjoDQ9g2l/oZtXNCG0eyxggXhaEHf6vznG4VK1ap6r1AsjYL3PXMjW1aXef7e2/AnuDd+7WqDatPxFG3sYkvNVlbDHCVWZ0pGzFz3eDHlVwhBGabys2KZiNggU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787002834; c=relaxed/simple;
	bh=Mzo4Dj/DGGAQJKIL5CV/r4zE7caAZNqqGHLnd/ixe8Y=;
	h=To:Subject:From:Message-Id:Date; b=iAoae0vcEqWENibY0fFiHiBXxwfEslqH8+Vuh7zvQR9TRIVGDYH5GJeeU6SLctAfj1KRx4D7z8mFQ6M8umY/x70SYSvYw7S0GPUN33Wj/Zmi2Cv3yJu/JqlbvTcbrOoDIaPSFC6utskvDwTXLYI6d7ChC+CZmbZ+gvSgVOLLACw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SDkFO9bZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SDkFO9bZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2088C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787002833;
	bh=Mzo4Dj/DGGAQJKIL5CV/r4zE7caAZNqqGHLnd/ixe8Y=;
	h=To:Subject:From:Date:From;
	b=SDkFO9bZ6lq0TpE0uRcOjkmfFvUAZx3LR19wn1yStK1VCZ4Jmej/4lC7GskjCZChL
	 Gflo20sCJAmz9zl6wy7xzYndN5brJUAwxZxUv1Ln++AWjO/iRLTEc/jU1qJNcu7G79
	 vrp/dTZm7w0GEGmXdrESbSm1r9vvIzPD7rLn+0CvUx/bTxtBG06QchapFvZLcW8LKQ
	 JBu54qKD8MrZHqKIe5nXX6QcL/jCLqqKCpjS2wjMHFzRJqnCQaZcH5dz9y1EyTism6
	 JMc9aycE7nOAaG7f8tfQqWRJi1N2QLYzSxHwBvkzs7Y98SkKd7QMHmJUNYOZNtVYGo
	 HHvFhtmt3YY6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6B10C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178700283370.21503.16866209283721978989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb335f0838c6edf0531a2ba17756ab508cbf17dc1d6f2c70dc0ddfccaf410ff0
Date: Mon, 17 Aug 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787002833
