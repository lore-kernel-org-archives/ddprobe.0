Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54EBA27E1DC
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788159034; cv=none; b=K3inil3T/XBqXoRzS3NbFLr2IKUsEjL2ppT31gI4M7YRQO9zARDOu+0i/cbGLSBRZ9KlbSBCcQJLoPgqxT1qzxL3VAZJQkc+Pgm92T491RkmjI4reHU826Z2Pm0vyUPUpG1Yg92fqkMduPwtuV/cwaZF6GELUatXrkz8emF+oRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788159034; c=relaxed/simple;
	bh=j5t4ANfUMw+T18AEHv66wpcb5re+bIR9TGKjAQqGF3Y=;
	h=To:Subject:From:Message-Id:Date; b=oROnwcIC1DBf98cdOEPnbYxkNiA5d0tBHyvdo1nH3uZ86Re4+xh8SVHfmXp/O3aEhXLk/XS+D/RTZvi5Utxn3EXWBq9wS1tnmQWqJM0IF0UE0D0LULkx0A1vFqj/UorAehE1kTzwPiZGTC6JFjVJ68BFqh9C8tKkKBuCc+/jEic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QRzM6ZGP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QRzM6ZGP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF738C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788159033;
	bh=j5t4ANfUMw+T18AEHv66wpcb5re+bIR9TGKjAQqGF3Y=;
	h=To:Subject:From:Date:From;
	b=QRzM6ZGP1sLNW8HxqzW80tEuzCl5fhsDo5g8ICZx23cm/HAudrGyE83x9CR/letbr
	 D/xjTfFakTq/6qP8FMHBekKKip7QDSBnewS2Ve2bx08f6e1wa7INvtdnD02GKByAcK
	 OqyWnTvRdxlLchuJYarV3zgZTagmCYix6dpcT7GuJLIdyWn+Iw/hUPHgC7XBYiiTXC
	 rB0prMfJGrEJ1DR90rzq8MSxFE3T8iaP5S9oAFxksTEBMe3uRAaJ38sZyRVPif4NKc
	 Pnrq8YtQsiubZcALQXwHMnR5oV+YpZJVab6gZWN0chKUUckNkhBGyuFuDLgJVbkKwK
	 Fjlj76eG2hvwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB2AC61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178815903369.26070.9698381523670560682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5a1eec38ca2f863d6ba8e0c997737593601d8724bd7594d8518836c9bcab67f
Date: Mon, 31 Aug 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788159033
