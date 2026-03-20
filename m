Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B88D2E11B8
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773978894; cv=none; b=b/ILDldk/aZWgMlYuYzXNpcBWv0I2EZe9s/9xqS8uI/afrVi6by7rzXaa34Sj6JVwwc4lEhXQV6LKjXtlyzCFlV3f2R9qOrPG0SNrcSZOGoCF7m9uslhLxMeAayypjX0Pqd2GfVyvrCfb89ihgb4GC7+aLB9i4jU+bgGlVjACW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773978894; c=relaxed/simple;
	bh=iIcgXXUutkj8SFTRMYUq33RsiyxVR4XcjLL/He4GFQQ=;
	h=To:Subject:From:Message-Id:Date; b=pp7MAjukzwu+RWBb7eep5dbsqWV2Vqcr3c7r5S5uANgiJ/tJLALpY+tQkBSnVaPDVuj2AHo3XMbsKj0Li4wL8ffXyFQis3ehxSbMP75Dlm5arIkCZ+j4ckAAsxy1ZYprhMH4O4lfXLI4kE5/Tecj/vSuQecx1z+QeSlhgAj0jn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=su3T4mLv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="su3T4mLv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D96C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773978893;
	bh=iIcgXXUutkj8SFTRMYUq33RsiyxVR4XcjLL/He4GFQQ=;
	h=To:Subject:From:Date:From;
	b=su3T4mLv7cKjBMK38cdOAXA70XhtQW5UWAxqoWOpX4OcPwpzotCjx4ZXJAXvNShqV
	 3TmZoU1ALZTTu8LedqNCoLF7bTZdIAfTvCBO2ehx6iE+iuFy+eP2MiCifYm64o/Rlr
	 AYZDn+LBoe0CQLeNpYAVMPBN583x9z2HJW0Bo7lMAXAC1T+N3A0TPaPzlqSjWvW4xw
	 FviBaTd9cwuO55fp2qJTuzgp0eNhvEc0NWUA1axsp/RzFxcXS0qmX1iECYTXCAXrlR
	 g38WgoBj6P9hxMEajO0qEiR81f06cEVIvTENUzug/q8HeUN6KxdasdmwYT36o/UKTy
	 0ZReY/yftvs7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E1471093172
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177397889362.4815.17069765229360728650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d0a742a199cae99b8b07a53ee3abf895c1bf471aa57e1e34c41aecaae241458
Date: Fri, 20 Mar 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773978893
