Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF2C2F5328
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771566894; cv=none; b=fzUaPfiDCNN3mlX0SXHoQ7lmyiRcMHJA4uoGZALLqwlYR49OL4i3WKSdxzMG63uLsKzzeQ1Eg0INXtLY4r5Zr1i5tHhFeLykD5vfxGyUYAluYSkATd7Iu93t2vRziNQ2rlE3RexXAC6nGqet7crPe9CfoR+tlVRTrRyxHf27UDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771566894; c=relaxed/simple;
	bh=yIlHWzGkZ1RY4T0CONPuJnmyoGdtVwgR93FFvqC1tcM=;
	h=To:Subject:From:Message-Id:Date; b=X5rUFHuF5gmZ3x/TwBts3qOvfLs/B7vPfN1Dx4burnIG3mRTd7Q5WIQG1DDrLeYI4eAwIxTyrWRDMnoKrHHKd52vfUd1wzB+3SUJqvw507eKZDhxslOYwLyP5H8xOwzmO9JQMh/QxInkIHiETAhOhDajVCrBGnQvpCx8/wZNo3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZKCrXka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZKCrXka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A2CC116D0
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771566893;
	bh=yIlHWzGkZ1RY4T0CONPuJnmyoGdtVwgR93FFvqC1tcM=;
	h=To:Subject:From:Date:From;
	b=YZKCrXkaNkHuGSV0rn45cfIaqPmRzqdiI9ognoJUXK2lhckp3oqNi5Bx9zPR0XK4J
	 07tIBduyWf0zOzeCiVOSkO01XXlsnAOSv0xcEBl0f6BwkTD6UlkZkoEvlfrQhAeWa3
	 Q1YpvzCx/V9CiWr3hrczY4AbejXVjkd7xZBngcO3Pz7oBTifZ0duEIDr1JbVKMrI5w
	 FOPANYLDeK7dx9WKWAz1mIHxY+x+oPpwCJoia90HXTokt+MH8DFqnPCasHP4Fi/fHq
	 40yX5fRhrgRBuo5TVrI0O2t38FU9BsYmvEpBZRgIEIjYJm3y8FkWl29ff50N5AGPtm
	 rIdk7qlDpDEYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9294C53216
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177156689364.17621.10697461166015939349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b5e442179e4e5c0fe9c074e6f438ec99362ca9ec36d00e0a89be76ce59c084f
Date: Fri, 20 Feb 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771566893
