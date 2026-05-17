Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42054405C5F
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779019234; cv=none; b=I/Up2v3Wy5k2MYvvdLWk+iLisIoH8q5g3/0OSb0D0A1yL8zzUrdwVFY/z9Am8CUM0ZTe3XKZoeidqr8m8sxoMYsxYnUGJaN0Mxfo/A1RzOJR1s3ms0U1iFJmC7A16fKDTeug+tmR9qAgeAkv5XORdjPMayiQJjV8dp+jD9aZyNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779019234; c=relaxed/simple;
	bh=FcgyiNAAKab10JzxYtLLJSklPNuX7X0EfDiyNtfdxKQ=;
	h=To:Subject:From:Message-Id:Date; b=BUAZ6trxTFjwgOe52DvE/qbeA7CeHtDn6bU+av68l25eK+SRzR5Jy+cf08ZNSzxBf7JXpZK6DCRn+Cxyzl0SVcrpjqUPDENi/mqqWLr2x2ZrSNP+C8Epzl51RwLFFG1hMgxEDQclesnv8gc63kVKGPb1q/A68LDgcICdamC6zfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=So9fkW4x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="So9fkW4x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C9DC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779019233;
	bh=FcgyiNAAKab10JzxYtLLJSklPNuX7X0EfDiyNtfdxKQ=;
	h=To:Subject:From:Date:From;
	b=So9fkW4xJ+UsrNNgaVDhRKymwsSLMZdH5m8F4WI/EUzaDeE6Q24Z6dHiVf1RxfnFN
	 HlmB618IT0MySIbgbweUdzfExpvvPv4WvnaORdzZnmHlshnBinw12Hg55tmZ+JT5Rw
	 rjdu6Sg1XYoz3bEKpSJBzEWS6By95KO/2XRM1nX147tJahZ/eMSumrvPfNkOu8ZuGd
	 J4EGlv+IEBZHCG/1CClSRTnc/oFafwJzMs3RS0Fl2GGM+2zywLdsH9PyHhjspNTKrQ
	 qKaxbdTr7ukIMsPuXyQw+L0scTutoDgvXDWaM67y9TtOZuS0Y6+MgxdJP6qgpwx5fh
	 7QnmmwgAfpBHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7862CD4F21
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177901923371.3661.14334575831460791249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cd3363de3ff365f3a66145b55fabc16735e6d6fb343242d8814e7d306243eb6
Date: Sun, 17 May 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779019233
