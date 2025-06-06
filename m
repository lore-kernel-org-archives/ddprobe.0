Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E13AF9EC
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749214194; cv=none; b=oQyJ7fMZCJ1RZB8zn1f79rP0WMSgHRsRLT6EsUrffU5I58itGD68wBoKq7lHa4rUnqItctK77I3yj9DMe9fz7QozJwwmovGyspz5XWYPAhU6IbnzM2xRPNhZdoc8ofl1tP/YSq5upXRgnF+wdtAoCtwFCa04lXavX0vFJJhuj7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749214194; c=relaxed/simple;
	bh=I9w9LQhiwAOn27v7KTrilpIcPOy/yMR1x6E6NjkpP8Q=;
	h=To:Subject:From:Message-Id:Date; b=hHJd89PL49BIvSX+LoolZr0RRzH0jJ/DHh4CncCKHpYA5Lmir0sysebpaAa7RsRPksZNVdqk20p19Vgfp9m0nj4MC05XgTPPR8sEyt9qXt8Vw2lCTmO+4ixNgLr/gpRUBFZDX5TgtPA7MXA6NPkijXF3ws23uhdd+W5g95EIgiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N00WIEUI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N00WIEUI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0661C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749214193;
	bh=I9w9LQhiwAOn27v7KTrilpIcPOy/yMR1x6E6NjkpP8Q=;
	h=To:Subject:From:Date:From;
	b=N00WIEUIQrmuVDTLrQp+Vq+oYIpx0S0sNSAJ7RGjHKE1/MKWHc7iIPCTYPEJOlv+w
	 M6g/iSFmDcJlAUiBYyNhlF0DnS8v6plJZy24gkjY8mftCL1Z8a3ki9cSVAg/iiQOJj
	 aQnKw7Ms+rC87asL3bnxaOxkytKuP5yw3vQukpsb3yoDD/TBaznDeMzLIXtf2zfdqX
	 fsFov0eT41pTaX0iyZtNlm9kFBFvHUhE9Qj81uaeXoJ15+3TvMd5d1S9CttdnePhj0
	 8RM8uM8U9ILmyCH/4tXsgkX1SC0L1eOkxose4jVc9+lGh1QakX/mrMXPbZfmdNkRs7
	 tQ4aqWCK656uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCB1C61CE8
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174921419358.4870.16459567446624383132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7151380953cf11286ec441683f75cf3369b4a5d0013d1eb906e9f66926f1e9bf
Date: Fri, 06 Jun 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749214193
