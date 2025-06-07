Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5DD33F6
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749270594; cv=none; b=lqgFsFZIVCwOmuxZxIABkRYX+a4hKNhE3CPtDewBNGrEFopHcw4vQwejlz0n/2vVRMBRe/9uUJIZrkp0s90f9wBOCD6MWYpHEY2kYGcHfLCuJuM3hFulWmImGHQGssI7xgHOTxoNgAaeCW3XY+fkURmz9fjUDgMILmu8+ta/pEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749270594; c=relaxed/simple;
	bh=YQ6TeU3NDdpwezquNbrM+yo8fpNGhEimRcmT53vs9Jw=;
	h=To:Subject:From:Message-Id:Date; b=I4mlenZUV2/p0kfuhqRqblTsVAo6YVELLz1cjYrFbFI4jbnrlifs7CwmfY90sC0+RaCixA1kzZIgngInyeuv5Q3ws73/iSFN4FrnpHeUPhZYjMrN3Bii2RhkGBcjweXW/hR7px2/PXftCxMKaW19RnOY43kyDOEsmWavZBvMBdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KqLemBtS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KqLemBtS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3685C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749270593;
	bh=YQ6TeU3NDdpwezquNbrM+yo8fpNGhEimRcmT53vs9Jw=;
	h=To:Subject:From:Date:From;
	b=KqLemBtSt2tgb+X7I94T9FZ+ifM+r135mVp9bu8vSnBUYZnHsUfFXQqO0qTGkjsVE
	 FycmjtPIAXanNt1K77zDeRFm+BRz11fqZ/aIr8ZpDRiG6xZrzncdYsmkzP1fK8SwQn
	 IsRIo3H+wnVG9lTfQ/cSZXkkJpnrgTKrlWlNwfW5VbeuSS9/RgAX1h/V9aNc413lA3
	 UvF7hPgmT+ofb9FGnW5q5BjUf8pdbNitJQfQ9Xlsokx+N+4tuc4hVpve9EBbjjQF2l
	 tkssdoFAV93wpK/cbkO86KTH5ESWGpikqbv4Hc87zkraYppRvNNldZ8x9wEyo4b2go
	 3JweqMe8usRjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFC8C61CE8
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174927059357.28166.6555709787658967976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e01a03a335c51d12a6027bc4aee7a463f1ce2cc7bc0ce34901ad1500b717537
Date: Sat, 07 Jun 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749270593
