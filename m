Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E312556E
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 22:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778018854; cv=none; b=lIq2XYPFmfXg0fQrCNtziwFP1l2MsuRyjHKr/mHya9ZpPDZe1FrHUBiIsNzCzArhNTHd3t2rcdCJkUE3PuetwT+us/5FO9SS0nvz4RonVnQgW8p5RQIhoPJspPKZkY8Ue/7aZTqrfgfnYMnltgDx6JbELlDA+PdrqNXImfIOEpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778018854; c=relaxed/simple;
	bh=/wnV5hBfbABHiZLd+VQ/tRphtS/60hJPk91uLD288ls=;
	h=To:Subject:From:Message-Id:Date; b=R4kxZUoBhk4+lhhUaCvysNpp82BTkiK0ld1vtmyakwSMEnEISQhAgIWbkKrhsLqIlfaSOZ8ZFGh2THh8O54XjLEB4L7zaMnYNvwFzWwT18JIu6W+Ry8q4tG0vJDYxDXYRSHJvVgqrtFG5uNkZg6Imgx/GzYOg0DPi/87dRsagYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q3PlEj9G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q3PlEj9G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C236AC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 22:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778018853;
	bh=/wnV5hBfbABHiZLd+VQ/tRphtS/60hJPk91uLD288ls=;
	h=To:Subject:From:Date:From;
	b=Q3PlEj9GEc5UobQxVIc3ZDgbdRetPG8sDKhP13SNQGgGoHKr0Ml15mT2ZxINIhpSr
	 mdyVbMXfY/te08j0C3O0eLb4zFwKhjyI/MYM/8MXAUrwx+npbnj0jw0r2JwXowRbrq
	 G7uqt/AFLPKBxVnBMu15nYdur1Wg4wiBj60wU6auwy3TkpIuyTPVBs3QeYqapeatk0
	 5YxQQXxa4jlSBrOtrDDJei5hfyuxpG8VCLtpgZR1GDndFvf4W0EOyP1eVdrWbYubNe
	 e5k6iFBK38Ggwuj2Tczu+fyfePJh/RBxsRIf4WfDYstrjlKU44EmjWu/bSlBJt72Rx
	 GA3dCeaKoLcxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3F9CD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 22:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177801885368.2484.6263721416547484012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ca900d39ae3cde27a86e8d37466902b5ef81cda62277a12cf5ed26c9639d7e1
Date: Tue, 05 May 2026 22:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778018853
