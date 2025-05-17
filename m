Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436022A1D8
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747489194; cv=none; b=QVypUwjTxmZ7kjCkZUbHVzLCRqG6B+822SThF1QPg3bAmqb1JHAHLwQyh/LMBytg9rGmt1KQ4KvjAy/dTMQmxJbLFJfEnfXXx19xlOiRegkendl76SHEPLzbQUq7HMuv9PXzpvlRjvQp/N08janRQCM+r5ferGaZ7cY4nN6G7PA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747489194; c=relaxed/simple;
	bh=aXKlZEXP8RJLbQs9DneLQT9cVH48O+A+a01oZGyuajU=;
	h=To:Subject:From:Message-Id:Date; b=KG5wNWO+xv8grCJVEqYMQ1RPpQIXdflZzou2skhZRtZLcFWD6d8jPZ36EFFqE34CN2DFzcbM9ifDvBoalOpJuQtRkGGKs8xzwBaq1T0P0qV8EY9nSg/IQbkyzUIbsVifwfLegyX9BOS/yzBKixKPGdakZYVeyCYOcVB2On6mPEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ag9X+1Kw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ag9X+1Kw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A368EC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747489193;
	bh=aXKlZEXP8RJLbQs9DneLQT9cVH48O+A+a01oZGyuajU=;
	h=To:Subject:From:Date:From;
	b=Ag9X+1KwuUr0RNNo+Xbsiz25G58+DLeyfPEyZ5ZU6w5d30GlZQ1ZFrrh7RbYFOaDV
	 EnhSQy7WGk/4GF2uSRJ+yDRos/gx68mi048ulWWOHY7+AM6OioTL8Vi+CaUd7w8XZz
	 6SnUL2wI1Tk6zrJcGca6EaWZo5c2ze5D1H9CtKOFvFNQY89iTNNKVzj4r8NCelgqlG
	 aMdLuT1PQX+mOUyYvNJG5EBZWG6yAnhsgYmh4XzsoVwpMt8T8ULqRaI91H8p4plCPx
	 CjsRLKrRXKxes/6i1MrEahW8ilUFmVfu5j3hX0QGRD0/Gr6Eax+Q+HxaCUi9xKV3ts
	 AJ9DGqOVqkqXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F495C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174748919357.31349.7629881491471805753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bed105cebb1a6c8fa4e5d58e070325fe89c1e8bece4bba77c403d9fdbfd57e3f
Date: Sat, 17 May 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747489193
