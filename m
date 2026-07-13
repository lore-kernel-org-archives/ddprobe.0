Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8104307BE
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 13:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783950514; cv=none; b=FQvcGi+ShGmC8DrQw3GGCwLyuju4uqBXhlUB+Y4eDjd83M7KHyha/QYpOMFtdkmmVHuRpE98L6ljdD7ru/vFhUYmVNBpv0AH+P9ABA3+5GtHWRCn5OpZI6nnQ6BF97JcOi8stfEwcutEyAQD/Xl78Ufl1z1awd5zaQ/8qHV3MFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783950514; c=relaxed/simple;
	bh=xwDZkHzTrpvTJieFp6GBrCic9ZtVrJydkW50thFbD/k=;
	h=To:Subject:From:Message-Id:Date; b=L1ndGOrpR34103RayKUtHMEqglFEjnvuaCVJWyvFpgLXqBaOYL/Y4+PdRvK+qX5hungppPodGpMhdSCeds6LzupjvGMrApVv94k4PuX4B+kN+dl4S9D09ofZCQSpN9MHbHrSmuK1RmZVtPN/SIqUagHveftsbetxKk4XwNSo+T4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RlH2+1r+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RlH2+1r+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE19C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 13:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783950513;
	bh=xwDZkHzTrpvTJieFp6GBrCic9ZtVrJydkW50thFbD/k=;
	h=To:Subject:From:Date:From;
	b=RlH2+1r+yRrRF8xVH6W7mu3XquZP0zHSAZc/ywI6uBHatfOngmhCUkgcfSN96gPtF
	 /e/IILnXj0PxAxO6FumFJSVPW1wMjsDpziy2MhbdtdeCCwNWTyp5tfVan6dFzyHT42
	 2DSks0akTjqb3pnuejI1ZWFheqUdpBm74+ELemmn8DQpc71s9cdj4zedZegnOjDEXi
	 /H6mqZT4KEytZb2Im05mtpv8x01rXAqqdJvuVZ7Gfw1t/XJarW+QXPBPXNvFOM9egx
	 0oOpk1Z/ED6ShdraBEUa7zr/VrolBJ6dDiezW22Tv8MYZ6B+6oKYuSQshK3nRiJtgn
	 Bm5lleXpnBwLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A03C44501
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 13:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178395051368.14451.17816577024987919594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77a3ec3f146d08fddf25e63528d631c718e6e8b65d136914191fa32235051f34
Date: Mon, 13 Jul 2026 13:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783950513
