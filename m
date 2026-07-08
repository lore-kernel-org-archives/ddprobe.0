Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFC442E8E9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 16:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783528114; cv=none; b=ldIOkGVQdhegbywKC41fyJSi1kNhYsxaWFbskTIcAcvIjjx2Q9m+cr4zOguvU3erUE8uhLC/P7uhIVztMuoBLCkLkW+ml/IvAmrFrv1XncsmUsFzyHjL5/T0mP2u73YiE3EWCFh8EAkpEZuK/l5Xz3S/zcCQh3XAtH9iVysUhZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783528114; c=relaxed/simple;
	bh=7p+LWSyWcVIR2C9au1eXDdTGiHys0T3hp412r49LNYA=;
	h=To:Subject:From:Message-Id:Date; b=oG2aDkRFf9pCxq2n5vWKs+8ms14R9Lix75toYMsZoXFtlje4HTzidpSkPqqeuh9Sdoo0HqCv/SaYHAyVn1mf4x0BjO89DBd1OM4whQ75LUsrsrp85K3C81c13gHOGsSRlCcZUj9q0YwYNXpp2dBi/P1N5bd/gvgt4/WiUwVg9hM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FLE0Z+Cd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FLE0Z+Cd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A6DC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 16:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783528113;
	bh=7p+LWSyWcVIR2C9au1eXDdTGiHys0T3hp412r49LNYA=;
	h=To:Subject:From:Date:From;
	b=FLE0Z+CdVF8uiHgpmiYgjdcyJAOGVW85CKz1HmBDG0tmhE7fMqFC/erW5W8mCq4EN
	 +24t6Ovl+ybN1HeJfdchTnnuymhERteLbMeEB/qAsnGOid9r6Ypk8aCoLyn7oiPi20
	 58Ukx9div8ThtOtpUQ1KuY+1MiygRVZclajNX+kgaJLKRg5+Zn5zIaU/NKtTJumz5I
	 kBDImcZ+R+enuz2VsD8IymJLTs+l97WjKE6cQEzRcSYtxsaQuWPu+nXo3fBbqmH1Eb
	 RBXmJGAqlbfXDlaQy3aLhltRAKIqNdT5kHVvueltOuF4bLc3ZiTZq6aESyejBac5Li
	 P+9qve0Rz9BAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AE1C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 16:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178352811368.15360.5771172410635370846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4a31001f70930788fd24dc37b6aecd9c61a721c36c77a34f75a103cbe567dc2
Date: Wed, 08 Jul 2026 16:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783528113
