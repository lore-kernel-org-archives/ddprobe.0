Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255412D3EF1
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754974194; cv=none; b=WxdvVczXTMPsQ2cHk8vRqvFurFV7lJagwih1rvLv9+0W/AcCmrlirJsEdi89Qoei0mWvyXed6sfZk8CL0oxnY3gjtanuS3EHudk3005zc/cKUBb4nA/RugCzbWv3mpaquROVU4vbEDiOi7q3JexiB5SecebynShNE5fhzPt2tFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754974194; c=relaxed/simple;
	bh=I55mXqTZ6L3Mp325Q4wZUBGosxWtaZP/3ju8rFH2JCM=;
	h=To:Subject:From:Message-Id:Date; b=RK5NT2mn6M4jqcwd/MvuleHakjyD4zoGUs9oFPXBIQerBLOn11Tt7nRHNq9TuETg/V/GSVn8/gA+E68wy7GYLd4VIjhlPScROOeLjh1ZpY8kLUWGIip8SlcO5coPQCu6P+bCNHthOEuIRO6mtJBD0LqLdhyxBMPHuh44MlFpJ3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pBR+sUlL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pBR+sUlL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BA8C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754974193;
	bh=I55mXqTZ6L3Mp325Q4wZUBGosxWtaZP/3ju8rFH2JCM=;
	h=To:Subject:From:Date:From;
	b=pBR+sUlLpCIljoVJzurHYFmYyEX0c8bjjDnFWbY0oJczWThiOBop6SfUim5x6ExUW
	 FLjlKK/3BOoQlj5foFAcIem2EsAtje/sECxxMlrRlstqOyC13494jLVk21CCmhNdTM
	 UdxXbK1mAI9FwjYg/O4do3VmFza4zbQD9ovir3yR9fNU540d8kTpmMoOUXaofahK3y
	 4qb4uw87R+Y/Ry9mln5cH+fvRmfcrOyy04INypf6S4xDqAof/upAUcEYj1czPAjL0N
	 W+A6UG3I1ROjwPjGXk/fHV1n/Ze2TLSFk/grx6DRkQItyDYOKiqEwjl/R5QF2XPyfX
	 prtfnYYjsZHhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C76CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175497419359.14215.2128515718604363862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73f65a9a44dbad9144f42f4f7fe73b2004e08e8a9aa444a31645a5cdad4f2ed4
Date: Tue, 12 Aug 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754974193
