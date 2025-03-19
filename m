Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362F2212B02
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742391594; cv=none; b=L67aMSvJnqBA7vvwQcFT/kFu54Zat1mYjKN2bccb+y2RzHVhN+gsVajIZ92/UFKxfKIlVxsH1gED4emBLb51a+Uvso+TvInv8OJnoux3WtM2m3sqN3rXY2vKLgcYQXthUASWcq8Z/n6z5+4+f6k0WaHVI4Kza+usun7gBQPgL+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742391594; c=relaxed/simple;
	bh=6ZuCVa2PdWhLseD3joYkEbnceIIZYCGAwAFNfEyzSR0=;
	h=To:Subject:From:Message-Id:Date; b=qZlTsajC8/JHi/6wfVJ3Ej/FMiFy5IutkPMGHt3BQuuhu1i2cYkM5vfsuhQUAOll52E5a97ZmIyCbqXQCTKSQIrEvKmUE1bZaPht1poPAVp22A+CD8YmzcIDXcnFRDXXLYJgqEcG5G5EW8Z4t7BicL5sOAIhk6nHe1w7Nt3rOS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oXRNHYvZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oXRNHYvZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F77C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742391593;
	bh=6ZuCVa2PdWhLseD3joYkEbnceIIZYCGAwAFNfEyzSR0=;
	h=To:Subject:From:Date:From;
	b=oXRNHYvZkNw4sQ3hyDjB2M1POkX6Ncy277LNCwFLF1jJse36CiQI9HVgr53igrrQV
	 hJR/ShlmR9fODZlFEOL7tRFKVHiOf4GwxTjEnIxYEWWaYz8D7BRPxnWH0GHc7v6P9o
	 e5z4zurs9dHdwy+ix2cNL5Ho3ZgTAxvwaIMpozU5kJWuPLmfvY/l+2nlu5zzYsy3zO
	 Ea3/uHVXRwt0lQtBUQeP+TqknFrv3vwrsGXJUj80deVvftoitUWOjY7gC9nO4hI/gv
	 k2GR3EoleWhy2tvMhoOyRxlaVHHAjQ0J9GIb6/sNG6RTrCIXiskdjSPLhvCVVpLUvM
	 RiH0GqtklkzqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97613C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174239159359.26673.11941621520592895559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ad096aafe8e63bd84d3d279db512f90c6760455f18cc4f689ac81d3f8929274
Date: Wed, 19 Mar 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742391593
