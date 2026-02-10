Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC1E7262A
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770686634; cv=none; b=tIXTfpTBFj+40kaMOWRA/mX74dG5StktPtxRn/t+JcDENxzemEXuusM9k1K/sjx0LGU+KptpwMySN/R74zZjntdn4CnW1NGdADgLOPsJfQjQUh5exUc/qVJIb7MMiWIcRMpRqeIsPz+nvE/RFpBzbQkQuor6zDvWMFQyLlv9eVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770686634; c=relaxed/simple;
	bh=XYpBsOVg/I0gvPBqRopQOmJzGkCBdlylkpGYRVmynsc=;
	h=To:Subject:From:Message-Id:Date; b=tB55N3kABJgCIj5GD0Ej1V5Sfc88tO0s17mo7loGc492DKTWN5FqpBfAHjjB+c/xcMcxT5cUV/19mOz+9Vr0jRYCbLPYog8rf3vHdJ8JoCqFYz+u9LTJilqNcvKdxP1zAHl/eIxK/m5T3BS3Jnuyu76wjXVTwU2LfuZgw2L67eE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NnHoqsfo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NnHoqsfo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B20C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770686633;
	bh=XYpBsOVg/I0gvPBqRopQOmJzGkCBdlylkpGYRVmynsc=;
	h=To:Subject:From:Date:From;
	b=NnHoqsfolY1o3JTB3opGsiPBEV5h6rIWNw9/Vxre+gT5mnMX0HxrNkBI50WlUd2bZ
	 DQ4h8KHLoNUI7B1MBQvchFmkQeaL+76xpMa3fjGz15b+l/ekJ31QrK9ASCE0oYbxPX
	 041TOoupjOFP/EgpecWCV1rmMidsy1Oi4e2UMiSyAD5D9R2TE5PA424VnDX+qZhcIi
	 rTrwgw/o1wWMVLqdgbQjUcU0sxRN9vOg8tcFAh/3Rhpk1xhp90jjGFy99DKYOze5MG
	 cn6iX6JDJP3/Kd9MB84OibWbbuX9WvGfVp9BxB3Afv6LZox+lBYJwm8fx71vEOEraV
	 9iIcSEuTTcx2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98ECCE94627
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177068663360.26780.9456153522362995186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96a27c30e2a3597bc637519a9a48bdc1f5e4f13c12580729a1e3b870f2730e00
Date: Tue, 10 Feb 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770686633
