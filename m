Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42916E555
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745814595; cv=none; b=DTRckPSbSIGAwnmxOI5lmrmNuXQ+rrYqQ7yKLpiGSxf8tIxfmkxi9FDt7PILubVlXADqu+20DhP6Kh9jsoP8QWurPXC2IqxxeyqqyhOW5SjgeFPK82FyCRLBy9mhihfu0D9Kd8V5drFR7NtTZpX8GQhKEsDLx/EU2oveKfSwaRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745814595; c=relaxed/simple;
	bh=E/DgEu7os8paNK8rHvw6vzb/vNVgtFdi5/C1zEEalk4=;
	h=To:Subject:From:Message-Id:Date; b=Tt90+0Ved1VVEtWa384+22Fzp2gBrAFpIEgwGrNLZyvghxY4p05mhk6kzEoplMDDK4pV+u4A71MByNruEbI+B0B54FWKbbHaO+t0Mrm+O/DbSfmuqF/nFMlURHloBYP2uvlddy0Cfttuo8rrFo4+ow6X3Ds2daDHOlr4s6RMmvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EFS3JiZQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EFS3JiZQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA886C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745814593;
	bh=E/DgEu7os8paNK8rHvw6vzb/vNVgtFdi5/C1zEEalk4=;
	h=To:Subject:From:Date:From;
	b=EFS3JiZQlx0hjPxZQhQBDf5PBK3HHiF3+45ddQxraEBSQtrF57Nws0aylIQhPn3pU
	 ebte0VHXS6Smj9hr70j1Fedd7FYLvM0xu4TR9Quq9Wmi6UExFcAa8DXqXQBT3ZYZUt
	 lXU0iqMUpEJVZnZWwCBGQI8KE/TEdYAG0UfG4XsWlt9Ymz8DkWeXEQYICj+oVAayrn
	 DZN+wXPsrTH4GGeqkYN23QqHo/TN3CpvHf/idGh4McdiltUXmuEIoftoyc3UWgKXG2
	 yoK00SojN3g3XPiatWmUqOMx9sSw/tOBmWQkInIbfE6gtVPCde7DpQmjxW8l06Urb2
	 LdtZkAdferA9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CC1C36005
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174581459359.14472.13474961890353502330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac3f2defdd1d4aabb94caa49cdee1f7b3f8159eb918e0fa9e8e26e13f6446574
Date: Mon, 28 Apr 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745814593
