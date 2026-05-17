Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C503A35CB6B
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779011434; cv=none; b=BYddoe1rjWifquNY6Hv2JmQ8RhCQjOPEY4zPdoMwPHmvtQQYbs+elkpVvo+dfPJyMaPC3mtwEoux5UUVPWQUsTPD0fDWFnZr99TcKfTZD2D8Zg+PoQv6/axZplgEHeWj14JfywNYs2j6OA7Krq9eZ0IREC6guJO/QpCX3LfgDTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779011434; c=relaxed/simple;
	bh=lLnCrg6xKnUiJ4pLVJrWxSzxICBoPNqDdN0Qkp0xEGI=;
	h=To:Subject:From:Message-Id:Date; b=pVqoyo8tgwmrxMkGnU/PikbyEwnN0+SZUZYu8zDlLUZQ4tFCJJFAFl2Pl3yKr/dbyJ2uiwdugPpjlWO3n/VOR85A1Vi+9ee+QgLc3qZigl/3rc4CqgmWt0JX0i4WRAzNlcQOSCJBQ7Fh9YSrreLkkSL/2NoFFuQhjK5BggWcd6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XnTiTAne; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XnTiTAne"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1EA6C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779011433;
	bh=lLnCrg6xKnUiJ4pLVJrWxSzxICBoPNqDdN0Qkp0xEGI=;
	h=To:Subject:From:Date:From;
	b=XnTiTAneXR7N1SYuxpGMguTIjhK0d4OwlmOfgj0irMSn2dAmpm0tSzPiVG8DWBQQ0
	 iH6+W+3ieTypFsXXR7M/Yb1hlujZjMbLc3ySzugFqd3qOxnVVjJp/S8lCfrtnu1QpS
	 2n4c5//n05Cp7BFG/EIrHF6kFLp7rWcmcjZJnHr4reDeNxBTu++40rmDg/AxK7z4Hb
	 EHUtT3QACNdYe5gMtc3VwqJmRzO6VwTj/SUpknufHVrdsE1v+PvDBiEZrm2eZxRScf
	 m+JT03TG0kocQa4Re2Bi6qLMZ4C/ocJTZ6W8EZ3G2jhLIR9ZOQta8zKzUhmG/IInKG
	 IAIjNabHP9xIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D4BCD4F21
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177901143369.17458.9763765965910171900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e163dd0b98755859d02c0ad9152ba27bdcb82f7b51f332b9c6c5b39f60cdf89
Date: Sun, 17 May 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779011433
