Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4422C19D8A9
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734728154; cv=none; b=XUCUBMwNZzW0P+g2pgvcrQEm+QAK4S7Zd1ExV1Ijmn/Ogqt4bqnwhNiHSP5C39Y/WkeOjMeAzKXzkL8SQAhL5FE4JsQ7UsmJhfq1bAeNnISsSgDlbkumaCA225pojn5VPuW5lKOVExmUISqExSgo/9YtW5ocVNg4ahUffh0MswY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734728154; c=relaxed/simple;
	bh=wR7tKazd5bKYBDvWg9UgdVqKKQswHdC+fAR8guCPuh8=;
	h=To:Subject:From:Message-Id:Date; b=DCetaNfwHIn9TZ29IxiU664mawomAc7oxdt5prz8wKMmlI2aC79DXehUIKZJzMjAinJ8HH46eGKQlgiWDJiddCl2oBJJdOJ4Trp2byouT+uSphialIwlkle1wSWUmbebVuLcvvnvSL5Q4B8iv9KRslYwSXRToez3N+MfJGUU5ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fGN2EDMu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fGN2EDMu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1CA4C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734728153;
	bh=wR7tKazd5bKYBDvWg9UgdVqKKQswHdC+fAR8guCPuh8=;
	h=To:Subject:From:Date:From;
	b=fGN2EDMuGbKJv3vOPKdTAmdcOzVhIWUHlsmRygdZi4xTr7myZEbOuGrY4kPQyDrth
	 stgZe5NbCVLjEm0bJd6HjoLzveELawDZZKIufFzgTLiw+3uubVr8Pq6sUZZyQJ9Lhk
	 9S5JdvovA2B55bK1eY6+XleJMDYo9CWDU3hWPIULRu+ao9jq6ov9WULPq0EACeU4pF
	 PRQpB0ywcXDBdbEiKZGbBXsR/ZOoS/MSRxqC1VfunmeK5pm5NdoYzpPDM39g6XiUIL
	 MYzJr3OiRVafCR7aflidvD00GtsDKYCT8KMcTNVG//9ROdr0IqWQrhpqgS70/6lL1K
	 94eeXAm8kCsjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E9BE77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173472815367.15106.15744640271668184586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b89d68455ac033052181a8b6e851e7a379ad34f99c5dc8c1e28b51ecf6892f8f
Date: Fri, 20 Dec 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734728153
