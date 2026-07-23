Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA89386C12
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 18:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784832636; cv=none; b=gyy89hWZ9+r6kxg33iU0nrugYblR3ZRkLXDC916j98OFJtFGGrisjkk2fF1ztOkC+X0bGQ0zKze099tvMdCDO560pO/dzAUW8amuDTZQF39t8uhKW8IMvyXs4ITLtuY7zbwZgaXGBXr8MquqOppK3QxOZIF2tKOBvB5jVHz3U+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784832636; c=relaxed/simple;
	bh=05f0mHqwTGY9DIgtP+r+2/Z3YY6ejxn7Bbkna6UXaG8=;
	h=To:Subject:From:Message-Id:Date; b=iB3v/lU+wv+17wCOmzZEhqi4DvXwECUwzLT6HGOORH9MdJNSTmidP9b7Tr0ix7zH1OBQBLvQp/bwS68VRyTxT/3vkBAjAdHCYsm7pYnQQC1QZmSAl5gMUJRtESlH9/TS6mpQyCb4Iq0JvXUo0hE2O8QPaDrEyChX5nY/rBReDOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pd4sOzt5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pd4sOzt5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFBC0C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784832633;
	bh=05f0mHqwTGY9DIgtP+r+2/Z3YY6ejxn7Bbkna6UXaG8=;
	h=To:Subject:From:Date:From;
	b=pd4sOzt5JRiR3xShY2f0KHDd/7rfJSHco+0n4CsvMXWQogr7jVjf4O2hbcQwFrF+y
	 +Ny1xTLd4MwSsFjTuFfdG8MoIKnzemhTaVVrxFyejyGRBLJ+GLtqb5t63LBk3qYTNd
	 hVfhJx0jBaHDUoNJ2tlu2+sJATMgHqzVe2tZ4n//Jn9Mxv1nAuC5md5HWEj7iWx8IZ
	 OIEKUd6OT+1xfYX0nTLcIugt7D+0fzjlb4kxfOm/Gu2Ceo/2nFiZx+hn9T72bCAPMp
	 dUFDD8K5WPJs8ut829bfRUMjhfs28EPaL6KL4rXsj3Ij/iJbiOFdGs7m3Ot2I7VYms
	 rSMSluL6eX3Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC806C531D0
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178483263369.30459.14427488019195007014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f37914ff089e2c427e2cb5c68bd115cb2ba3dbb90fbeae91aaa3fec50ccaa9e
Date: Thu, 23 Jul 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784832633
