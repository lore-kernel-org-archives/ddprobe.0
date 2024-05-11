Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6875D12B8B
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 01:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715391143; cv=none; b=o1Fk141RkYNJYkxEChtS0Z6yJhSICdkqBUS46PDc9VuG+qWNStlTEi7r6uk4lKNVbcQuvtb7/yqTGnQbBCndPpGTULLku2N3OiHubcyoP1KC0XpizGBg6WZkEVs2voGCfKgSMx9nM3E0DWfudkisYkfc9jMXlR/vs5JZUXWhyeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715391143; c=relaxed/simple;
	bh=7Xz7/HsKhnlVp+VaFejubcUpRAP0URGH/Lc0AleZxus=;
	h=To:Subject:From:Message-Id:Date; b=D1N+aO99l1uMDBAnB6GYgNfcwnYlPNWlcXdkZh6lnUWIz9sMnMGNfhKo8egXfbZeA25cDjGhTmivjqP5KN48DnnL67F/riR7kEshV1SzqA6vCa/GXdSiYAr2VZIYmjgPMo7v3xVDlRyNYzy3OAlrZd7QCx8wfhvcReVrZ9q4L8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibrSfwF9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibrSfwF9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E43BAC113CC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 01:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715391142;
	bh=7Xz7/HsKhnlVp+VaFejubcUpRAP0URGH/Lc0AleZxus=;
	h=To:Subject:From:Date:From;
	b=ibrSfwF9M17gkPzDE1KBgUP/wUby9P+kyYi8nKDDZCv4ezI6LCivNufoxL26H+qmD
	 rqymz/f2kqdNjbqWOhxdne/WFEKOPDqWZ+85Lub9LpjR1uhmAkE0KfUhMKFz1DEV7n
	 xF9o2g4vFJ13OWaAkFJKyUvoSOuSAE5nEJDE9zeinr5Rz6+zlv9dQT39utSVzBJOsW
	 38sbb4qUXKnWIQYqEuqg7rQHrjQ5dfSyeFrl98KP2ThHUwvCJQkpVean4hFVc4ip3j
	 ZdNO/0OiJk0SwKPqcKvr2QJWjelrtz+l2MN/uZuxixr7r+sgjuq3rLT0GnQMhSav45
	 TlveUlpGOfYAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBEC9C25B4F
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 01:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171539114279.29868.12752510113424678578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60e90bde98c6734e1bfc8b9973ab2df028980653c233a65adfc7d6a953bfdd6a
Date: Sat, 11 May 2024 01:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715391142
