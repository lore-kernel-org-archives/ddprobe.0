Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F37355036
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767796434; cv=none; b=meEISG+HsbIN5G1UYLdtrZZ0QTh8uRZ+cMvDGMGNAkaQ7zENBV7ZvzZtTTMePgHfmNIlNo9hIVvColi+uho6ZB84Zo+566kwumdSrCjOJnGCC5IZC8Xa+KKknIDJlq3cHP62fTpGDBMVLnlRbAYpU/vLapYENQn5vAkDr960L4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767796434; c=relaxed/simple;
	bh=3INCl+qpOPFZ/DuWBLXPtGTJXdm3auoV6789Sx8vyEM=;
	h=To:Subject:From:Message-Id:Date; b=ecaWziF0NgyjXdXY4BfaLE3okVCljgYUIWftYlTWD60DpBbONp76PpSjmXpqds6z2vdL3MDhDTi+Tovd7Wt9/UsS6igmljBwjp96pgKY7e1j1BtdzyY4zMsMdAXn5dSRW83+YWCe8tMM6ePBxyWRxedwogHC7SI4OP/yh1U9DkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gtKLcOp4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gtKLcOp4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0766C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767796433;
	bh=3INCl+qpOPFZ/DuWBLXPtGTJXdm3auoV6789Sx8vyEM=;
	h=To:Subject:From:Date:From;
	b=gtKLcOp4YciibYLtsE7KdsrJgfV2a14Gzq3euoeTJq8A6tUZzjaj9UGQ1jeJ2Cmst
	 cUa3PZFEwVWpgEdF+1bzvxkEsk6ZIOIZs+6fAGI0Y4xS+RbZeJkLnZ4MIJA1rNKYxc
	 2sfyhcBTuKley06oHDUJFKZ6mA4mrVYaDBXlQAhIUrWTAKL2zWLHdC2rMbd5gieOrS
	 nFW0NSmKxP3c+a7atnOzpiXzLTbw00kTddzs6hDzzMpVxYcL0VfvvcZeckvRGB9KUn
	 i4ybTSiirZKarVYboj8S8fBVNSvq1VQiR6kJSw8iOyWPaT4YTlEzFqLCd29pS3p+YF
	 Z8DDmE7MzaXSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8B4CFD63E
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176779643357.10482.5164472891674685695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 775b6f2ab3a854556f3d67001d3dd9d8a0c33f2dc23bf3da81e43e6cae38c955
Date: Wed, 07 Jan 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767796433
