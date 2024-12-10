Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2735C3C0C
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733792154; cv=none; b=nwScr5OK9Czt89cioSImff3MG4l0RG+M1hxEtWUQPEcjzTaho/ZIEQSKEdHqrOJidkspDDItXI0TDiZxe6oz3PV2KMB0RubyJ0fVzjUywK3sk5fdq2aG9tdp9ncpslyebypKh8zXxxl68b3VqK1roZd88ivr2K1yt84OOiyOfgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733792154; c=relaxed/simple;
	bh=C28nZ13+ww8A6iu701Oizv7Gz4SGWN9RokTkpQotGwU=;
	h=To:Subject:From:Message-Id:Date; b=WnsQYSsNNLHUXpKcJ+WUcZcEW/qtNhq/fjXfZeH1muT/75kKvvln2ddIHfBKEwogZRpppZbBVMYRWJczwPkO+IYaaNTf7az5+sffwDYV7h0J8ODtTNwxoYUPOFUWugue/fDal1Sx1t6SzTatQ3vuOXpTOA8xiNWmWObRMNKQ/uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yay2Yj/Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yay2Yj/Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA92C4CED1
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733792153;
	bh=C28nZ13+ww8A6iu701Oizv7Gz4SGWN9RokTkpQotGwU=;
	h=To:Subject:From:Date:From;
	b=Yay2Yj/Y1JxxKD/nlv0wNuvfuVcAHb9s/ZtQUVm2qFlm8W9wEqn0XEKkjqjYF6tQP
	 DEnCXyR5ZfYZX8YD2f8RA9p0PK77jNUAYkhGuuN/THwmii6BXWPXQDtkqS/UDBb1U7
	 NrigTlCEvRrVAYd9iTw55ksA+EIFhDDyD0//XItLt22XSW9Wf0hlrUyTSILAwnZJ8a
	 LMdgvK8KPVdALeMolbOEOL8b3oQujtFVGTKMpWaeGtFLWAwdqt+lx7/em3xolk5JUl
	 ImaUjoT4Q189SEm3yJ1KPN8olSxXeaMGHkdZ/MatrXlg2pA5kGS5h/L1/nKyxBoa7K
	 3OjwM8xwyk4OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AFCE7717D
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173379215360.9125.12375328115635929243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 316942b07192e04a9cb73b3a04320d2d030af0975eb9e7c107c17e58603a49b6
Date: Tue, 10 Dec 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733792153
