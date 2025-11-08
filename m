Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4BF5695
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762642194; cv=none; b=fzeUYebU7iC2Vg/ci5sHP80CrL8unI/O2+/7WmYQBJyxluoBBU0qrZAqQVyWLmBUup8PzTDilnC3yUrQfqCB/zC68VN5xtkaY3aw9AFMDjoF4ilAYReJUEQ8m8gw0r4Z6mJGEguwNnJDVi3rt2vwZ+TbA6ISHKlOB2cnP14l/Aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762642194; c=relaxed/simple;
	bh=tjZh7Xc92kMnHT9YtSpPlJGxmJXGtzO1TLg40de+MNs=;
	h=To:Subject:From:Message-Id:Date; b=eBEwnQjNGVnWwKM4ADpthBsfRu9ba/jtFzjytCTXkzfwXbq2A5AJuPNvgXsME4dvabxwqRju2ltiCNbY/uyezpT68WNy43fni/5bWeHylPy6x8/elxOVJ5xNYX+mdpbnsvGkKCIm/c4Fvs1b7UipZn+1E6coMuNuC0A/omf2Qvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A1xbtUqo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A1xbtUqo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D45C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762642193;
	bh=tjZh7Xc92kMnHT9YtSpPlJGxmJXGtzO1TLg40de+MNs=;
	h=To:Subject:From:Date:From;
	b=A1xbtUqoE2PDWbul0rwSNMzgHhjzfwELa0iItONVn+SurCNTHvG26mdY9xXvOpU7K
	 Uwc2mDc+uhWolLl8Qer8paVdGY+U3xCYt3CXUFlrOizv39zcXgxcsCEJey2lX08oQS
	 q3yEWMofnmZfosGx+pYNnCB6uzvfUldCqjh7S/MUncFsaFjFamV+gyA0A5ZdshZNCq
	 AwUfpOwjWZlxyvb2YHrDpYHvuSaSJ7CHJ+N9lI8dvCf2ev1G0hrFijqckuCGXenTdD
	 yLB8XVtHc2MVRjLdd/mEE0S5RA2ywL4KFJaW32kR95QvVrYBp3skO46/ryaRDx5XVP
	 RnfFPK1ma8lXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9535DCCFA13
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176264219359.5061.921292041295333463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4574092352709d64b9178329b1c3b3c86a1254f1d5911dadf677b98a2255054
Date: Sat, 08 Nov 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762642193
