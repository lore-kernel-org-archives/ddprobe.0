Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF4B30AACA
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758121795; cv=none; b=WS1yKH8eVFuwiN3moqAbztYGQZGcqLJfepfQO9EftmwAcUrnvPuYfOQ0DJ2wD8ZvLIgTEtqG04SgXb/Un0bFWx6IbqbFMxXt9cscw9IASov9/3r5B6Ica+X7dzwMxqcIYvr6STXdAp47OtqBzy49rTY6dI/n1fqP8isUdAH4GfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758121795; c=relaxed/simple;
	bh=ZRxSJCz1EQ8GlQdGReM/a5Zqr5qqOyiOBNjHDwn95BY=;
	h=To:Subject:From:Message-Id:Date; b=SPcrmFSUxsnWECjE3aSGWZJEoFyDR+WQsxGkMJ296+0p7cyAfUZLol3WZ9kyMz63gCKDKEFc0hhkM4Jq2rvE69bknKk4f/AMRi1ot+1PiM7hh7xavasOeXi/v3HDKjHSl2pn1VMBXunDs7OMLVYZEx7erb+W2I6qHR6V5lcFp2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yy/qwGKf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yy/qwGKf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1289C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758121793;
	bh=ZRxSJCz1EQ8GlQdGReM/a5Zqr5qqOyiOBNjHDwn95BY=;
	h=To:Subject:From:Date:From;
	b=Yy/qwGKfpR94YHdjp+Byy1mnvp4XwZptcP95x4e2a/qhmhPR42rN9Lr9X8RcVbZFB
	 69gHCtOsTgxPX75EOXkQ6XLwwZ/HeK/5q0mcbu3r3q74CdIvzESgpd/FcwoXeiKI+P
	 5im6ZFliAgxxusV028k5/PHmZCPTQSFegYEHfNCUuCsWncSb++O8G8bdx7BfID7Co9
	 SnoQzqIScyBZfa+E43uHssc5bSmK8fSgkpTgu3eLQ3kgUpFTwfZgvKOl+7w1Lq5tsD
	 Kqovmm+qPKsHgNmkrbQgyiJymv52qDwRC6sOWAdEHcIgsX2em+kqGAEpaDJvpJlwh7
	 pr53jrCda4n5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1E0CAC599
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175812179357.31626.17252940558099090120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 756b8f908d3ec8788ec7a2a3940bbf75087b33c23618a3f2f1e33e8e4df52181
Date: Wed, 17 Sep 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758121793
