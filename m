Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED2821C9EA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754548194; cv=none; b=Id8urDvPGo5/hHYJY+1gYErNlwtr89BdH2v0MJpV7g4fWauI9SW2rhQ6fz1xFkqpINPn0wPxZzRqXmn17l33U9oT3nRCUE9ySXHYDbyMGiR6d4Ue9kBiqMWiXmSeQnnK6XaLODmu0UNIV++HAyWe6dQQ0bASw/2UtBxgCkuxzUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754548194; c=relaxed/simple;
	bh=MnuEw2d6NeeFcrjjQv/TjVFlYpSSizrqDPHr4Jk0XC4=;
	h=To:Subject:From:Message-Id:Date; b=unvgzOahbtVsRhOcpdtKa1VYU+Qxd+/1U2m5zvK06nOypam/SjMab2FjIEz8xktxunIScEiwPjjznbMwAb2EuAjGFWudBtYMSNAZJ2byZfqGgBv+dFuGIlz7P0W39HD67d2+gZd18KcUqDU4P5azpfoGTXkW/G6FXy6YUZyzeKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OfXft71l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OfXft71l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CBDBC4CEED
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754548193;
	bh=MnuEw2d6NeeFcrjjQv/TjVFlYpSSizrqDPHr4Jk0XC4=;
	h=To:Subject:From:Date:From;
	b=OfXft71l9YO5eRjyXcrwYKZFSpUff4Hlz4vpZsrkcRsuknGqYDnpxrf3FGyLziP1a
	 u/Nqu+7WTylbuNEWH9w2G9/Yk/VM47Uq0SUINSeiwbliD1ROb3GiGJjy77DhwKhdeS
	 MPegoQUtY2LVgHXRPhNHtR6bWoJQnziGj0KwrXZHKWvq83KWytNqooK1KpF6yL4l2F
	 ZN09gpKrjn1bQDES3IvTj0lhRa2ihJcBezdNpMVUmXAmgGI93GcPl/lfiBFOd67SlV
	 r10ygqAb1l2YI166BUdwA+xMRGqKQ0FB3MR56mJVx3ctFwkWXuZ/5Vwf5N5seXqmeL
	 6h5XbmwpwzB0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB14C87FD2
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175454819357.15180.3962177684578706879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a154dce94ae6fe2acee71cc69866ea804f6031f7cd75288f3cbe33d654ef1e6
Date: Thu, 07 Aug 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754548193
