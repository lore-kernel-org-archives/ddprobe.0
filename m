Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA5D15E5DC
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757885394; cv=none; b=PWfF273LBLIq5ay89pd2aOPPFVDpT7PltdGCUSl+MCt7DmSN7PK3Vg5mbbbWbbo5F59DpIjW1oNMNFoHh3uNmR/Bl/2WN3yEocuEo7TxjW1WfxZ6MfklLvpZZg251XLVYk3xS44LHczQEX6ULZrgTlxvVRnTqUpQ11X+jQRC0mU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757885394; c=relaxed/simple;
	bh=9iXOvBnLoyTVtX3ZQJUvhHtyKw8e75VWUyp78VzUpsc=;
	h=To:Subject:From:Message-Id:Date; b=MmK684kT0P2pniVmyrXtbfjbSxlWeBj3QthuFd0Ue1n/Ns+2OmKgJ037dNEpPwqNN6/rV1XXxkge83icLe318XKb8UPklzK71ck37wCYJ24/2YTs4mWIkH11fHBACbelARxyKGNaQ1On7B71MvuR+xIquhQrhZ5UiqonP/iay+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uBL4ndYa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBL4ndYa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69ADC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757885393;
	bh=9iXOvBnLoyTVtX3ZQJUvhHtyKw8e75VWUyp78VzUpsc=;
	h=To:Subject:From:Date:From;
	b=uBL4ndYa0u7NxJxDTk3BtqlBEWsFA4zNPEhMpWXzSy6Z7gnz+HaKaBAohNfPqbuYm
	 w82SdUSWPJoOXKfeTlifELzp0OsDVzRbZhbVhKzq+GQ2rW2j/Z3hwY85NHlAgXjWeH
	 JTA3wZKvqyfn7V7EgtItO2x9Q88DAftyxooTnH+FxbHdtqJr+HeyvBAc0+IWmoguPs
	 8GdvU4tpSCGQ78DUlumYoYH+vRIXeFOsArJmxOPD+AnhExEkSLtLXliEMscUUOp76b
	 Io5EbWdaATTl04krk4HxhbgZ/aJ29kADwLgbmK2uVXsXUMoek2B+6EeEi6vsUlPAno
	 3NzxfZK4N1zVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A82CA0EE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175788539357.18679.1870788637631824910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74a63ac709717cb527505fe760f3ec2347979d5f734a15ed887a095eaa9aaa9f
Date: Sun, 14 Sep 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757885393
