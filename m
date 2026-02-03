Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2683635BDB8
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770128034; cv=none; b=pkEM9ZmBaHdHAUV5YL771a35GOCItKoiymmR+YCqEJ0XbZtH5USp9RpVIfH8vFoVgOZYljvskbyIg6/XGEqKBS68xa4CIv3wxpfOVWZrAcn87gOnItCgP9pUGy0jdCd+UoTGKxXdfJFR55sOKIOZbM/CE5IfDVISgwcw7YJ+ZkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770128034; c=relaxed/simple;
	bh=XCRy1GBZ7rq3puc6ERRww/grLTbRv/bIN6Z/7xLaRjU=;
	h=To:Subject:From:Message-Id:Date; b=Wo26C/yLaWTdpBPCorQgRt0Quh8kHOt7ixaGef7J5hBHbODm402IrBlUGNNibtsvtilo79boA4jIfxEkQnqw21ydbu+hXbQTupBiQRgQRU1ncOykzmzzxoCnccqWQrISZDlgdxpBRCSxxn0XefDEgoDp1hUNu7DMYUhBYjH2xek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QbLFF48W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QbLFF48W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA43C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770128033;
	bh=XCRy1GBZ7rq3puc6ERRww/grLTbRv/bIN6Z/7xLaRjU=;
	h=To:Subject:From:Date:From;
	b=QbLFF48Wi0QDy8oNT85+My/WWvBZiDCmCeT+iCOfwf9lNY9hNKHPTqScY+37cYNQu
	 JfVdghMG07gi0+uN4xe5lB8BhYAZPwochE5nJXvN8chTvIgy6l7WbnoITn5N2kRU7a
	 ahfFqdwS1VnSszH6pgOm1qOiUBOI6PRKe8neL7TLZwOinamHrePkDmKvsX0WOM8uGh
	 w/gfXi6BlcVTywjcvRB8nBp+wsoJHVVYxqyof+sgdWDemuNQp4eny/9sa6yzSugWJS
	 y8PsD4ifZiT+WD+lwT5EWMga8dDxO0eAgU7bezR4m9I9jizXDTFF5NcWwzjYJ17DLh
	 y67LZXE3uDDhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0DACE87835
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177012803363.30547.6320088370473860622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c88b2bd48d46d044808d289eed258cc4b96a765b13a6688405ebbbd9d8b9bacb
Date: Tue, 03 Feb 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770128033
