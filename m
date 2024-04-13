Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB00173
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 00:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712967563; cv=none; b=Jk4wBtZ+CmcY4AstlaC0DlwpsxBmWWFnOSXDfr2d4nxcuL0+mnjqygjL9pgEuEaHuwVB9PcbE+JPwp/Tb394Aoygh2Ht35DRkvEayRN/ZDpOqoJZ6CVpiAo5dRDSo6V32MrXNu2d57S+Yjh8MlbIuANgxdmjeDPCOOCbDMz2L/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712967563; c=relaxed/simple;
	bh=eiKyUVPL9Kb9wh1BxJ8doniRQNIPUiJE/n4e8i+SI2E=;
	h=To:Subject:From:Message-Id:Date; b=uvwT5bVXnMGqRqMqYoh0DXo8IL7YWAf5NaMPOGZUD5OTFvvObIDxsXQEb6lJosynach1U1Hea7ZDycC8CB3WFVT/wQFnP8vtVh0JU7eo9T/7V1pvBDjX2HtKMFq3enJ+oQ8FV2cJdkppQJHAQmNVzPyVDlUKZ2ix+TaaQqXQplM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kloSXeRn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kloSXeRn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCAB5C113CC
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 00:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712967562;
	bh=eiKyUVPL9Kb9wh1BxJ8doniRQNIPUiJE/n4e8i+SI2E=;
	h=To:Subject:From:Date:From;
	b=kloSXeRn3p36tvYSqLuyPV+dzi931gjs7SLNbFQBk5WgUUPSmiZwd/yUu8pIpLG4+
	 AUHNqdmMez8GQY7RQFjK9bALwrRM8olfFNyRIffo7twBeH70W+50UeBWbYqXS6mzHn
	 2eE6m9IKQJD1Rjrsl4Y+st6kpvNzxPYJQeGuchk2JHgOQ+LZnzZNgoUjeDSG4jx0nd
	 MyYxqIZTh/9z0TNB0sjf3YZcL30AOMvstRP7Nx1JfzBLL4kPoZvZyXCGwBI5T7x5z9
	 OC14t055EmMST0UsMnSpyeJTdXBJUOWY8H3xdmhnblTJoPqOU/6+rPbRU5yuu1Wc5T
	 P3+mACDSmuIwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7327C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 00:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171296756277.30153.6588330588584967828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaad374bde9834d2a626184fb434965627781fcbfc1b66b2fa39e54eb3b75c10
Date: Sat, 13 Apr 2024 00:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712967562
