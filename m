Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7C433F399
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770722034; cv=none; b=Vj1vJpzJeY6w1lLv5XHVQ1huiUC2G5yMUlDRDCysd2mQSX0u4hgrB4RO+eWBKU0tfnJyP8xeyBoRlVpZuYtX4zqE+eUpkiBBshOm76iU828gN1NWw0sQNJTjxVfPeFFdaHzLeU/nFNFnvgxb0tG+lRPCJVsGgJLP/oeUgrz0hqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770722034; c=relaxed/simple;
	bh=SCttCvgHa5TZnzbmGM4ugWt6SbjKpOEJqaOhOB0nwBA=;
	h=To:Subject:From:Message-Id:Date; b=HJIfcR2WHC27vJGPTvv5FVz26aPyxDaqYcNDeAQJirWCOhuMngTiTKuD8SSNRdVb3LIOP2JwNADZKI5uG+g3nEB5ZAappCUTsmvMRxzFORCSr/UOo/vtMWwpFmMBu5+URmOpPySC+doLH8ocZH1dFxbzNc2mv81zEQgZLL7IWCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ew9G+e+q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ew9G+e+q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB80DC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770722033;
	bh=SCttCvgHa5TZnzbmGM4ugWt6SbjKpOEJqaOhOB0nwBA=;
	h=To:Subject:From:Date:From;
	b=Ew9G+e+qWxMNFfFgUaYOSYP/CIooyzh/6X5mSli73byBH9tSKFv4Y0ig/ls60kqLR
	 rF+wDAYsy3Q3FlIlLHn/wmeBuSvBY14r4QDLh0mRP6kSU371MwTNZTgnmtW60WDFL3
	 20UJihlKw74wMCP50pEG+bQ5ylYsxxxeq4NZx6bIr10qRsKPiAfVsOZHezXkxgGsck
	 CjofpKRgSv4sEEwchNSVLls5XNIDUo3gc/k7m3gNm+I0b897FRiD3cI/m1OImTquQp
	 UIAn/rgqRGBLMTdtb+ZJwoJKxNZgdB6KxwYLgCoj8RtDfGmVQhrdwEohPXjOl+8Fsp
	 g+SmmCgNjngdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FBCEA3F3E
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177072203359.9171.7650329525311560123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c3d3eeb6da6af8524dde71cc95ebda618b865949b84e64267c653b85224d643
Date: Tue, 10 Feb 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770722033
