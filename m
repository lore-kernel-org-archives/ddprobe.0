Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0D8389444
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 16:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775579734; cv=none; b=J+NmvE81KzXp/qteoDnob/rrXEyQt0WxvuIZd1oH7FvJorJSqn+gjDnayu76cQnjiMDp0rB7Ivx+ZxlTb1UqqhGoZ+Ep2lU4+Yxi7jBWmeW7KDygs6HKC3J4eiHUZUxPOgnfqNcStbBpqkX0i2VGbiEjwtnlNLaMtm2f3uqXcWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775579734; c=relaxed/simple;
	bh=ROwMTHfYGmTKbOzX3ltrXaoQDdyIhd98kSr+rJJ+qpc=;
	h=To:Subject:From:Message-Id:Date; b=l9/msqfPJWkzbCeqavj67sEas8htcMxgNEhEUs0wLlO8/pt8yr2eoeJI9+PCgBk/wSGWbxcQQG9ChpOw/24BWlDjYlEiTD1/U1PPUcFembG6erTEWtQGzpAl9HxXZg9AAYgaqKsfOr1e0MZCvMKWKnZVhItLcT/Sy7uU7IrYrEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NLwPPohX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NLwPPohX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C61A3C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 16:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775579733;
	bh=ROwMTHfYGmTKbOzX3ltrXaoQDdyIhd98kSr+rJJ+qpc=;
	h=To:Subject:From:Date:From;
	b=NLwPPohXbRESCPbJymzQKjPeaUrG7cBcL7CX9zzTaXg+rVlYzu/Ss+zC+fcmTREJX
	 3rrDPAhIVqy9ath5dP8JdEqDc2xdLJkRwrQxM3+SrdxpGi5XmN5HhiDSoVSsqryVjB
	 S9JHh7OyFV4HKuQ4D/zEDiwA5lcziHrcNw8R5GRaKZvoErwyGcxpCUTHYLdudgEcQC
	 83OWZEc0buaXzP9/PDMruaHAMWRi5Q6WkABDWESWSx5rYBkQYr7rpUTOIi7GdjDMnY
	 WFA/4awuFCQrOzcO4mGudvudkc3jLTEKII+227tJTFF/IqyZp+meuQuIpIQfSbRz2P
	 2/Qud3Sp6cgYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1615FF5125
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 16:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177557973369.9831.17813409518430051353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0125c18e6e52887027c7fd2c8235ce03dc86ee48cc9b1d2d53a74f4e7f82f508
Date: Tue, 07 Apr 2026 16:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775579733
