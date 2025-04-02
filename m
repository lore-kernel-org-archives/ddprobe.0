Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312C42AF14
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743623394; cv=none; b=ijGym0hSv4vv4WGOBKjvCDFxk7PUGnsiKifI8J+/i+vu2S5Kxv3+tKYLlWW56l0oYT+lHmOyUuG0FZEPb+iY0JORLCHrtnPjxxTFDrKQJK/ZIu4xa+NVHHaDaHXcarSxRRtCQxsEGsx74KCeo74wkjNymVQz3AALwibZUUa9WNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743623394; c=relaxed/simple;
	bh=68MaoAGQGexSc9/jIjpHCOJXYXBdLr9ZTTa+YfIgD7s=;
	h=To:Subject:From:Message-Id:Date; b=kRoaqPZrDXurBA7HcbPYTN3aEeq+K4K8zoh4Yv27DuSugtDIMBatSNHul+RXsImegPI7poQH9SaLhHdHcA6XDzk/s8v/CG2w7QJ7tAgyi9kuNpUcc8PQRtz0Xwwf1QWTBFrBcu3cIs28IBJYV3neKSI+xvLvrtGRDzeE6hXd+vU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/7qkSNA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/7qkSNA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA000C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743623393;
	bh=68MaoAGQGexSc9/jIjpHCOJXYXBdLr9ZTTa+YfIgD7s=;
	h=To:Subject:From:Date:From;
	b=D/7qkSNAqCN+Dk8klqOrolrb/J+LAXk+/MwrjPyhmXhGKS7zLPu2znV+ESA5zphQ7
	 36soH32J8C/p+OOso+p8Yb24Q+8OUQ/GC5R1xS6Kc0RD92bsLXlByey5g/AKSZQC8y
	 fRizKMqzYuq1xNF9RMuvktMsHi8/oM92ouUe1a3mWUhm7NjnF5MYyU6MPNS+RILF2E
	 IAtNBCE42mwqA9uQeskEpsVuAMqjmNdI/TK72kABmDSpg5JWgkDtoWEpUbwj5pEetW
	 zTdUico54lNG1NnNT6z2yEkLXucelG5dn6fdLLDRghPYThasRFzpLhHsJXZEElr2H6
	 tLCcoEDh/rkbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AF6C36018
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174362339360.6345.4547916076175387265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca1989892451c995ed2a60f85b7c66fc496a1040a4eaaa0db5300355d5697f4e
Date: Wed, 02 Apr 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743623393
