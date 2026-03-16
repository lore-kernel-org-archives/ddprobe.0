Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E41332EA2
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773678294; cv=none; b=e1zvSNNTwsm1Db1+q+pgkPvsurO2pUSqe0bDC1sJJB4/gP44AOe+ysQqVC7FkI5NX3FVIeGOBjW5nPg0EJjYBeWfxXCW+KKo7WTpeCyiljnzBowhuV9VcBjciOQYXs6URXShzlpl7ZW22HmEeY6TSEdtWwMB0XajXEus7ArY9OA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773678294; c=relaxed/simple;
	bh=3LDluRVSQ1GDmdlYaGhHYpvV/wkwUqp+kD/xp8hdEn0=;
	h=To:Subject:From:Message-Id:Date; b=pF1RyAPgI7H9ApSVqrCQ2aUROETgxVj/+hGRbWTE31IbU51ioBkAgn+XB5aIzWH9Am36HL7q97hqgmfI8DFaTTfr3lIUGOtOYUoWNHNXPv4TVEnc+jldSHFuEjuNUQysewYKNsj8YY/s8dHLbnfwWIfcw3JcOk7kQlrAihD8bTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SqS3o6JR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SqS3o6JR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1726C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773678293;
	bh=3LDluRVSQ1GDmdlYaGhHYpvV/wkwUqp+kD/xp8hdEn0=;
	h=To:Subject:From:Date:From;
	b=SqS3o6JRLvMyX2icesoNGHngYty/h13EpEZ1X8wjKZ+EH7Q74JsfGQD7BpUO19AUu
	 m06XlzmQVlvTeWP7tvvsQ3s5SwDUUaavWmIqoyGVGhiPU8SimHGXsdA4jvaqGWUxd5
	 HVptgvRuD9L91sY29I5CKQaIuIkWTtGbnOCyBiEpX6Mt7oeCZPM38kVoMMUuKio1aM
	 63cElOId2vF+XCoeM4wbIHHEUrAzMhvPm5WMTSCfCSzkxDMUocFaJR/5Jr4pUmgNZy
	 gjNNNOBYJVjVV4JedT5Uxmf0St7BezhFRNgLjEE942zSXWIhBvPjNflw4FFfUc03Jr
	 5NygUXFiP8qWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930B8F53D6F
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177367829359.9505.8440705145883682452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4c110077c97fe96aba40a2e151cc5d4184a5bc1c0f562e2babf45ba7d5a4773
Date: Mon, 16 Mar 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773678293
