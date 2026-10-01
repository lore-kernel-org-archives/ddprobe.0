Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BF133C345D
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790838634; cv=none; b=eE3tym4McUrMsr4TN1LJTETJGUODOaHBm4UYwljETFx1DYF57yiJnzW5MpnMQLTCFpXVzka3ogwbHUdWUg9vbc0lykrtLVyOJFYGDXr5/8IJKc8OD7UK3Op2yM/RAYdH1DRcm9+DQWmtvuOx4SbW6NuXFpu1boO/LE7ecUwLOIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790838634; c=relaxed/simple;
	bh=kVVs0Be1dFiGpHdpOn7H1zcqWg9yXtwz2X7OvVdehS8=;
	h=To:Subject:From:Message-Id:Date; b=U4dFNle9/SrbtYfFF8rzQD8GzBjtXZWPmrsDf9LTe91d08PzWnRemS23+gtetV/6oMy8AyQy+1ydmmyT8YDCDQe3iOuQLQO26vr3tUX3ZF9NPxvPmv4krb7AVe/BOzvoXzQQ2Xw8zVpaHdS+12QCC2TN62a+kZHpzDHXaASxp+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sz+D6O8R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sz+D6O8R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1238C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790838633;
	bh=kVVs0Be1dFiGpHdpOn7H1zcqWg9yXtwz2X7OvVdehS8=;
	h=To:Subject:From:Date:From;
	b=sz+D6O8RWJYl9uW5Q9KHD01Mz1Nx/vENQ33iTrlrcfGtlB18PdT9+sLHw7EJiysBM
	 g4pKAdRuMkS1rktFZ6QMRnLpCvCbtAy+9THTuNTmf5w0ZMVP6KgNL8W9EfkaecdeG5
	 nM4c+0hsbC5upN4Wmqu2bW2fpYPLakqgv9qRkPIWdzhgKxivQqPrqcjbssCaMz99wy
	 /ej1XaF7gcUPrwiyH8t8NuoCt3vSbwMAWbm8XeDRJwhiw10ow43CbZewg0Bc2hykPl
	 V8r+/fKTfFqTD0TdPDfosEN4FvUcPxxU+w48NZvx9I8Ch5wWmkjF4kPuv7WoAJugDE
	 BSMDyiEidKSGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB085CA5FC5
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179083863369.12038.5125460646696527084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feffc33a02c2b90077ba438e533e22a9dd4f8ed5c616f271f8f8e57bc70f5332
Date: Thu, 01 Oct 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790838633
