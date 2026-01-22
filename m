Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F2C03A89A5
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 23:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769124234; cv=none; b=ksqPXSsVQHN9eNPeQUUt7CsB9V0WqgjB+Ka+2lWrbJAQcSbVN8m22DtQfMuz45wsLvRkdxh+v4BT4QBPWWpfslYYuJyhzcsD/GiuHWVUakj5Xn3FF7fWyi54RMmSSKO5NeMa7o+qB16bbBh4M8Ag1+grOHXdFm/KUlF0iZ2HEsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769124234; c=relaxed/simple;
	bh=EgvP2wfAHYig6F5GCxUcOzom4FsosoBBYVEvBETj8eY=;
	h=To:Subject:From:Message-Id:Date; b=uAY7OkvgdkwDzJ5vVtRqEpLwk/UZQRLEizxBamV9hMNPFFBbsHthRIG7OXtGiK4x3f4xDpISyXGxigK3Q7rWsg9N+cdUYAXj7JFt2sm31Lwlj+sFNjSSLurGdJhjRIv9W2MoGzNK/6PpSxGhJ4tVTSrll9vAXLE7Yx31oKPwy4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sbjby+Fh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sbjby+Fh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35D8C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769124233;
	bh=EgvP2wfAHYig6F5GCxUcOzom4FsosoBBYVEvBETj8eY=;
	h=To:Subject:From:Date:From;
	b=Sbjby+FhoX6o0rdCRd3wE+Db+HKiqKf5AXj7Wrn+bDvOABAezZvo67j3TlshOMVYn
	 C0cDrXi9BdCVex9Obkg9bkQLUTSt1vrgpcWCFJb9gJszF6/vMLdGVBnmvPJHJOx38D
	 BZVU3/LcX6YDhNt9Q6516DZ3XpcBF/O3wMv8WSRkBupTbdW5HatIEBhHcfLtorDeU6
	 NhcryHZx1WCSKUgjPJZlKjOe8lIzP2OkC1ipqjqCpauzQP9PLcCQYGyn+5EloYFcM+
	 +EZuKJ5Xae4P+o7iO13UQCgZGqmyd98V7F/zCOp+kR2BszxIQQRGRDQry3k0zGJ89U
	 15XM0NQZBGLwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9241CD6CFAC
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176912423359.21395.6474880387552560883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c4817af80dae11883a877b45db0b5c0df83bcc87319c2a87259208a695eddb2
Date: Thu, 22 Jan 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769124233
