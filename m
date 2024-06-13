Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF1B446CF
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 04:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718254703; cv=none; b=nevVejkgGpFxsmgmA4xuz2BPUYBR2OlxWOrrpFhto/MQ89oSKn1fo0xOsma/YqM96KtGdOMJ4W7y5nOB9d5d49wBemJEN77hxl8I1yvhAt7GXWUF4hagrk+i8vxvJG/g5xQAJcZtKF02ldAwdUrfS5eu7KfqR+NnpbCX3ShDOAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718254703; c=relaxed/simple;
	bh=rska/KViQ1r6TRkmMVp12sXaGm3FHU4+SEmTy5WZWXQ=;
	h=To:Subject:From:Message-Id:Date; b=qivvi7l1wTi14yK2bJUJhGkPKn8QTvBiblGJgDRjAbaOJW3KW0pZO5ixE7RFCrmVIdbaBxgwlzcXg4VnCnE0WV80YhsJq03u+CnwPAfn+nTduYFOkIe945m2UMUbKPW0KVL90CDqL/a7GA2CmjpFlA02a2CHsTfmxBoUOp3vpEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EduPuXvt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EduPuXvt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0E60C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 04:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718254702;
	bh=rska/KViQ1r6TRkmMVp12sXaGm3FHU4+SEmTy5WZWXQ=;
	h=To:Subject:From:Date:From;
	b=EduPuXvtBTsWjLqjN4vCX20Od7B5KLIp1/e+0P65wx2k+hPoUFPpIztNsPXlSqVSd
	 1JhnuIBOODdffO6oBmOmjeF/nvUnH1kKzoFDnnzOEPdoy3tjXJBoY/Py2QtLdYr0az
	 aSL/Sy2qzO1wkWKNAzy9fdpZJCppIhPpbIgpzCsfpt9odbQVafc9dff+Pe1v10IFCc
	 dOA/8wLdePu0IliFc8luT0alo5puXfRZjwU8HovyZLRJTscmZfBWGXLPK9hNvHWCzl
	 Yeqo2bwOEvae3VyT1Ji8noJhXmA4VcZc5TEJOuFal8/rGsVicGLGgm4aJ4bKPGbYrB
	 aQM3k52683Mnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4DAEC27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 04:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171825470277.20474.12438316863828116977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e74fde19448a58ba1d70db1915a673d2f55c70c54b2483c282b276b3e0e5ff20
Date: Thu, 13 Jun 2024 04:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718254702
