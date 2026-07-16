Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4774D2DF717
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 23:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784243314; cv=none; b=bP85VdAE5Uvky3DPEoWzTUv6Bm/ltCxU46R7RxxCSZeQoUPxaCeunqBA5pElR4sVPRGwbQxOtgODoupKXsxreQ6vc79LFjcIP8HuxuPBrKZvhKY2SM08G5TXjcyXQHnBxyXDkDIvcu5Y7X5qskvJ0g6v2DgXkAJ59rE1OVUOCqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784243314; c=relaxed/simple;
	bh=LGkESaHEuNnN+eWh8/XvQYzzo0eGk+7jyQrqXC+Nhfo=;
	h=To:Subject:From:Message-Id:Date; b=TwqoTXsEOnc/ksbaKyREGz4hvH3noUPxiewA7IwAQt9pkwVD7XhJPRJTKtP5Zr+uxqdm0hWYTTPjnXPtVfk07ALvpehNprE26BYBwu72TpCX9h0SU5Acw9+pmAcHAdcZbNjzw0Kd7lP44+jpkBZz6tTNcWtajEU92LGsqRB47rE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=In7tXbAr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="In7tXbAr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D433DC2BCC9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 23:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784243313;
	bh=LGkESaHEuNnN+eWh8/XvQYzzo0eGk+7jyQrqXC+Nhfo=;
	h=To:Subject:From:Date:From;
	b=In7tXbArgAEjuTQaIof8+yzvYlHZCIcuEvx7Zbcnj+RG3YZ6LbViMxq8Lgf8ersMV
	 Z40R/onQWkybecb/em3dgIWN/Ggo1ZSkEPbk6fL9Da2YQcfQlyQFMoACBbBls5gmhH
	 15d51TMiIETSO/W/N00LXNHawa9Qc+u9WGRqTXUfcjIMzdUaP2uOWdDgmjIGyOftn0
	 BJGicCzlXy8pDr3QSUJfraRyWrIVoYezVGnQUhELkgKLr7LPDYaBOxYaj9JaB6kSFW
	 i5+E2iaklIcez0YRLzGbqECVNPsB6Jm07iCzPoIa3a2wLxczn2sPwDBxxY3tlIAAkR
	 xvxA5INUFpKIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A867CC44512
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 23:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178424331368.31146.17732510829341911877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c656b4ba588e8f5f6d248d4bfce77cec97b4af25e0420b018ab45c238d7aa46a
Date: Thu, 16 Jul 2026 23:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784243313
