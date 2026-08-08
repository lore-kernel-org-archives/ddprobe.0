Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 650CB3890EE
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786216234; cv=none; b=phxHRaIinRihMVRlJVd/ambm/O8i6ftEXGwn5U7sJ70AJYZhGR4KvytgPJ6W48zear5NJHEG+GERIlXXz7I/5C5//MzozjZMFqyfHrlk35GmtMCLVnu8LCP1EYk4CeqH8cnMk0AYgFTeaMI6kMXMFs2/TUc3xnqBbBBkuSLMNnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786216234; c=relaxed/simple;
	bh=T9CBVGRPzLlSwJDXgxQtS1oXCWzPq8/VZHv/H8txTt8=;
	h=To:Subject:From:Message-Id:Date; b=FNaq8y6gJI6Chq0f3g8S47TBq3ZWV4pJTxAw93NI9G1KGgrnz4MwydcjWJe+4mX789eMLYxZRAvJxe5uDdHpSydiRDV1f8lVk9G1YqUdcjbP1cSAYb/1wUZYhkjgR+AXTukIutTYKekSeykTtIjv6m+SpLEeXYtlyU0sqaXisTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XA4yrsbW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XA4yrsbW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0777C2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786216233;
	bh=T9CBVGRPzLlSwJDXgxQtS1oXCWzPq8/VZHv/H8txTt8=;
	h=To:Subject:From:Date:From;
	b=XA4yrsbWQK5bWuvPTvCDcajYN8yTKH4RDWt9i1JhWby8YI9/VEUM2Puvm2vC9APsG
	 jUiMcItmf+SWXNKxpGFm7iKQiVtrT4icxUUZbLCfjqdtW0yg01QVNDKT9d15XB0e9N
	 7r1LGrsSRT2AOZDk5+bvgbNpWSZQl90wBajk71Yt49uLh3H5a/YTa+LCEiMaK/9XOI
	 i/XihkBmO+hVVQIr4XfQA5KlT5b1sssZep1oZanufKNGVNyQgNiovT6mJnXCki3CAm
	 SCPduKowBQRot42c7yC+OV8874nR9PIO93XE/seudydkP85dnTQa7xJgmdXMI/tERJ
	 H3MAQXP7buN1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEE5C5AD44
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178621623369.16970.1041791412244167280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 111ec34db53e1415b31cd29ea7280a4ddf68142286a2150df2d54ebdb66ad6e1
Date: Sat, 08 Aug 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786216233
