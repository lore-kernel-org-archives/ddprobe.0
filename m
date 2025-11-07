Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7572EF655
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762483194; cv=none; b=IWIMWIelza4a3WGx7MKcD7rqIsgInEz25LDesMc7YM9ZDnA2g47omBQD12fWhs7p6pWjX6RBdqAQuZBg8CUra+SR2utqn9gakFHcaRfFUD63WFos2YCqIZ4IHEcKmonTnc3T0dZoSn03zZ26RE/GblTGZnR9apn6H0vWCr01zSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762483194; c=relaxed/simple;
	bh=bBoAcGZO5/mLvLciFU4190WJ1I0N3yyiqk+HPcrob1c=;
	h=To:Subject:From:Message-Id:Date; b=Dx8sFBkYXr9n2QfhqO7IA468tOY8D+K3VDhWNEt3bqEViZcMd+2c4Qxyk68rwpaPpOd60V1xUk1zONwa6/bEvIY3pQ7OPUsxeI58oLs2Dj+bg3Hq1rlNU9Pc2q0VK8A9GyfKr+o2U5sD5fCYVylXxTym6wfe4v6BUC7Nnxjc1zA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FkWncEpl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FkWncEpl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9479C116C6
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762483193;
	bh=bBoAcGZO5/mLvLciFU4190WJ1I0N3yyiqk+HPcrob1c=;
	h=To:Subject:From:Date:From;
	b=FkWncEpljDY+ZqmQxqurdh/R+DX0mO1IvxREpdGPmCQwqM6mZPwsPcZzw5kohGGdY
	 M3cIEo8qlwk1VTfUa1JpH+hCmbeQWXSNtdpb/HsxaOUm+TblOtMdYxEleAiG5Fe6qu
	 tEBE8RIOzQkAEl0OJxcxLwiWhsZeirjUj3/Ti9Hi5Py4AFaOtnhi4iPjuQbFzKYAvp
	 t9XG2eSK5LwjzHHDOTsKAKi8A92/X+svBMcU/QzmsfpyodQnOCP6ndzZAGH5NTsMow
	 hT6E6aIkoMR8paasKAv5MJdUtv4CvZIQU3oL7bZcM2Uem1StTZPX3NlJCLT7e6/8LJ
	 IeFpmXc5RCiNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D984CCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176248319360.24622.12814598755418176931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84e0dae3f75ea765c70077015ea80249e438f15fa06272dd338de60334120904
Date: Fri, 07 Nov 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762483193
