Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209D01C69D
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755833994; cv=none; b=qwomDN5/oek2fud/rdKMd/vgn68AhmYRPXw4AKwCRSSHdQg0U+RxKeznX/ziIF5zAo3d304+lEBPJr2C6xNM3HlbfnSFR+3RUFRAEmcyvpkJcRfGzOi257Mg1cwYdhnL53Lz66xMv8JelcqM480YkkzdBPScJo4XuHxrhqlRF3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755833994; c=relaxed/simple;
	bh=YMv8TfUFcDyN337e/89gff3DhfSU6qLbpUrt7wjZPYs=;
	h=To:Subject:From:Message-Id:Date; b=eza7sCTa/pOTkCd0W9BzDaZB/pa9VfQI9EMIrJKAtQ2ZDfF14no2+34I+eghMHCcYiyoVTgiT1hkj7TjROIxU2CNj9gzg888LNoGFXG7QBe8mSpUXs+6vopckjEYgF4SGosio8pSwUbfLO9fBhM5TPjyWm2bqhDSFzD+2J3jKmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HuhWgUIC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HuhWgUIC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2919C113D0
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755833993;
	bh=YMv8TfUFcDyN337e/89gff3DhfSU6qLbpUrt7wjZPYs=;
	h=To:Subject:From:Date:From;
	b=HuhWgUICpt7WB1nry9pPLUVzV2+ip3bAr11L9KsLZdA3VydbjX0OLSUaaMsoe5y9U
	 8CXVVZffnx0h+8oGzFrnwrsn8/X5tYhde/DWqGd0XMmzrX8WgVp4rOKyD5kPtlgZSL
	 OFKFCMOvrcxDD6Qmso3Ym14PbghkB5Bk396AtQGgB/2kd9RkRF3l1Im+xhdhlZb/RC
	 d+mPlzxZO75m3hGUfLGNzDEw2QphSHuJocHX1PlkVTmpZnoOr92LD9uYPaJEOQ9RoM
	 xSOG+2PMcPPIVlDkKnfNVbTHLEacRbRaQQO2NKGA3AWeLmhCSShQldiThoFL6gXFL1
	 zCoHym3BGJcGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9223ACA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175583399357.21841.15249772126525355937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76dd08258501b90d5049c3a1c9bfd2e797f3def56d526a84c4c7a0dbcd3a7d19
Date: Fri, 22 Aug 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755833993
