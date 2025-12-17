Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D67571EB9E1
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765941234; cv=none; b=mi4izJd4gQ4b86Kny9ayGw4/TOXjkw0C/msgRJT3SLQsFgnOfDipmS8LGtnBPNIJnCZ43PhykF31ek4/dziEGRno3d7KnntzWWqAm75O8l/giidauY2cGkwDnrQP9vEasR2kb54KfS+4fN9q1gMLg2i0pP9ZLeHfF7cObtP/NLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765941234; c=relaxed/simple;
	bh=J2lifyE5VKy4AIb1zTpWS26GwGWQWJ6ooBON8D4POI8=;
	h=To:Subject:From:Message-Id:Date; b=Ue8sg+7bmQI/g3xCkr5UFwz2UiIOcOmKCN6sbSi2DQjXdhRixfv1iJc7OvUSxCTecAm4As8WMTpBGg/j8SzyEsIOrGDN77a995+ecR1E+iXHrBNx4OHvcJf+MHumKJvi0h9dPejX36RxpzCd/d0cYoKPOrFEY92XxsImZzCCv+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mi7LjRxe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mi7LjRxe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3024C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765941233;
	bh=J2lifyE5VKy4AIb1zTpWS26GwGWQWJ6ooBON8D4POI8=;
	h=To:Subject:From:Date:From;
	b=Mi7LjRxeXK7tlmMvfRS1+NuPxnlatLRGOiNEq2t3gm8rnHS5PdL6/9plF724bf5hX
	 QdqkbPEYQOeUh7K5vQLFY3c6fzIO23Xtt9U86VyOXZsjUI/gwyBisJ8JZxESk/+QN3
	 VAw9GWl9EPEO33BjhnKMhU9ygiQdYfYgngLAL+9rJWqe0z9Cmk/wsSR+mX+422U3Y4
	 oEITJ9zAnehxcf24vw1Bcajx38L57QpQHqCbU3SPZ/p8YbfaiyaqluLGgMV+x5aQlv
	 6ZP7Lj17IwcWMAGWxamAPFb+qsIiahBAWZhbPwKBetBbAeOSrxUzcxKEQ2tZVmknwF
	 Gq4Xvd+eTqYPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910FCD6406F
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176594123358.19701.14623046171891250602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33715d2f1726bccc8abacec3cd63bbe1120e4e6f722a4c93160c4c0f5b13ac0f
Date: Wed, 17 Dec 2025 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765941233
