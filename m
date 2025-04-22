Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC2D26C3A9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745360994; cv=none; b=nJ3tnMwn++pZAKiZcBjLW89c7HeZeAZSIC+sltzPHGJBOmCDH3pe2xUzQ26jNDFoDz1/Sodx9RGdCFRhA/QrDy3aEX0I0Go4mHD66U39Nn2StxJgm/37kIiDyKzEUZMCtZlvju+RFM11KphCmpt3hXp9V7+vssI5S7krBga2dPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745360994; c=relaxed/simple;
	bh=af2hw1NCxjmoqiPZ+5jXsNlrvActTWA+v6b54P8zprA=;
	h=To:Subject:From:Message-Id:Date; b=QfZc6fC9vzARuyrKqMIwIiZpGVqOL+M6+c21CgRqMalruvTrxtYz+LH8Zh0JdR2MWUhjZg+aCkdlgwoodgl+Aoq+e1c5DEHlXWnXXmcWcTgM2tSJoxC2PwcLdhzAzuPbWO6wdIkylIpGKidUocdlLsVMmVCArmwRSnzhrvmFdy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=drDamymC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="drDamymC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC432C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745360993;
	bh=af2hw1NCxjmoqiPZ+5jXsNlrvActTWA+v6b54P8zprA=;
	h=To:Subject:From:Date:From;
	b=drDamymCvms4uZixGU5v+0yj0fOAoZlVgt8YDbvEllP+AqaUiyJBI4xTZ/+1MIkvl
	 mIOJP9NrQxwWg2UqWkC8y5t4zdKIPwbvFezfDTOK1dgkymyK0POM2UHkUKqyXk8e3x
	 LKPQzMs/iMa0A5vaNlVhxqhXxux5+ji96ephRN/5hQdbdod600pRb2qY1WHtciXoBQ
	 t1+eUrjR/H9ppHNfI/KVlsc3oYmFg/B/Zh0XMHZLnEq0mXlJWKJxz49yXtb39ZMRbR
	 dAEyHCPfDs9bubzNwvg1hnv88rBO16Nt5dEVNRUrwo+HzPX6ZwQ4bkMCPp/TJ80OCU
	 4oR4IWfapCdTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921BFC369D1
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174536099358.25954.5099060547283820313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 285c8d7168ef208fc9e96018f2053ba5e3af688eeae862695cc4d73e0a8ca170
Date: Tue, 22 Apr 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745360993
