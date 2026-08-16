Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6882B37E308
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 12:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786881635; cv=none; b=jvDts4PXtyJ/RVT7Shc2lXUPZXVF9KY20LD+wiSNkkmT/lyKDgUU8oBwArDnW05o5kE1x0uV8t+qJoHTNe1TKFZrvDqb5GhB0Rm0xtqarLTiAGqif92N1/l/5ORr9V2mxKWgM45/Cg/IlDOfEkoYf09Ti1RaaYeeF/WK5cY8GlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786881635; c=relaxed/simple;
	bh=i7VrX2z+jxCM64b0yuIjyEy8b0Rd1d1SMcH8UtJHlpQ=;
	h=To:Subject:From:Message-Id:Date; b=sNPepbud8CuXfVL3Qn7iLql1+2kYmoSSb334C/B9vzM3c+9HxYUNW05ZQvecKGBsIrCg17Zd2tB0QLZ8YgJs4OD5DT8/Bb0/n8S1CYZgM4YPuwC6D14wcXofaSDPLpW7cCGNrniOXML+jMn0RyaUH/iV7AnZGDN27Hw2v2aqHI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HqyfsBOx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HqyfsBOx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C78C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786881633;
	bh=i7VrX2z+jxCM64b0yuIjyEy8b0Rd1d1SMcH8UtJHlpQ=;
	h=To:Subject:From:Date:From;
	b=HqyfsBOxI+YXF4r6WCYxHH9tEyfQvvD99XdjVMjjDUiLyzExMcQLLeDBfGwjE4MEh
	 J6J5tjrdDrgQGM1+u/La/M3RqaGr3+HwxOE0htRKxbtVNu1NRc8LsZ0U99Om1lX3qv
	 7bi2O6GuNCaWrhQ6VtzqujVzZMh9pCyXaZdLrNvBUKWlnEhlfude7/+i56Vo3fB8JW
	 ReATG3gH3O0+be60X1n4yPxhqXJJS6hTQuJhKw0bt1Br2r7pUIx4knoSIaPexZQV7n
	 lFbdATDvuQ2sAmh5Q5qcKQIVHF3A+LgkGe7S8OM0NllTyPQ7eRQ32VGPrfI/DAlgST
	 jQ8BsuVu19hiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE19DC5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178688163369.5476.15548058442790384676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3597ced435154f3136a3a1e6d400aea8ec3b5f2c2163a0c4521e40d72883dd00
Date: Sun, 16 Aug 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786881633
