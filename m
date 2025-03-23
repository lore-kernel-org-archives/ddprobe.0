Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51FCA191484
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742731794; cv=none; b=RzogHSSIkaHoa+1RAi4VPiWUQ+kPG8wG+W8EzVZ8iN9RR2KJkWsY2daRzxjlBtIooad6ZjI7gRfRJj+lU3fuX+HCykTEiATx7ZzU/gif039nkgjIjQqAjS0r8J9X3yQJklsONdCdgBqyxCkdLIkfxs/66De3ujx1faS6a7Gpj6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742731794; c=relaxed/simple;
	bh=QvB4ITsBnrfheXtp8AgN/c3EABnODUmKmB7EaHpA19k=;
	h=To:Subject:From:Message-Id:Date; b=ixWw6+LvGcq1Y2rl52o3j9UdfrqSzj272q8rWFTCDsgLNkPwPeTt+FjAkhbH5tO0N8fSDW9UuNlcp5g57/Ij2TIGEubHgN0JzO34F3SlSTsStNqD3KNz0Z+w6045iidY/Hjh4Nr4CA7ZXyQk8kQ/Rs8jBW7VWKi0uvuYZnnRLfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hVj+vRtJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hVj+vRtJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1884C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742731793;
	bh=QvB4ITsBnrfheXtp8AgN/c3EABnODUmKmB7EaHpA19k=;
	h=To:Subject:From:Date:From;
	b=hVj+vRtJPSimptq/fVGWw1CAG60ZBnI3NULom6kDxATeYRPKo12hyb9gy3qe7NtT2
	 p8YFVau6c1DYVTCvrvylgCMjDgpafIraF//nsMRkYS6dLPY8fqTd8Yte3zoM/QyFkg
	 pTqt93QJHM3baS84hX9WSuSvZ9hF7Mua8np0NIvfA63TUJV7KfU9dFcxR8ILctkQFN
	 /B9hSUkWy7tjKbMV+n12AM56nyf0ERAZ8MIdI6u5Ixvf9iTIyUur+sqIxe/ojInS8C
	 3FtthqL10BDIAjcGSRX2CVapQgQoF/C69yVORPJxLmLfu/nA22pASBJJQvrYHeJGgH
	 d7Adpw+CZKR5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1F5C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174273179368.9481.11099570517990224701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62da7e541cf06683c2d0257624d22324e4001485c4012e98cd5e1923e8b0295b
Date: Sun, 23 Mar 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742731793
