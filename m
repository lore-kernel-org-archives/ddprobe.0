Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7FD23ABB9
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771096494; cv=none; b=BlWwEdywnrqo+1s1UYRW3slEwGv+/WOxxcsSV9t7E/ADOrhh1YTkfE/ERg/OY6G0eAb9NpbNSmYHjl5+ZKKg2E0GYrEKNU7KuOwuOiPAflN4PxQieOAxRf8kijcKXHvYcZxEX+4OWXORlbW1CrThiHGey0RhPmni6/eis6lZayc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771096494; c=relaxed/simple;
	bh=GFgg3JpIVxv54cBmBWCtX3sWFlq81+/9cv8mfZxywKU=;
	h=To:Subject:From:Message-Id:Date; b=Djz/atL2rVlQjxu5uUWVg7VknUmMhlCJMC2P77G5U3lJkzTuVJ50vd0l5QIig3Sxg3g064GmlmWd11rfKAgbB13yKbvwzuY2w0MxtyZ0Fi0P2Uml/lyR6FBypnOA63M5KvQwqH8EuIbhB+JgdVZSfZUNHTPFnWjz+liq8e7dRdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZrWhl5Pk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZrWhl5Pk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BECC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771096493;
	bh=GFgg3JpIVxv54cBmBWCtX3sWFlq81+/9cv8mfZxywKU=;
	h=To:Subject:From:Date:From;
	b=ZrWhl5PkocwhIgTGY4FrFh8xW2bf0BVfQtI5s2sYeY9++WyPoS+O7l56b1BTC5rMN
	 OqIWxyWIXhT3/0NaPLFtawWHqPBZNUiAduk+kDPKEaY0FbdLTlImtpvOV7psd2tmEf
	 kKkowJ4vvnzYE5/GYLnOvQrjbHV9ixKS+aOz4Q4cBtkwU3tUdfGmr3JkXDFzDhdRd8
	 oXAbDKQkZl1+nF2CqT/rzBH3jvzbcSBMz0pxxn5c8zlee4IRMfMbBFXS5gxbZvYPaY
	 E1pnNKVIno30JQLR/EcMYvv0MSPZk6WNp75Pfst95dmflttPo3Rt3/oP347oIhTsTg
	 heFc8FxcN7Ycw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EFDEF5851
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177109649360.25656.2883843794950728335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c8d041d5e35f0a31505089ef2c2c2e9c9966bd9d9910fdca531c13dfb8b6137
Date: Sat, 14 Feb 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771096493
