Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18834285C84
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771505694; cv=none; b=Qnd+1CiLvZ+a8US5HxRtvScHjnTwJVkB1/Qcudj6jjeu5cZHnThXX126604aAz3xSiVWoUhcyoifdtL+grddkXCpRxgC360sxWZmv1fYniEZRRF6AIDxe4RkuIk09fJXS6Dgto8mRXPeVvgldEVsd1ngGP7JHXj7D5k9Qp0roRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771505694; c=relaxed/simple;
	bh=vr1ZTchR/+mDlJWbBwOCkmGA1zj4fmh1SuCw1VeyRXc=;
	h=To:Subject:From:Message-Id:Date; b=S/UQXtoJvdkXGnjkCY+naTAV54Ja/ThRmTZEQAj/Sp8l90IrMun4zbzuBoQhsOCIOcaY6c0/roVdeV+hdgzm2MRlP9fPk0neNSluH6x2XqHfGV0vyt5GWdZvvcm/i3uFZ3oDG4SxOhR1dVT7WaRkFgoVt5o8OwXod26PDW8GHKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YMIW00g+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YMIW00g+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E5EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771505693;
	bh=vr1ZTchR/+mDlJWbBwOCkmGA1zj4fmh1SuCw1VeyRXc=;
	h=To:Subject:From:Date:From;
	b=YMIW00g+H9EiM/OtK3E8uAwE8upkn0hIO2hzWsL9xVOOwwOE0XeMfToCfRIxrYWAR
	 M9X6CkPp4px3W/4SEzcuv3fACoK4eodVCgAXG/SYVYEhMXzxnCxSEyeTRtUyBYDM9R
	 3RmbtDz7h5lChandzklBsL7te+oktxMBEqOjj6SuF2A7+VRxRror8EobILPzvSgk0B
	 qMKqwuAFNtl0noakjJVV0Sr4RfqzhOnaPFp1Z14Koxfn15nrzwnlNDhPTB4jj1gmjd
	 mzRT1Y8ZFfvmCyyp2SiGH13OO6XJNLD+zUo20jQNmt9pXsddqbv8gp4AvMhShR//TQ
	 ZRVizRyXUQBZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976C2E9A049
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177150569361.8335.2734748001983671067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abcb942341f4089d1c90f84ebe18452bbc656d162a012213f7021b2cfdc93a05
Date: Thu, 19 Feb 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771505693
