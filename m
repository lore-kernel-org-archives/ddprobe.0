Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02B10346E64
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770933894; cv=none; b=O1cEP6gQ2npk5R087bpI3pnvdsZv2hHlDSVQzf14T29uDFtXeNDJPDT2W7BP9UD42qU4ysPDzhKUuXUG0Ke7H4iRbf0yxR1SxNXl8EfFjrdvA54uO3hmhiRsHWJiAkHA3yXgehn3KnTuXikwYhZa4NPebNXuNpkFiqEJuJC/n2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770933894; c=relaxed/simple;
	bh=235Ebw/g63ly+p3fPr0fwiV0VHWF6EuZJfHZIPV9mKk=;
	h=To:Subject:From:Message-Id:Date; b=YZw6LhaNYAaBt9H77VhPGNnOg569aL4pYmoDvy5X1S/Ream49R4unnSCOobVSbPLsDntb5LtPDWfrLwtK8eA7dNv5ybh23AiuDB/5rcRHhxKyaEC9nFP2Gvut3UqHMsEPcImZx4d62KSrMGe3JipA12UZbGHcgVHvkyUAZ6NhhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZtPGDc1i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZtPGDc1i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B168DC19421
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770933893;
	bh=235Ebw/g63ly+p3fPr0fwiV0VHWF6EuZJfHZIPV9mKk=;
	h=To:Subject:From:Date:From;
	b=ZtPGDc1iYHQ1rlwAAmWpNfmYRsU14AnzO1ykGEXlydfIfMmBrUuQKi/aNlHwrvyrX
	 WWVUruO1SOctWNcW78bwcXhf0U6bnyTdszNPQIAjgaKVHnZyiSf/9kv4XoVjxIs2s4
	 QlHA4bYF7eQqy+sElpAnH1f/s0MPlx20T0a5Vb5mEWv5JweGLvpjOgo8b/gx/OGnMc
	 Cm00fPQkM05+KmFDUpz+l3eLk4dsitUF8RGdMQmGNu5M6rLqD2G4Xc5OCV4StK/PAW
	 X8Ma4jVZ3FrrLPkEnett6yEzcL2MUWLVOLTy+h5nPbHjWmQe2G2iSteS92xnpVL0PR
	 0K+4Mpk8q726g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98883EEA865
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177093389361.19813.9286284259654414898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9006868937c1658799ca50dadc5c61a025ac4489fabf4d1eb010cba71ed755cf
Date: Thu, 12 Feb 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770933893
