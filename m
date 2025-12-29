Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBBF275114
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766996634; cv=none; b=XRi5BVtzHo6gRMxgw34i8AceVtc8Qv+VatCp3oBipF5ThVk5rkDNIHQVKEEm6UPbdqaYTPVLT/uOjahmf4BJtTtI+gAeoZ2E5jAk+jgqKrrA8rC+pIQe3Ra05KB/KSGl2AhpWQomDl/DcSfcSdBulFtyASrVSpGrej4MX41df1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766996634; c=relaxed/simple;
	bh=EfW6jOSQJmJRTL39iC6lkb8QEGtXPrCgmnuUdJ8V8go=;
	h=To:Subject:From:Message-Id:Date; b=GAEvGq9TzFG38npliOyhFLXHaPBzSXMovmdhNS9DHG3/1ah+CCWr+X2ZRPGOGC2m4ufRVyFxakJvxhM5ZpePA+QLWtc1gZcOzYEtXFCW0HhWts1IJXQ/A7oTpygVTVHYFxtlY2HbRJJR4jV8P5TSBjimq3r025Emr2+VNkS9Z/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fGzh4iY4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fGzh4iY4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB876C116B1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766996633;
	bh=EfW6jOSQJmJRTL39iC6lkb8QEGtXPrCgmnuUdJ8V8go=;
	h=To:Subject:From:Date:From;
	b=fGzh4iY4kSuFfPOxTd0lPQUZWmQCDZmSQbD5RDgVeWKdwCR0njfYqlQe+RKe571Bp
	 Q895IZIUQQEe+XOoiVuExg84i1jXw85Hkg664a3xFLnY2Zh9zT+ptaXPjudo3o2WyA
	 02RveyDQT+6CIm+BCKY9xKxEnRvBvlb55auXmNmnH8NyJeUffGQrZSwWML3og2dysX
	 g81LOdSHG7AtNbTK1AAHo8gePJBtIqC2GE0roE5d5ll18TBLiS31+FhfRgGATUl1UA
	 flUbgi0ZF14UDKCt9CKqTZZsFelaevvCe6fnbH7dYBqjTGLpblEhE+v3xF9bh7ygkt
	 2ghJruDqQ7uJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981E9D3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176699663359.9416.5901695947754842176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fab45edf59bcc1f7b5c6689909434058f950f3ce2ce408f45eb73608eebba99
Date: Mon, 29 Dec 2025 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766996633
