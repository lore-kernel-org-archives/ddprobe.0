Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF0519409A
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725849954; cv=none; b=omwgBVwIQgqB89xJVqaw952i/H3MwtxQeDpX3iE9du2GUuXcDb8xDaybLWk8aVYMR/qOJ+2PfI77kQudn8JB047KCMPrtt4ZazniHos9a4V9SyAY/fkJ0qAOFOseFOvdKwwSI0sl7mhP/sOKdlSMV2u+l5VnwlW8lkO/dXwY/XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725849954; c=relaxed/simple;
	bh=ZsiZ3RSq2yZtmZ09A6AYGQjbpuHBxrLL75eBnAswork=;
	h=To:Subject:From:Message-Id:Date; b=kqvXQuRcA96gfGwg3FWlyEL+U3G/udZdylxijJR7yVyt7cBCLj+5CESsblLzDY/zt3H7N1UTsiCem9dPwwYCbsFXS2wzUzYF0kXHYHEZgSpCffYHyqGup46nACBKcRSdEnpie1/PockGgwTZ4qaHT6y/R/PuH2M/Egu8RmJK9X0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y0elp1mz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y0elp1mz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5ABEC4CEC3
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725849953;
	bh=ZsiZ3RSq2yZtmZ09A6AYGQjbpuHBxrLL75eBnAswork=;
	h=To:Subject:From:Date:From;
	b=Y0elp1mz2FBcWwQwjfz16k5RNHkvUrNdujJDI7pDOal+AAuSIYnEse7ZDTkK4l3h2
	 ydg3o/oLarL2ALj9F4pvt3LMI7mKu485vTQta329GiP3iOgTYqg1P4GwH3XQ48v0Yb
	 5KkVMf22Gd5k7a/ybWwIMG5yLoSuvDy8TUOveaMSPH9cwhP4oLGh1CdC0CZgOlHVtH
	 JybpMxh3RCTFJbdmhGqBYO+fnKW84C6xEH5c/PsLAzU+3BJelQnhFFXKeKaKnewjdR
	 BmtNOSzrt5/P9US/A+faBj+gdb4seIi2FMg/YI+Txp/fNxIQ2GO8G1oz+NSo1VRXqt
	 DnQTyqecSp4Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9177FEB64DE
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172584995358.15088.9992959722608066564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb3c4c5b1312c6c2ab8f80c510a926c048d0e9b7803e208df85ca8fc3b374cb5
Date: Mon, 09 Sep 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725849953
