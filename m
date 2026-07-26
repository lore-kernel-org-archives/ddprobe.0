Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C18B3AC0C7
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785067834; cv=none; b=sQvsZr4LtZv3t+Xnf35VVYFGXsh0sKt6gx2WQVsMjuqfHBTO6PjsGobsb501L4Nom3XdLLg+v13ekTVTrR8CTNYXJrZkt4gFOvcvSnmYogBBSqjfMO9l9bi3Wz5RxLEYW3y3YoGWxbV1sQuFLXsQue9SrRS/x4mxRYnRcYVXLhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785067834; c=relaxed/simple;
	bh=Ds8CWob5+T8Tqlt+MhS1EydJKBWBibfVMg8/VhMbRmE=;
	h=To:Subject:From:Message-Id:Date; b=AFCw7gJCEpGiNRlx6YRO7JlwznyTnT8GsNB/Lb2ngxpLCRDimT+qsTkmz6HX7eqRj1EgKZYI8D+R2WEnHW3oGi+tc+YcWTT5CZMB6Y085nnN1XYuHLrRfJgaPMwc4kdT+7NggO6A3UqKn9Nd1xt5xzZGJR4qqVexM8LO/AH5ajc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RyhWKl4f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RyhWKl4f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D979EC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785067833;
	bh=Ds8CWob5+T8Tqlt+MhS1EydJKBWBibfVMg8/VhMbRmE=;
	h=To:Subject:From:Date:From;
	b=RyhWKl4fipNVLIV6VfrN1fqGTvxt67amdKIBuG5JSynhYJUHxdwmirxzmaxfWvcH0
	 4OJZORAUXITo1ALII6k6RvXFNFKx3nssukCsi+gEJ4dTlEVPKXwn6gxGbsm0TuPfm2
	 x4whF6S3D11ClLxWtC1N37xnhxYaDEX9HZam3aa750HfRiP0GHadTTtwP8AqAEJCa7
	 q1h0VJXS845pdC1Ab6puxXs8n/6hmvJ/eebRO272PPMH6goiSHQNQe081yyOi78Mlr
	 RM00cgbMtPExLJHlVweeSjKC8z9TPRBIirWXdV0kiDz4DmZ1oZuKz0dPdLEwkW5bGv
	 aM2IBiOJPn/SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4A4C531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178506783368.16008.17857858549822489264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c46b1d54b804c14f224494c893e8157e0fe5a3a09977ffbe36012dd3052d12a
Date: Sun, 26 Jul 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785067833
