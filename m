Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12BCD480352
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 13:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782998314; cv=none; b=RLHsIF/5cqJC+HxWU/l8rxnwKapAQbXv5HmhBDYov1o0i6qci3xRpGcaAg3o6Kvnx0thldy4wosbPq6/sexU1hnMU/HE6YH6vGVfnQCpvvYoBAEJD7fIspAO/4gSLPZ/oqGrcdHGkCjZrjI0lOEMHxCXEK7vWgJVWFcB1ID1BIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782998314; c=relaxed/simple;
	bh=3qRG1H2sblGMA/b86fLxK9yzMkyDePG9/yoZczVKWJg=;
	h=To:Subject:From:Message-Id:Date; b=edq/7lyIswhcx6vJ908++nkLpFJ8XbdZ/akUYy0zeOxzDfAY5XP2r9XrCLqKdNlFDD5v26Vom+v2HtRm9z2hWfHy3b0H9NUP2cQ2z117RpkqPgyOYGgROb5CUduWBiwVn2926mhlHwyUykPDFTSnjKqkA9+kdypocrMEWkdLHYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nYzGaXCh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nYzGaXCh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC7FBC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 13:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782998313;
	bh=3qRG1H2sblGMA/b86fLxK9yzMkyDePG9/yoZczVKWJg=;
	h=To:Subject:From:Date:From;
	b=nYzGaXCh4QFWot8qc552bMxjK9jvqwVFjTkvb9+hLtzBo3zqrUteEMB0u3SvGKfpN
	 cvkyGksOuVQFeNyevPbOqYGdsyevjwpc7Xe0eir0EgmciD2Joo49aRT9odfaorl9Kt
	 BVg7IPfEXmtLFKx4flMobvsZZAzMItldTn8eKs+KW+ueYQiRf85uB5ceS3FX62kFmZ
	 cEYXn93PKDgE5jHRwOAWxqV1FAmKxlgeB2NXlIbuNcUzcBvzND72v+OQbXEtFnK+pm
	 3nC65Zq2SbT62wj4F/Z83Q280c1OqlYbmQFjfiyfBQToQgTsabbQkp954vVf3re5u8
	 3L/XCDzZAM8+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA84EC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 13:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178299831368.3707.8422384323502218289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c15a3510606831b6646d5249d4f816cfb27a64ef8d84a820c8e9e91e2a59833
Date: Thu, 02 Jul 2026 13:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782998313
