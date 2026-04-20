Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30860946C
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 00:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776646054; cv=none; b=KpIdxXbH1ClLGuCl8wIJlR4wfEHTejz4j+1dNiiZUE9gS9XOLs3DzHYMeoD6fEEi/nCWYcOFhmoTSdLybJi5fDPwqUGmm1cvWuUF13MyxUiZR7fDGRZ556v43mt3LUtAke2vGDq9CP3DuKbeyFiTbN/HCnB72V5vnBRm1rVS9iU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776646054; c=relaxed/simple;
	bh=Cn0AA0knoZqvQmi+g4IyS5rKCI/CkdWBqLinYssXMuA=;
	h=To:Subject:From:Message-Id:Date; b=PE2M8OnZAMD+3yMdLi9a/rHK8ZHIa6n9dRBvlDfsiFm2INQwWhGEfBA3xoo0P9uSfzv3ZVcFv4WP5onFxzMCjx7cL0zk0e+31WKs3aLepVEn/KNs80An+ShlwKlz2BHtWEFRd8WgB5nQuou1Fhv4jkpYdtRtox1QORTLbG7Bkpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YL62PVnM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YL62PVnM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9192C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 00:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776646053;
	bh=Cn0AA0knoZqvQmi+g4IyS5rKCI/CkdWBqLinYssXMuA=;
	h=To:Subject:From:Date:From;
	b=YL62PVnMOWqIx2wix4bINeV8+8mztEi2DGKGhiH3kIdqHL4iFbY8hM+qC/a4o2Wp7
	 3Jd+Te7dOCViX7BqDRWiZIqdkTFDE6EnePkdVbAMcCBFYUqgzWHYmoKOEBROyn/7V9
	 ti2OPYp8URGOuZSbTsOnK2+zabQeRRcfddXX5ppyLFv4eXH6WT4kImEiADC+ZmEupg
	 woRKqzs/7K1Xa0jRezd2X2ItqEHs3TcsBwe6HOnf/Q7YQcfELOP1YRAj8RLrHRgzxI
	 84kzG62XbDQXIxEWGfzlPAYi86Bu4SQkI6QPQ0iYS+xU2eQUoNEvK90hexc+NzLHYP
	 52Ok3zUPUjvUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CDFEA71B1
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 00:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177664605368.19514.4495821659431813117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09700f58a88535af7688d9b631d30c63d8579372f28558c8dd3f6e512e58104d
Date: Mon, 20 Apr 2026 00:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776646053
