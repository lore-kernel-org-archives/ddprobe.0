Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B39F2571C9
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755261594; cv=none; b=uEf579rOf7bI+JUQvecXQRniI/1gGBdyX/PEGT1PJyjs3yBStnWoNz0ZO3S9yfnrxA6Iq+8/q7DvgJ+W5TSRvGlCUeXi2BJ5M6sypE1UryY1sFgJvOKdw2t1oOgf0EpaTg1uRSdcpmE8EL3I+tl5G8/6Gr29T9QlexBioEIMnfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755261594; c=relaxed/simple;
	bh=fzwIdIhJ46FyIoT8JQGofb05XQxTDDAkuHKR/DT/POo=;
	h=To:Subject:From:Message-Id:Date; b=RqppIuQ/yvUf2FOUYrlrEtY72HmsFR+LkdMe25ls9mE/zu27s15rwsUH3aE1+Xy+wrCkEqO14QtX/gPC0VxjOZYRtIiOjxIGFacfwtnAyD3B+xP69Rq/osxLzSrHZIRMrcVf+QT0q1has52CSfVvsHIbKXjFsN+jef9lHI00yAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nWS+FZp8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nWS+FZp8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F04C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755261593;
	bh=fzwIdIhJ46FyIoT8JQGofb05XQxTDDAkuHKR/DT/POo=;
	h=To:Subject:From:Date:From;
	b=nWS+FZp8NxN2ZfgpJYPo4AdJCGZIy15z9GRSqsma9ieGtZLtq8Udq+7jhYuGw28V2
	 s8PAmAcwg+/wOyguheyJmXIA2egq8UpFuhe6Y9QztspO9u/qbpvU/Uub3yt2kzNCOH
	 IiLfYeSohlas9OKRfnrfHZuT35gRSQgKewbUTFKA6h7ZmssSzNo1F5xIFBti/1KY56
	 Q5eF12YnNYBcu7SS5ETc9+7uX+BqHF90HysqpVJAexZWI1NPvBSHXMqwIiOB9MiXN8
	 sfIIz9vpAPpma+J2obfCHY4IjTjZ2HMivG2pJL96Uc8I/mWfqLP+MNMbsDPw1XN1rp
	 go9XnA+fwwXsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC04CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175526159358.26434.7060963325730678607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdb9c6f76e566e454cefa0d77b4c86d3c52d0daff6f6c82501c715281a6c1e42
Date: Fri, 15 Aug 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755261593
