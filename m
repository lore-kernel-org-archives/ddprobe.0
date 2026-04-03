Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E288199FAB
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 04:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775190934; cv=none; b=e/OsUClRYs7owqBsfUHrpNyARwmzsgkNbGYdkQmZ1Sv/rXUVC/NrGCtthjCBY3/8vXtd7sYXLA3u53N6UojDAdGO5Sd3idkJtjSMf097AFXGsDbmg2Zvjl08+hhXDMqoTqycuGDST/V11cag8Z7WEAQfiyglmA1yrbGQtdBIfzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775190934; c=relaxed/simple;
	bh=VKe6OWq3tCfgoaeqM83L0NlnREu3Z+JFAzvI7DyKscw=;
	h=To:Subject:From:Message-Id:Date; b=lUnk8AOanPSuQFnGNEJSBcNpEVAUNyffnEY3e6Pv1ltq1plbP6ZJiPV2BCVtJvWa7dZ3FJJ6Z/fLTRkc1ZFVddlCwnu7eWWQmHFIIJpJ/ddeDUG2qm2aMebSfBfpPi6rVwhqAo25FAraD6S/pQW2wFbeB1gHlPQF5yAVPts44N8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AW/Vogh3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AW/Vogh3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C20B7C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 04:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775190933;
	bh=VKe6OWq3tCfgoaeqM83L0NlnREu3Z+JFAzvI7DyKscw=;
	h=To:Subject:From:Date:From;
	b=AW/Vogh37JLK71Q9Zl0Pydr00x8TrdLDZ7fheSUexW9jmJrKtk1l4b81YKI6LfR9G
	 zEsSJDwWzcga7w42/Nw/CvE9DKUv9VsgiB2jKFeiXJpl2LjCH1gd4e/rv9fIdNKSvY
	 jWuu+8afvidFPW43HlWQKZLHXu4YPirDP+6eXJT3VpNFZG/5P7EGbWhimaqvJcbI+4
	 jmK7/nIPNQ1EsWrAxevXOrcQgMHtm9jCoU7BI2mFqxbW/QPfeNK0rvFUHCC7OdCR3z
	 w4lkDAwsyJorTbvYmUYIl3NT0hBE/fTKZa2wYTFYyRbbjMtSk0Uysyk1xSBtEjl7Jd
	 gUvhCYCrrNVuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDA2D73095
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 04:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177519093370.3398.12384402686017241931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bedd6e43675172af6559f6d68b7e285677f1861b3f71537b76ef8061aac56be
Date: Fri, 03 Apr 2026 04:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775190933
