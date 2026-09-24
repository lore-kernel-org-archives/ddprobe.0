Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A67F306776
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790208034; cv=none; b=PKyOCaIqLsfaIa5tHp+aRHMjHvWrSwCx1+FGlg3bzk8qDuR05hgvS9M5o7moHQC59RZAhSt1DEU4zANLWtSObSvAY+GX28PN7sEsxLvDFJZCY9nnF39OJpOaBE4wkhMQiHJgQxcrqtPQ540CNTWJJgy4PSh1alU48z6upjwAyVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790208034; c=relaxed/simple;
	bh=0y23UveQbA6p2iaeAJ4hvfsEeYMJh3tI95ZjbLNo8KM=;
	h=To:Subject:From:Message-Id:Date; b=lbkmNm1nuhcc3V7hjXqAD2W/gslK8e1Bngv+X6c0coGWJ1RnUYDjYRDDXZqAwJE0ZFy/0FJh8LG7Pm6jr5p2xPA7ysUBsfgGQ1K2t6H4MEYcnuwdb1lqmY0AnvFyyrBtZ4CmezzPnhILp7MdHV/Y0oAYIgOZmZB2EC2ZjOtbSxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZHR6yCf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZHR6yCf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAA90C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790208034;
	bh=0y23UveQbA6p2iaeAJ4hvfsEeYMJh3tI95ZjbLNo8KM=;
	h=To:Subject:From:Date:From;
	b=eZHR6yCfNdkzhjUnwYgq9dg1eHWJDWMCnEDFuVFzgEIT1qt9s5/ynpzhN+x3KvbZ6
	 oKbf1af5FxZOWurZu22I0KzrdNkC83fNm8r/lZLwucJuO1u2a7L2Qk1P2JxbgPCc8T
	 0UaZXZVv3mPm4XrcyR6asCV7IEILmaTRHnm1gdA67++dK46bMAb3FmoPxVhTweG74o
	 j+ctB3+1XkGar7Afv7kyHLZLGO5w527ue3vptYcdxsX6uo2z6hjmjCgjw87XKivY/j
	 c+MAo+uDZwTNcM8+avl0yzB6Rc+4FSoplF0cPSXw0O9rsVa41KjNKj87Cs291K4Zi7
	 WEmShkuI5WppQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C10A2C9830D
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179020803376.16585.8482147071492292895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2703f03b135ae985b30cbb51d80b15f54f89b3f4cf2b1be2b87d0c64fdd2e3b
Date: Thu, 24 Sep 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790208033
