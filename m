Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF73323D
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743890994; cv=none; b=c+oDHaVwdZgw3NBoKSd2Rb7dl5bQESA8OrvWh11IceeT1d1YWDl/9kmDGBwMHucepQCQbFDNdNViGgvs0//yj1itMMJUeHTP1oGsYqGXIg39n1wzlYaRt/a/glCcazipyd4hMq2d3ZxVpsSVfa5OcOq8Gjgmelb8D1Z2BGBsP9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743890994; c=relaxed/simple;
	bh=X7+Xsf20wnRQy+HrLYFL2dBb1/BxLv5O2fckOuKJRAY=;
	h=To:Subject:From:Message-Id:Date; b=nlM4mFDVQJbRMHtrI9meNqAKRuNaF3NPrbCwDwvvceWc+0gs8m6I3a5WfocTXdvijsq1ze2Qw7gqWPs4g3jBwv1+VXOTZYnAFtV5/7EIfcrXvrMeLEQCNsjV+3olGUi/x5hRpxiFM/55YaGDr12qSovO96Bsj7KDdNlhrBRMDh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rLxKvRF9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rLxKvRF9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A78C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743890993;
	bh=X7+Xsf20wnRQy+HrLYFL2dBb1/BxLv5O2fckOuKJRAY=;
	h=To:Subject:From:Date:From;
	b=rLxKvRF9g2la41KS8ra1uabe6yycaHH+APrV23mJGfh9aiS4pvhFB/CIOo+tehrTJ
	 EmYsxBBLeNyr8/Jb+VvL6a2jrgwFJz+MeoKCBOTdk3JnHwpNj+7r4WKQduEwrH5svk
	 eMvqpTjUECTKZHYAFK/zzrVC+CpwORH5ws45Jh7W6dg259WMXoKesFXQeHtX8cAJ2u
	 53sQnIW8DqaxFmboPgA1S8SyXJ5cmWcxC+2jowvoFV2GiHUoeigCz3dvBJPQDemLtc
	 aaNJTGrzW+JxgdyKRKJnXezzbqcdZDQgfyz2xZO6pqjBFUDjnjVVSzXqDVoxzl9Mwl
	 pGBipwiIUFFuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902DBC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174389099358.26987.14909798062727975923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b4f1d59ba5732458d057471ea3fa41532818b97793c66b789fb2ba47c7191a6
Date: Sat, 05 Apr 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743890993
