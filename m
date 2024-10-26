Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2542A13D521
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729968954; cv=none; b=ceXJN+udozdC4WT+GwYvZinr7XDzD3uh8YN3komjgoRxkIRKvYMt9PKcbfD6kzUy3GTeFMcF0ROXPOEwphcBFKt3lS7I4bWLMM/xYcvvl8DX4dT06s1APfYko3R6pM8S92Dg3vu4cLDjlJJXWQsLOeGYsy2HQD2wxHH3icOv1+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729968954; c=relaxed/simple;
	bh=F9lpyhujKznOzgYlwSLunqt+eO51EaUhSNbl+9vbee0=;
	h=To:Subject:From:Message-Id:Date; b=RMM0VTJ7DqLsVj1NPvhEnCOe5p5sWQmG0wxLkWcc+QF0DhbBU3t9sSeQf0Sx6P8aQrAVXrbEWrl08g7nb6vHoc/6/XHDVuL4X7fDr93lTxLRxkcYF/6UoIKZztHKbBm1HWI9n+cY95lCXTyt0xONba+cgPg5eLqQbCntfX2scLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQLGAMiw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQLGAMiw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C5AC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729968953;
	bh=F9lpyhujKznOzgYlwSLunqt+eO51EaUhSNbl+9vbee0=;
	h=To:Subject:From:Date:From;
	b=OQLGAMiw+xFtDkX7bp3NS3uQ0Mr710k6An7qlDvSxS1HRtIq7SN7inPg4qVKQ3l5f
	 eisqEp+Epga6KtL5XzQ99Yr1kXDsr51l+XaUDxRFhUOwORBj4fqTBWzexyLZh4/e+H
	 ETNNfcNoMiwnh0cNwohkh+FD5R8wcIOQS7OtfirjwCTR13kLl4JhQctohhpVgnW51r
	 T0KvMSv1ilw2SnS6jGzRHHuj7lCdi69Kk28TQNYJY2/hBtjZ+FI4MTtUF7LfhMN00w
	 Fc9dK8AJJyhblMIic9xP0eYfxQ5pPtyKM7KNgU5s64SXrNM8h0xalmpXUOmnLOUuKR
	 p61kyJ3PGywwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B17D10C02
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172996895360.28091.9745408347682518857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daff8422686dcac9064ac7b1f9f201ac9dec4bda467b47a869ad1cf17a901f4b
Date: Sat, 26 Oct 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729968953
