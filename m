Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1060E8F49
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 22:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716935663; cv=none; b=BmukPLmCe35TfYaPVknWuTUv0tXw+nK2KVhVsEVpo9u3ph2tt2t8rGypKokyL4EzVfEwhpDqm36TeEh7NMYgLfJ08Y5XM9nvYNZ1jKhDGTmFlg3wFHFcG3Y5YhtAJgvBYDNxIFanbNcnS3Kqt4vF5tMgvCaFksPuYod6Ams7g8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716935663; c=relaxed/simple;
	bh=OAv3yy0HTGhjuLMihpOmOmDS66vjrmOiOhvXnnkZ3TY=;
	h=To:Subject:From:Message-Id:Date; b=RV+/dmWNCE5Hkkd5B644AOzfRmfH+SaT0BkVXhgYFtUEOVcWF5u9SxqBpBdlsA68lgsffetBNy5GDXsqErXFCelRLH/QnvR/bzkr6Fvoq1KcukIGs/7LjdDzcB2PfPi+7Zdea9wlDmdbhHduwIyVaikxDpO7uUqEMhgjqMvOKV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQAMUIBX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQAMUIBX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D47C0C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 22:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716935662;
	bh=OAv3yy0HTGhjuLMihpOmOmDS66vjrmOiOhvXnnkZ3TY=;
	h=To:Subject:From:Date:From;
	b=EQAMUIBXV7TjPbDsB1SQajz2p5fdI0H6SpzZ0Ak4g85wdP8To6EQCFWBeaBlIvq6B
	 a3EjBQwr1bLLhw352uT4BgaUC0kmrMtjpUci0IBsq7HX6wcA4RzQE+k8wtvnbR4Xlj
	 vEL9liRxxCdzIU6Ysm5Jrnk2ydCgwODfGsT3XmUOXNFu3mu0rH31JhxNW/T1RJNFzJ
	 NymIlhbYBNNEKRZ5wBcSfJQ/RbgQ24foNFEiPL0jqQU+8+QVrW0HUzvCyDkd7Vd/YY
	 IDWOo+dKMDmctUcKnSNUMxahNCzodrtjiwbWoKuC7Od1oll3FWcabuYgBOcDwJzcEZ
	 ga49Jq7zerH5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBE3FC25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 22:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171693566276.7570.17671023391603115279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1d1bb5118ee76ab8c6b9b64b93460642c0d7ad6c0320bc6dfe91220c5da4317
Date: Tue, 28 May 2024 22:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716935662
