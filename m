Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146B01917F0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763005194; cv=none; b=RllL4brhKv+1btB4At3k3Cix1KmHaeYcBF9nEjW0WTTqir7vTzBv6QtRspat45Q9VixgmW+OJxBsfBcxBPtcCD1SoQwgDQVi/p7s5TEobKvNYVQSJ6abYvJQteH3AmZlPdgxtC6/WN6uBoXcrZlOiaA6FZPaAww6pJ2QWx7p+S8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763005194; c=relaxed/simple;
	bh=RZa/MulkzkU19OSu1XXFRRl7WmiXmrtadApEVEtQaV4=;
	h=To:Subject:From:Message-Id:Date; b=tSoU4APESDmd0uPBQhFpK+S4RbXUP++F+IDYjLdYvOcPHaZMtLWSci7xWAnnnkJk+WGVN00OY86LBQzG8XYGKAPEgDlKpztN/SFgdP7isdv421MhvPl3qM5S4yHGfrzgkMitGSNmST3AL0K949SsnD59nHX70fvD5YZBFnMubVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=skxyjVT/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="skxyjVT/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CEEC19421
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763005193;
	bh=RZa/MulkzkU19OSu1XXFRRl7WmiXmrtadApEVEtQaV4=;
	h=To:Subject:From:Date:From;
	b=skxyjVT/304Cayo5RMObOAtPLP1yLej68px54W7gr6vndPItcSX/LrsIeJ9JCGrKP
	 Ji1YIgWnkC966bwQAnrUxbKn6YbNY07gzVm+jdx64VmjwkYHUPIH+iecm/fcB84nYD
	 0VK/WD4/InhFs83lFy98ArkRcFGsuUAKArclcCeDVy2BZ85KsVRHQQu/3NbxIjqkUn
	 1Q7abE2PIrH1qDJqkQO61Glc0g3+GGeZwgVDVuhwY4PzmEfwRtAom2lHcROu0ZrhBX
	 mM3lZoLkFmk+tZtLB0aqeZi6EFoNODqkgdj9ZUy1HXjLM0/prt5RafANvRiWxjKSsX
	 3owXeV1nPkonA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9377CCCFA18
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176300519359.4326.13150696800076927518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5a5ed7806e565236f763693638e76d49f5e6dafe6737111b47c73c27cd9a9b6
Date: Thu, 13 Nov 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763005193
