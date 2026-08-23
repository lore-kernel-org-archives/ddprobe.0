Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A7C518FDDE
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787458234; cv=none; b=CYVHGF09pclEXQNlVUB/eeiocEx4pTP+VNBu1txpmwd/77qOGOKFiMd4arHMYBujhG5q+4ACxRbQrkhqHNrMQRxVMObl/nt+OGp8AQ5ZZayIB+SNLtM90TO8MNdGXuTL716d4ObsHoahG3Z5k9/KWln3bY4CkTKbgIOGIX52W/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787458234; c=relaxed/simple;
	bh=W/AfdjxAbuSd2S2PTVsqs92dlYjH9Fre7v3l1wMdyIw=;
	h=To:Subject:From:Message-Id:Date; b=aVU5mIXsG5vewNW8o9WUysl3ylCRCcJge2QNHk5HaaXInocYGxHCR7xyC0NBBPY6qIsAttOfEs/i6TQLvpEDs/MTpy+kflBndcNk9yEok1VrbXindqtIkruMtLHK4gaoG8nrJT1+Vck+4OEx9HesCN9N7MvLwm9/TL1+FkuHdCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nKYuNxmj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nKYuNxmj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA294C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787458233;
	bh=W/AfdjxAbuSd2S2PTVsqs92dlYjH9Fre7v3l1wMdyIw=;
	h=To:Subject:From:Date:From;
	b=nKYuNxmjkfj2zf/tJC2KHhXABv2NaC0XFrgilPeLm5hTioFUxeH3rjrGBS+iM7eBg
	 /swLvvZ9Vb6g1qh4WFIC3VsXFhIoJBz+NUzlOhvU+q1KrDXaX1lJF06JwIV6iIOZa1
	 EuDUajviv7IzMA9TC7f/S0CsIEWBDeCu3SzJhKsvHto6XwhUjTfsteD3l1+XOAx5C1
	 v3Rs7QRB7kfCB3arGIlXPT9Hsvj3b4d+Msk/MppQrXquEgZcMrYsZnBV7+MpBKQsO3
	 2xKbfQxgUlbqMahGG8AAx3UkKyBSOfOinF8f432hgkZvZHtML+YyRbVKWBJOWg9WGL
	 RYEYUNnE5qZZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCA8C5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178745823369.23823.10612899067409569877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f1e9f1c3b63f6358e94f1bd13902a48219e34452f37167759f8de755dd33660
Date: Sun, 23 Aug 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787458233
