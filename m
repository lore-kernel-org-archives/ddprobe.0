Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 695F6448B9C
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784820634; cv=none; b=pIcritK3uCtx8tYwrQnVK+Sy1abGtMTGxmioIVr8i322YSyuHXcHuBFNh9Cs3apmvbS2XoeRsl1Ec6QaC5Y/2c1GPNksniAyC8FmyPPPvh10GCLljUfwE4lBEYW/oFM4IsgFneCi6AoQCMiU+MFSD0ekGyGBr3JPonjg/+qfBcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784820634; c=relaxed/simple;
	bh=+n060O07lJOBS57seUutJuBbR+iuRdRKNas8CpEY4hY=;
	h=To:Subject:From:Message-Id:Date; b=L4ga+3dlPfSEsExpdTWo9iRBFb4Q3sSAXfJYSvmeqRHbO/3VuX6F/BGSH8zK1aRsoLDqBC7g6263fPa8aOvMubNp4aMuwIqs0tVz3rBRwofTuYyNWpZVjCPMxQGEXdGtev6l3lv19bSMy5dFgAU+2com/LVD2yUevci9eGThGIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TSrVDYTt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TSrVDYTt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC462C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784820633;
	bh=+n060O07lJOBS57seUutJuBbR+iuRdRKNas8CpEY4hY=;
	h=To:Subject:From:Date:From;
	b=TSrVDYTt2PCOWkMEHTeWopmJUNIbmaT4SzuMwvzyKsrUVcmaBeTu+pUpcP/Swooor
	 xsA1pNv/RObVPf1cNOrxnEBAcA12oEFupodRSpPblJlzfPlSRVZJP2hXT6h24w3wkZ
	 uWdK2ghWU0yBj6z9JTIxwbRiBLNbA2ipwWocuHe8S3c0pEopLGqRJNlwupEdwi0nTT
	 9XBSGxDhaDwyKFg1MFJHs7xP9hQFv0DmM546zohF5eNOAZH8oPmgSRVj95GWn33krK
	 PsYtcHLZSsbuCO9/1sDEI8z4gTSf9r6bqorczQ5/d4nKsWkv3Cyd/JTrK3jhR5KWN1
	 jVSbpuAeTZGxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93B8C531D1
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178482063368.32263.17410377722563724460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ba1c98f56c15e63a373cb0e7184587fe3afe1c5666ff0930bffa6f095290635
Date: Thu, 23 Jul 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784820633
