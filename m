Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34567635
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736904354; cv=none; b=BFp5LtnZkfr84pFNQQy01ssGrU2sL8vDmgzY+y5SIOn27sllXWsyWa55D15rIl56oQY/oCdZWWtW7NMNyeQTIEIbsLbzyx1n0mrNICzKUBRfxmOHCvXrNTBHBtUxyMIep6aNnLqutky+XO6wUgRnd0ZSBhqPmB8DcvTkIotQ+7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736904354; c=relaxed/simple;
	bh=oHiVs3L2IX420PLdzjl9/nXrMSa5SoT4wJv8+be59Xw=;
	h=To:Subject:From:Message-Id:Date; b=PP86OhYzS7VSKJ3/VMajX/Ct/VXshLRz6It3c5qmaCeg8K2cdqr5Ivh3B5+x0tXC2zD3wbIEaXXuPhEzMiBVD+8AL2DFzoqgZ5GK788tgk4OJnLawUvDG8z5rknA22H6XaL0xQA3iVFrrD3B7YDjz/+Z8pytQKCIkxTauV/sfY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aOX7IqZF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aOX7IqZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB86C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736904353;
	bh=oHiVs3L2IX420PLdzjl9/nXrMSa5SoT4wJv8+be59Xw=;
	h=To:Subject:From:Date:From;
	b=aOX7IqZFaO8sb2FGIb5eH7HuA/XgozP0ucEwNy66OVWi1lnUDo3eanM0YoGZltdVW
	 gRGGpDcXAFskaaKMzY9PXSDrDpZCsUYczr/KlRDI4hEKTH2uF+oRaFn0OCeDyhM7lU
	 +OSTHpTdHm8HQpflmIttPDWNmDaTUVSJ7Z8mVLYY8PDL3F5MF0QYZNNXeN8GTMzj2u
	 cx9dyyEozfnJjhvxstq6uVzSj8Krns5Llw0Jw6u0cbagbpELzEwP7WvATZY1YrhID1
	 /oBxg44Xy/WQkCmuQvvjx/Q7MmuEVwop87zZY2QrHftR+YQU2uf3MUS6qMLT7dkU4F
	 TgS2AePzi4gRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F74EE77188
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173690435357.29039.14589189744386106261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaccee96f59b1413775fc5487c4f5ab6f0d8b42a153d535da18290f4805c0b8e
Date: Wed, 15 Jan 2025 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736904353
