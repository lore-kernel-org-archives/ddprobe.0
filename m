Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117B12E2EF9
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770737634; cv=none; b=owv+RM3pB74Beb3XlBWRgH8cSn9CKIoiWYJ4X4KKjrNpGmw3daFhZYVqNlmCcfWukYr7uVQGg4AABLEue9X80fLNUX86GTnxI1Mk9r582WDQVVjq2M34sPouKCv1gPZWcJrGCdgBVN97q+Fjcqwn9c0Xux32uUG1mmV8jt+mQcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770737634; c=relaxed/simple;
	bh=UvNZyVOO+joJ74N9w4KYLljINYb26M9NKB8NBxBt5Yk=;
	h=To:Subject:From:Message-Id:Date; b=T6/IFoQb8lRlUpt4TLiyYJ3uUd5hePtsn0wI4OEnkMvy2QTHB+3CIAu71Xw9jA8ZbMG6gApUl+ZdcjQwI8WxJ9KG35NAUooDQUpM666MMMbbJEV+vnTIoJzyMpxOjdKUeF8QUeAH079GHSY6ORyzO/2UhGLBUGPakf18jq5ApCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BnJUJ7Za; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BnJUJ7Za"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6680C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770737633;
	bh=UvNZyVOO+joJ74N9w4KYLljINYb26M9NKB8NBxBt5Yk=;
	h=To:Subject:From:Date:From;
	b=BnJUJ7ZaPjEflyXUHuuegGC5GHjgsXN31BE37GRenYTFDRrBmPVKYP/nZuTGh+eLT
	 jWrkNC1EvwjfHu477QkyHUGNVBqq+sbemzCd/EH/T2wnrSSOTt7xJqNYJMcQfhycdP
	 MKxzXdWc7d5yiU/K5svoWJkgP9jt49nC/IPzozap+esGm+LNPIPLiI8UVZJM6k2uSW
	 4GSQJvO+kWpbbnFW7NFGXQULOC7sAayGrB5hg++L4BbIbQxcA1ZwhG1zvPzxyf6KrK
	 EB1b9a/H9blwXfFKQG/B7aU2nCkTxweGrC1BmuGMD572twzCZTG6cgH0/pUrWdFDOe
	 raJ9yEqmzKYSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947FEEA812F
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177073763359.7240.14236753026284078201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b539e3258eabf4c3a906a69be5622f5138a5d29fab4b03c63e9416cf9135c64
Date: Tue, 10 Feb 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770737633
