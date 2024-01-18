Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00DEF2C843
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 16:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705597097; cv=none; b=i8O1ckBxYb0wmrUeJWIqnLZQSF1BNXz43VOfqBE6/dluvlC6BJPgReuZ6Fjov+H8on77889y043LkutnYn9gwpXXrIgKAEEssIHia/BSYT8C+Z5I7rwdZ3l9cqG1HSULYsRIyyeJYMwiV6arG3bJV5x++3XfTVDgevYozMxXURE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705597097; c=relaxed/simple;
	bh=83JSg0gD9cEV1Y42iRo320/AUM4bCIde0Bml26qL5Ls=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=SFQxN0WQkVcFf7gF54UKfuUDxLEbKXXqrIBfSPAkKCP8MXwQaPGODAw2xA3M2qFQ0C9lFeKu7Q36saYjFvqA1rrEbxtpbyw3pen4hphjTu7hL8JbIDuTmnhlruM3mT2l0JmpO5bDgMRm7Yr7oQLu9xH1F2/wbq1j1JHUfAwDtME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ti8//KU0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ti8//KU0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7772CC43394
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 16:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705597096;
	bh=83JSg0gD9cEV1Y42iRo320/AUM4bCIde0Bml26qL5Ls=;
	h=To:Subject:From:Date:From;
	b=Ti8//KU04UneVWB+2UqgN2pyjuPuK/TswEBDb/3BExMsAeGk7JCvkKbfrpyii6xH+
	 iIz9WakMEz04uq78aYK37d3M5TM7eAfNMk4cg/mX7Sn10IjTFflz32GLCTOsIQ/86J
	 bqgDdhfshV5f9zz3mcX7XoZ64F5rHtjhwWMWSvv4Ob0mUTcIwjVV9RvFDtxXIJtQK/
	 136bStu9psWgU08XDzi72LUdqLytFIcYfQx+x8L13uOhNLfoDXjxzUTPbBqrrltaUe
	 HRc1D6VYbP1shaBSs4aTpChWNxf7MipsdIIaasZuBVDuMbogAAvXJ285pfhDGFXj0W
	 QwSqeOlaNN8+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F4FAC47DAF
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 16:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170559709637.6593.2966837662250460702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ffab67fd7efaa06d1b0551095de9d9e202d394431c5d8452670011513e2b668
Date: Thu, 18 Jan 2024 16:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705597096
