Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0405E25A334
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757831994; cv=none; b=D7bbVFE+TJeK+xmxwep74/i5csCvxb6o4TF7hJSP7a7N0ZfwWz0QpLjH7ZoflSN31Zm+NqiG9VcpIUzbwgN7HWYzQmdUjrXqg6khOeCz949UhkvHHQ8/gQt5T8hrlWBClYwqq1dfYfrgOwbzbK9GX+/Dggw6YRDVcXIbujSk7LM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757831994; c=relaxed/simple;
	bh=QAgVc29ZoIfITQtgzNwAz5C7TU18xSFP2uaLIHAsVLs=;
	h=To:Subject:From:Message-Id:Date; b=MIdwXFRq/WrYwnHk5SJqvsYG3aLlSDQmXkVY2cIdocH81LBu0AplQStnIGiS+LGne9O8RQ0s+7IPagqMbhuW0urJPBygM3vPEfurFJ1sgnGZq1gjmN1FUodzmf7IUaiN2rb3Mt5g8P/uj4W/ywpvE6I1srvA5KGpt+GJuwiHdjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nSmS0pxv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nSmS0pxv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19B1C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757831993;
	bh=QAgVc29ZoIfITQtgzNwAz5C7TU18xSFP2uaLIHAsVLs=;
	h=To:Subject:From:Date:From;
	b=nSmS0pxvP9tzYcookQHWAi5cz5EPfk7sgJaKezQqatKUWbHtMOVxbM0tMjWS3ZILn
	 /M2tbolxoiGcLoyycrjtAU9IRy1lkGTCgleYC11YmRHtM2zIInoHCJa5H06i3sDhW3
	 /n7Jki/ZFcLBQX5KpBG2YyZ3rtuEnlUGFUO+Vv/01tR9WM2EhxDX28JmCfH+OpUyDk
	 fKCcQlZD7trca+ZXo8S6w8T06Rt5liVcRcSI/47HSE2rFAD0g9sPC6yyTIBDGU2smt
	 txLBHUNlLH7uGJyoeOLTrteQBRNCbZw5fMRKyAGqdbxrSvXCNynTPS1nzIByIWxdwx
	 XQ+jK18Np27hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB6ECAC582
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175783199357.4909.1103401833326994600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 219770744b1f77f1949c56ca5f8becadacb335d96ad2a99373e2d206115bd3a8
Date: Sun, 14 Sep 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757831993
