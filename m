Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9264A07
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769304234; cv=none; b=XWImoqxLib+ljJNdj5lQ/ScmRNXy5NAZKxGi4p1D5/YvoDEs8ZdLp3ADZyWRNnPcEA10doT5jHFUUnpo7I5RhTJYOHcETxc5IQAI9/2vFeAM9IbXjZ4QrWIVikd3nkr4FpYoK1OTy7TuuhPY5rQpyvTmPIch8h6qqd9aQPgTB8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769304234; c=relaxed/simple;
	bh=9plI4fB6tsBC+Ptx+LCvrQlHy5L62PlDsrB6o650bfk=;
	h=To:Subject:From:Message-Id:Date; b=UZMVEAjZmW1aahGgB0kFEn3hO9DFJKJ1+8z/9un/v1gmcl1fhJZxSfqBHz1ej5F/63M2g8z/ywqqLgrRE04Uw2rocfnQI6CkQRCBFerVPdga1qaA9PskaOxMu3MwgQ2GqwB1V0uOk8yXq7DiDOVxc4lVc6royPPBLalZ/TAYBZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POxPS72a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POxPS72a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB07DC116D0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769304233;
	bh=9plI4fB6tsBC+Ptx+LCvrQlHy5L62PlDsrB6o650bfk=;
	h=To:Subject:From:Date:From;
	b=POxPS72apzSB404YeLiIOpSBOq4IgwjHse58/hSEgV4yNONEqBkEABaMx5Sp9edkj
	 FTGoZj+jtiGnD3xwDJ42zHFoNNtIMmOcflhlNlDccNbXZoLkXrMZNYPbEGgFwza39M
	 EDuIpbuA9gY5UjJjx1h+7VXqBsQ9KZFzb5x3j7F2ZveLEhPpERw9xVN4zUB3XEM/1i
	 ACR+t9J110lSqoMQ+fyYhF1kFJcot3uSnQZQ/TfvzVH2ZDB9Am78q47TlsZT57WNHV
	 18CBdU5nr4eN02z3WRuMnqBl1LQW00eGtkBLJy7jGIvqQGpNolEVKK5MdSvDGA8vzW
	 /iXWjNJzveKpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980BBD715E2
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176930423358.20212.17978586084171436831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75ca48f07cb3e5c7f91833692d30101ce050d3235cfeaf2c908ec4f38aee63e7
Date: Sun, 25 Jan 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769304233
