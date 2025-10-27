Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15446314D1B
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761586194; cv=none; b=ugcCcDo+wVRHHuwyspgMEsaib9COplWFTZ/S8swIYo+od1PsxdFmk4GkYjni/h+uYeHrMckYxSHGatOfJ7TzxqCcAuFMs5mklhg/NfrWJXwI091qH33mjlbknSyPXb6CfdXOnI3WHCoFCEjVwxDHTaO77N3qurbWhj7Fr9LWLBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761586194; c=relaxed/simple;
	bh=FJRx+pdKH4lCuuMn2n4IC8n+BRDek/mBMstEp2WvmEk=;
	h=To:Subject:From:Message-Id:Date; b=QU0xCerptYQ+wNDbkMA+x8zdv2fQvGdVbCX+PIwB2Qdvi6Aa3rcT2J/sEt8Xq2cR8WS/7tklsqrPlkZzrKoxm3ZTth9WoLHQRTi9FqaAycj51ppftynMiUejWPffxuUSh/ddvqEUC328gh58lLghwVw4KGW6uPwupu6P4I/cx9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gkKSl01k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gkKSl01k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F88CC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761586193;
	bh=FJRx+pdKH4lCuuMn2n4IC8n+BRDek/mBMstEp2WvmEk=;
	h=To:Subject:From:Date:From;
	b=gkKSl01ku1Z+lweUcErshXXZZaKK9PXyCpg7EaH/nUXqZHxZsFnrG9EMxJZbZFF/r
	 /IZitJ0BuSjoHTtJzm/i2ZU3vp/BfV77hoxcWpWms/yKH5He6MejTBKSo2Zpbgga43
	 ihZXAif+bMgAqnPFxvslDe8haxvjS3djtS331WKlX+c9phsREOSF4p57eGgdaFOErq
	 nxcrwTxtKfrpAuzFfBNH31+u+Y1IHNNPi3eT+hUECfOZNUbqGC+21PnpRj23sZnE3X
	 LbR9IefXrMVe2LuunGicHF+GgIK0JD5Br2yHTc4uwk1rxNnbARMeOSdjJOnWYH/n7a
	 FDn9wH2H+SNgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EC8CCF9EB
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176158619358.12783.13015564290973386467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c54c8e7fc700e9316863dea410a9a0db73b1f0ae87c123b767edc02a8d5ca00d
Date: Mon, 27 Oct 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761586193
