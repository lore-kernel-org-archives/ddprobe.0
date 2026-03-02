Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCC0F311973
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772474093; cv=none; b=LRXDfMGm09IErnfRCgZEZa/qx8GHjw3HIGIpfmQ8S/zh0Y26xaFyGiNZXQEvILk3hTvovI2rkFgCV5EzSPmtbVlcxgA+veWxfZ6EaOVYmG3FExXc6GFsYkcLbjWxnlvOdBuc0YSzFvBv7FZpYgAKGTOWVXa7BQh7kwf9B7JW8WY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772474093; c=relaxed/simple;
	bh=ysSAsvrN4Vi0WYs8Pq8tinYJvjJeeGgxIxoqk+KPN0I=;
	h=To:Subject:From:Message-Id:Date; b=VSJH077MKzrCB4MO6oF2yR+78amquKEBq5F15wtoGgn/+WSe1IpTy4QYVH7X9SvK0qPbhjIIhuR+6WM0tMvrx7c53LiCOlbY5JkflhTmUs9Ig4NEs+oq7KbObTU7+gM3jDEXgTHBeItuMaCHHrm2NB7gVHFlWdhMoyl0uqYjX+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EtuUGjcO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EtuUGjcO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A007EC19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772474093;
	bh=ysSAsvrN4Vi0WYs8Pq8tinYJvjJeeGgxIxoqk+KPN0I=;
	h=To:Subject:From:Date:From;
	b=EtuUGjcOC6sbAP48dD/irmtcuX159pY9vSum/n2NzKr1359dZhn70m8cUmUA3tGzb
	 pB2RWzDOQvoY0dB2y28lHRWF2chwYGeYnvCCGTJM1+eTMAyNAik1AdOxSDM0sEGQLw
	 AesJJJt2B5lwfdUm/JKfILm77XZu+dguzrkAXnBF9y2AwD/biN3k57U7H8d1RGmb4o
	 TXTNocpTEAdPnv1RXuVS57TBa4OVjiiS43vKx7e3z5ZmeVDwoFpjkcovDW/IxfmfiF
	 PQjUf0eADq0jqw0laBD2SrL75XM6+NTzdlhjP8qFXeFUg0DiufnoJKL9Y4G/BtT3UR
	 EkHLiLcrpCW1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9364DEB3624
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177247409359.5121.5929021102988920701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ed3feb4709eedd27ec550f76224e47c8ce0c2ff2f4d49a3e53887b09c4da7a0
Date: Mon, 02 Mar 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772474093
