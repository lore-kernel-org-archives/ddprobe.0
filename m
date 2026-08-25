Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5593F3AAF44
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787694034; cv=none; b=A2cm91nOKR1Xt4t/At4VGkI2GSDbNLKeasFzYR0K7KteyL4oyOgFyZFU9P8pzjLgKQ3XnfDhtE7V4hP9Kwc1UofbXHbW/I7EvNKFvwSE84jWM5SELj4y2wEi+ir5dvehXRddNSK/4eZw54D5PP4arewd5e9B6swQf/MKME04RX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787694034; c=relaxed/simple;
	bh=UJTxYHQiku/WdWQqSR+C98IO1mHpa6WjQqzf0aG/fto=;
	h=To:Subject:From:Message-Id:Date; b=XnprbXOCR90VSLnS27B6FlHBAyG3qFRIkxd+zs/4ZvDB3ovUUyBKTt8bOE/wZwQog/1qGOZhETCkAks+Cq+kAGePWrGR4iXkNRcpxunVX1N59qWjIh7feqKeTbkAqgxqQJSfJdZgUa1lSVznuaQV/ug7unz+cAhiEZwRJFJf2Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SUPxAGhC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SUPxAGhC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA8ABC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787694033;
	bh=UJTxYHQiku/WdWQqSR+C98IO1mHpa6WjQqzf0aG/fto=;
	h=To:Subject:From:Date:From;
	b=SUPxAGhC/TLj+o73mPvqGoEINajHSUTnwurixREvJ7ZuCH7pZnbNyITYMhVFMxDuN
	 OAmpwL6nxqGRpgVjF84WOfApPmq1UjmDVyhpPJRgSeCMGRdNoG7XQKM10pgQoCqlCb
	 udFi/LNE8XW+2csdOaP9AGCN5BaGHf0RxzoPt2+f3/zLalZhfj51w6mpBVDlTgKy9T
	 +02a/BLyr8BBfqUkfsBewFedE5KacWX2ygtmN4yBXPBA5Y2MlmmcaFFpuc7rEDh1Zy
	 +46f4vloTEhlulhh5qJzkq9Ds4pFHFJGIFrkp4j/NAArcwmniuXutzHhx9oJbQ3U8s
	 Eoer8FLTosmJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2BBAC61DB9
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178769403372.31666.742706504702321997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df8bdf697cfaf690de7d8174241567f73a6da51bbc948c9eaceca2282124f4a1
Date: Tue, 25 Aug 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787694033
