Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2637A4C6C
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761713994; cv=none; b=lmnKFP0i8xbSNBuWP6oJa6fQuvh/BEz4JSxJ8XQhyN02dIYGSYRwThNx+/QUgLHutfURYtRXO67Yo9gHSibUMRJh+R8h0cBx8NkxZ7VM65TWilx1SnIAGfTHYnGqi3ta5HuBE5WXe+46H09YOj/Q2YLcgjbw/15OfFee/OxI19k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761713994; c=relaxed/simple;
	bh=4i13VbKuJO/OXpcSnPEcsxK+j3EUElNlXFn0FuwDSZQ=;
	h=To:Subject:From:Message-Id:Date; b=IuPGW83pDPPU6GZgcC9ffEc9sqEm5A04j8qdep+x6wrhq2NGKS6lXHcb4oOx8+KfIcPHzigdut7213zg2ed5x1GYmw7EUrEywcaSBZaLiSUxNQ05D4k68wdjNPODi1TCIINwad2hfDQGhrvlJlPKM+oCfMtOsEYN8QhfW6n34U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AoaWH7Sg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AoaWH7Sg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59EEC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761713993;
	bh=4i13VbKuJO/OXpcSnPEcsxK+j3EUElNlXFn0FuwDSZQ=;
	h=To:Subject:From:Date:From;
	b=AoaWH7SgWFqlWOhrsE62/5ah+xIXMSxdlgHSbFIS4vWa/xyzQ/Z8toL/NPA7IqM/x
	 YbtHQ/vSC2dYEYOb1fPO0pKAf4/Soqe6mU0GmjDSD1+/d0Fx7Yt+gM38eXgifxxMb+
	 Titkyq6u8qy7aKl0vmAKpW1SsKRJYL7Y+cPTzUZHWVu1wBrmfQ4yWa1V13JdLP+N0Q
	 2scJQJ1haGyyeBmV2qCnvLNHDRKQUI++HgsySs8i2UbxnKGlh2PcsqhPp0/2Uhk8qw
	 CLAgKE4w2jxbpRfE9mU6AjrCIYMsFVPlcpgxAlQTuLpbmHFs2IM/PthIShaOcwkSQ3
	 P6+CcB0lohQiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920D8CCD1BF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176171399359.24885.12683862933904917344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6f5d7cb32d256a775ee253ab9d872dc17da96790a630d184a12a0a57ab7a853
Date: Wed, 29 Oct 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761713993
