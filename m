Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4F9D20B212
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766135034; cv=none; b=I132UoquBkYjgsMgKQC/pGBCDnvupBx2U5w4ERnHK/QvAKOG1r+ql+hD2XRAE/iUB2t2MxoR/d/EC750/yibExGExhZyu6o8f9lRpAmYXMlqcrmQHCU60BUP3qoVyCsUhgSP1ftjMTqi+JGkCOwcTVKZDIydTtzDaoO1vUT9JJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766135034; c=relaxed/simple;
	bh=+0nPjCex0sDLAFT3IlUeF0TxwjC2LZJFCp9OavFfpP8=;
	h=To:Subject:From:Message-Id:Date; b=j71mMqxu4XHN4ekTarlgM7EgKy8UHUQ4iWcJSm95f0naaIdELWvAuKz62uzaXsZgBczWX+133xnTrC2JKeR5tSt0XFzOnFRQs46cvxdhxXj23ZpxdQ/+my32WafGhjVZ/nDgncVEUNmhHjEujsFCiT7b8/59gWFh2IWjcDjPyEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cBsW1z18; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cBsW1z18"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A82C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766135033;
	bh=+0nPjCex0sDLAFT3IlUeF0TxwjC2LZJFCp9OavFfpP8=;
	h=To:Subject:From:Date:From;
	b=cBsW1z18a/WsqMbwmhx5OsJjXSa5vP3SWbpCVk3NGwf1MZVWzhmwHm0y21gfYCcgX
	 alv6nw3p9F6GoqDlQRfLSmI8V0TSuT5XLVfnbGe8gtJ847XS6Gvc6QyXLe7/PSiwas
	 8GALsn4cvsht6Fvb44N3jWxQMWT5YhYCu/5eDH6v6qKrTHCrl/n8GpacGTe+vCjA4X
	 4GRdRN/SYVqs7rJlqVX88A+C5emHN/t6ichXFwQcKBVfI1pWqymtfrdFV6KceGUma6
	 ywuLtOhhpXI1XDJ4scydBY/ECd4/D+X3iporKFq/qhrTyKdYc7RMpx/9b3WYXZIGtF
	 +04nLjjiQg9OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A142D74969
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176613503361.25722.11685645696588769473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fbbc289a1d4900cbda2a12c07939f886296f0b91ea116c1569f6c70fa604679
Date: Fri, 19 Dec 2025 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766135033
