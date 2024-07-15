Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D0F21891A4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 12:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721047463; cv=none; b=sXvXmYFhMtNk2PF2lzETwCV6taOn78JbkykGZYIPYxuNAVS9VC5BEK+J74itO3rQJWsP9jYV6OvChJeKixv+BLhtpRQW7UYTYzH22+zQPi2/X0/XELM3x1DcRy6nfllA9Ys3JIphgwuIae+/o2zwzLR8xfmlIYu8ToWd162EptI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721047463; c=relaxed/simple;
	bh=yfvhgi7R7tGq46f5d8nzYFUiQY9Dun5D0fEmOVnM6OY=;
	h=To:Subject:From:Message-Id:Date; b=qtqim/plewobNtobafROI4MjfE+KP9uNu43Fl2xxWMaxsUbha3kfyRrNJ/9H56bPxklpreN0ploAOvNeThXo+5tqYoWbgwjqDjqIilMjkUP/V1QszGeRlrMVuXyIqeTrXN+z/QjvhiRN1hQEbDIyLJ6c2xyGLUfPO+Z3veG9Nm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DecnsETI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DecnsETI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E25C2C32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 12:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721047462;
	bh=yfvhgi7R7tGq46f5d8nzYFUiQY9Dun5D0fEmOVnM6OY=;
	h=To:Subject:From:Date:From;
	b=DecnsETIfgnKvFXG67yEMB9Aoju+YTpO1sXoHPu2SvjkLZIvkeoDYsDU7YlT1xKVu
	 oH16njeRR82LU4ZaLYR5mtndYmJXFwffXZAuGM3CVXNJjzmE6dVKc/JTDlREfG7KX9
	 QbSukaROuqo1yxpw1dzwYCJw3jxvNdjMQplzapXeFUsaxy1+2XNUQvnQ5kicdz8v5F
	 kg1TcMsHHEmE6uqCeb6XmHFhmluGVxRXHU2C7kP6v5WQRm4usFpH0c6VxkyIqFB+L+
	 F/Tf2rNb+hvEixzZtwdPkQJV6L2XniB5+izzw7nmVgaGEu9EYuitVFv4VTzPsh4q/6
	 OEcgXRM6/fl2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1B9AC3DA59
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 12:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172104746284.28384.7233219457385264772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b3f4b6ed63b3eac516af611226fb97606711d57d7f146cb2a99eb60c760cae3
Date: Mon, 15 Jul 2024 12:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721047462
