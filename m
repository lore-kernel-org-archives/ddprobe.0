Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39760155CB3
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743768595; cv=none; b=EdvGUnsIxX2z/T1BADIOxjK8qCT0GVVrvtnSyMzbXdnNJSmYOQeXBbqNvHeJfR5f14+iz+JhFLZjyZ55HCdd/QEJG9gvZsAKG+lR/n+etxkm/lOBMRR4z22tul4yAfWHRgUdBL2UQn0TEofIghVhF6mnFeqXv9bLVpkHKmJVIcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743768595; c=relaxed/simple;
	bh=d8YpICidgl+KYMK+lcMVAYWS7Ws9EEKJwbP/hdJTwJo=;
	h=To:Subject:From:Message-Id:Date; b=tSjIt+qtbvU2f8O96D/1Uvc/c9vJJ+YqTG/O3UJ/SCQrXZBDpwiAh0OA8ygmkGEtG0iPb9pRpxkyzGEY4CuMxIA0l5MKI7SRMFpDyw5POh3X3C++/zJtmNjNYObj2S+RmvDIDgsKHJpb0iVAMBa0k5Lox4Tq0f+DzJFse2ZIiig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ErQ+mGGt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ErQ+mGGt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A15C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743768593;
	bh=d8YpICidgl+KYMK+lcMVAYWS7Ws9EEKJwbP/hdJTwJo=;
	h=To:Subject:From:Date:From;
	b=ErQ+mGGteMH1BqNLzZ+9WBTrbbgkoY1jddSQfQaiPKBw1BCVswCsIw53Ivx3IJOoP
	 821/k265hsr4sBOthb2gKj2rrw7wgBKCVf5VK78GQJpqHCBjPJTMuizv+xQOX5t7hm
	 8dFGM7qUgXXe8HZLvNbUx1XQ9x34UtAveVOt3YbO4pMiqq302Y3OsVuGKncoUkDG8B
	 UTlZhxkUpwsEdibqEZsF+o1kYgWDJnKJAyc1o9Ybrj/hVROcwY/ZoIWNVR2QKTaYM3
	 TFMRbwonO6faHXgbsNI+FGFrRZ+k8X95SvGTWPbXkA4PO1Krsglb3asAiXCXyOi9eK
	 k2XxspTLwlmXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BDEC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174376859360.9086.11655126177493992636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adf2315a5823730593960c5d297f9e1dceed321e3c51450d7efbf7b2803216ac
Date: Fri, 04 Apr 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743768593
