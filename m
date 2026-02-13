Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1270123EAAD
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771007094; cv=none; b=FI3DDa8Uo3CAaTa3TAiBvIDwK9+yCtIzdYIvIioHiuAjnl0t0ZTd4BJhGSUiuehvnPksH7hh9IFaw/lbP/7AmrtFKLTmdCwBmDEj7X9JIo+ybnyO0m+soLU2IcPRDaMDic8M4aMEgip+tBrR7X1YS2cgEaXIxn4VTqNqLicIwzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771007094; c=relaxed/simple;
	bh=+gfODmesDSGPzyhfvCAYbCiVcQWdC2wP18ORWXLs/HE=;
	h=To:Subject:From:Message-Id:Date; b=XY/AcguFs6+YKGXL0t47tCt7GcMM+CoAF6+IyXB525+lPuRnkayjPLKl3CCciYCqwATMicUJtUMe1VmUeQJyHWKTqMCutAdjAXrRyw6Vv1xjMV+RBNVfWRRqRv86hR2n0/VgkQbKtcskfTKy/7eQfycyaCHNd6KZqdPGKuHgpWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNFmsElx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNFmsElx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B33A3C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771007093;
	bh=+gfODmesDSGPzyhfvCAYbCiVcQWdC2wP18ORWXLs/HE=;
	h=To:Subject:From:Date:From;
	b=mNFmsElxc4e6crlgPVyDr+sJVTkFIiFul2QXBo72rBSWZDGaKAhwkj9NeZoPixKqr
	 A5A9SfSAfzEMXKgN1P3SLWpyBwWo8PWp/Yo+yMGbzHPeqT9zSqwzC1GvJlKwSI4B4/
	 8YHjyGAYkxeEu28fvZ7Vuv2UmLqztOBUNwYqqERATnFTuacfXyBTEKQ3SdIgUOO8vc
	 Qj55mwJsRKU4b9q2YHLoLeAaFUXioDxYoxgkciIe3lJDG6IwsImsv88q+Mk0bmQKuR
	 ZyPyX09taEA4YTbbzikXF2Zdweeame893XT9MSQUwcPdPbZbEB/yPVm+ENXeR/ATWM
	 TJo4glQCrUIPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E174EF99C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177100709363.25918.766322171152717041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b2e97824614db0610ba20e42354d4a5498555df1cbbeed65e70a8dfd588ddbd
Date: Fri, 13 Feb 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771007093
