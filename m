Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433C113B5B3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750005594; cv=none; b=olMWJrlvhCHZJQqGPZ/2W/lrS6eDXf9IKhi/Dp9M/4++melaHs9K0f/7S1i+kMYGajosjLL2+vRiE0X8Dh5ukfoATf+JoRxdF5oZPHpcbHFuysCxQKnAuCrz+9DR1h1IozIJ/ZgK/hGq3kTrfYFG1SJBm6u5SYLgP7Atw8piUsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750005594; c=relaxed/simple;
	bh=TQXCKUGilZST1zOCbFH8lrGtchTGmfSuo/Tyc6nhPvI=;
	h=To:Subject:From:Message-Id:Date; b=OB+s1NHjBsMDeA4U9zs5lUMeVJwo9aGGNhWlkY/eNjdAckmDe6jTOF9TiZV5n0f9qPTP7j1YUF0gQmMxG999EXn7GpaheTV/O9VWDTztPCpT/4vMNJnS/AzcRRAiXSSxYXWKfX9VPArlrmBLyhZbzhyAC8FYD5ZtWUhMznjKkkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vw3RHVKb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vw3RHVKb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7143C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750005593;
	bh=TQXCKUGilZST1zOCbFH8lrGtchTGmfSuo/Tyc6nhPvI=;
	h=To:Subject:From:Date:From;
	b=Vw3RHVKbX9TwdQXFDw5yZ/f7FuaePnS+9hySEjoecIxwegXnNjv76c+8DXqHQvI2O
	 Ql4xW8sKCy8zsx2hFzihPFDDsKebdwSsuwz+Daf4eZvCRANAnarWdixo0HSihJDIdu
	 f/BaXaMNAYVKCcxPpUN26ejaZGAubNEePDecOS6ZE9E5e+sj0UsfZRK+OnWgWv4EE4
	 ppMLxNc2jYxgso1mf/QAqT4fFZgV4RXJcDG9SUmSQ07XJB+wCpIuOd993Il93hS7e9
	 OKhzrw4R5meIGklfKejpxGiR6KlQ1YV4iiIHQrVu1BLuGGt0ZFQaFm5tj4eGM20z7M
	 skXZyyqMDu5Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB60C61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175000559362.5722.13252978342544477960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76c0d4453bdd2ac2dafb41883b4f55fd051bbd35d69734a3ea1648d9cedde355
Date: Sun, 15 Jun 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750005593
