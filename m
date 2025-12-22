Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF8F2BE642
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766408034; cv=none; b=c5X0ykwOnXehgTjPWQiE5dYqH7fxumjauYdqwXxg30poSYAzJ4HAfd+fswuCFnW3hkofX/DEXMSf8sadfZBv+6/bSHKBtCOti3kSzmM9znhMC+ehhk1a+TTnqdZ8xWwHa6vII5DGbdKEqq+iwBPRpY6mGN20H5kDh7oR5bAbkSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766408034; c=relaxed/simple;
	bh=qgFBbWCeD47FkOAi4RkalXnAJpvVIa+/vePaGxzDsao=;
	h=To:Subject:From:Message-Id:Date; b=czBdRmSe+2SVmS2RrrT/8Pkip+keGKl1OoUA27a7RbKD603wYJ3p7xQv6h97UJkVuxNntdopa0eyuWx5vavYs5MRRULlrEbQOY90jcOZWGvtphjv3ftE8sqjLf2tuw+ewf9IhRegrRCTfaLsmPaqxVyZXbSGyhzOtapccilytIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fSTQGbmR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fSTQGbmR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04B3C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766408033;
	bh=qgFBbWCeD47FkOAi4RkalXnAJpvVIa+/vePaGxzDsao=;
	h=To:Subject:From:Date:From;
	b=fSTQGbmRVk1ztUOkoRSQX8FnlRiCeV/s/wOvhHExsZxolukBvp5HRCw2vcMjie4i5
	 kpzzeOOM3JsIpihGI/9V23+l5Aute4in+XqEieYUUbn5bh+pLQpXDSDs0eKkioKamu
	 DZobtorkI3XTAuDv6/m0Fb+3rTIzPqRpzQ7kH36Y4Msns9+7RED2TxQ3tgS4DowOiT
	 Q7n0aj4NPpg8HZ8Au8/x1tIqDnWXMWWSrCH+zr98qZU+NzcAqiJmvZf0+wHcRpHIpw
	 I09OThAMhRbsBGGdf5faNRLwynTj+x6B3VmNrM9REYbb0Gtp2Crpg/+dHnuCQUm4id
	 S0pAL/5OQQ6dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3AFE6749C
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176640803357.18174.16099337377491330469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d66143deed22c1bb9dfb9eb7d8db9c409e2a35286028425211ce3d7dc84527b8
Date: Mon, 22 Dec 2025 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766408033
