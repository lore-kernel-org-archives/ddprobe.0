Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C42C121B918
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768124633; cv=none; b=L1ZC1vPx4SNGkhkuYBaZhIFgonkUReFFeEeAiUQUu3aSp/Dv5uoiDvJk6U/9BfcrAGOT7XTDQzsfSp9Q/cJeOmSVHa2gRMtZGKf1fTm61Vm8ZSFV0pbGReq9JLYThLcGtumb5LE1JIqPzKq5T8yEdxLnGeR84GnmkvcdGQwYuTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768124633; c=relaxed/simple;
	bh=HvksIFMx5hiKqUGucBVXj+aZfMkmxIqqKY5WS3wT8Vc=;
	h=To:Subject:From:Message-Id:Date; b=ZUn/AW/0i2v1DNU+vs01OgoZ1GB5+J/UYCuXxtfSUh7gPvnqd8gs5hljkf/utbSvldZUhPBadYWdYetjwA8ecYMqKATIHsKlq9CsDhA1ZhCuuyv7JTGjOpToHSzWzVg8Pt22AYbTNnDnoheIw+Nzx0cpQ/iAvtKvz6Vv+FchVFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BDqsiwyS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDqsiwyS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6A0C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768124633;
	bh=HvksIFMx5hiKqUGucBVXj+aZfMkmxIqqKY5WS3wT8Vc=;
	h=To:Subject:From:Date:From;
	b=BDqsiwyS+/3jcJisxWlNRHBYy9DtL5QBQ2xeNtIbHXqJSVpfdgSyZqL3xYgONwBUV
	 Ufrze8S/l7XkNwQdfbm3SLCFBLXutBNntFVLFrQR6MIE38D69iMwkwgKZdQCDJKW4o
	 dQGTwa75CIiFxKpOSdpLGwjaZqtamEVkg7eLQioM9YXTJeoOJpedGJhUjH6riZmqd+
	 VGeRmWZ2qEqq+oVaJH5bMRVrxW5/FMFr5EMopoIfPrXqfoGbLkHTOKFlTEr25Y4Nk+
	 8sKQHaUvVKEYnTH9vT81GD1wMEjPdUjjsiWynFdU4VbdNsu7XZZtt9K5zYPphUHYNA
	 O7Fkv3fQ1Yfig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF4CD2502F
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176812463358.27183.10823570318079313303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1846cd362d8faa132f6e539acdcb54277910073103e14ce19f74a814c02f15f
Date: Sun, 11 Jan 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768124633
