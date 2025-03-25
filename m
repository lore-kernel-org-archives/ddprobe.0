Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E69EF25D8F6
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742906394; cv=none; b=dnT2v8fKQ4aNOx4bPKh42+n0p567i0sJZMuK3xeFVjNjgw5SHaadSudFOKR6UuB2x9OMJ3iFOgdZ2sNdXXkQNbrJBD8PfvX0Jqh2BtmcguG7g+kLy1EmR9Aoy8+4qya+7kSmEIRmps6lVCBEF27PD6PvTgQZ9taOi3CXsoX4Xfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742906394; c=relaxed/simple;
	bh=u+yf0RAHDCbO8W2nzYMsO3G1V6xcup7TZYftydDu7F4=;
	h=To:Subject:From:Message-Id:Date; b=bqZvfHlaoPddBC1SCzAQENfV7ccYwNOrjoqIOmt/srS44ntZmWj1/AfR5cU30h/yVdZYIqRgaAR9n42qeC/f3zwgdwuaSKWEUOcCY945mqXHB4GRRpydvQFRzIk/KMBSU/Dpzo7yI7pXfnz02KseIQ7UvVkpAGFrVXwXHVK8s0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fwOfomf+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fwOfomf+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F8DC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742906393;
	bh=u+yf0RAHDCbO8W2nzYMsO3G1V6xcup7TZYftydDu7F4=;
	h=To:Subject:From:Date:From;
	b=fwOfomf+syE14GWH19YtAuOIN7uKR7DFTe7SMct7rRzTDzAwfjivHydxDjRVM1A1H
	 8WS80OMqrWZVxV1up9oMfhgNc6fmfMoldqAIuLV5LNZnoGdSpJVKnbxc42h7WFqlfs
	 9O6RG7PpAXldsztngI2x8XLdYgxNR/SBCT8fmtnQddtYkq2BUJ8P9VQHBogdkPNCSr
	 F17yiJ8Rhi55aUv/Lcxf8qz5NpBVrBfXyGeiwBRzZdMU5Yvk/UGo5muErm1karN2Zp
	 H3yvl+Ager5wqNqZdyyvc3GPDFy+KbDztzLyxg1GH2DOYgjcVMjldXmR4Qyamzl00o
	 YgjN19ZR52AbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B10C36005
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174290639360.6231.14476310438240109113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7ff2fe7371e2f6b7b96eebc102e8ca187fbd1317950df1edcc9d84c3cc61504
Date: Tue, 25 Mar 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742906393
