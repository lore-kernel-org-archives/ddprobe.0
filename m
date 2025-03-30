Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A09519004B
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743346194; cv=none; b=Ja5ADLJPyvh9k+TBRzq+RyzLo69mvANzTjlJzXmASkmedFlGcs5nT+70gYl8T7PgnAtS8CjlT5YzjLYeMqbp+54NbAS5oVqNINIKc0ozG2wZn0rc0iIWspzT1wXocFJGSvGM6TGkSiAI2mVP2jWeEz2Lat69uAPH/FGd+UvCXiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743346194; c=relaxed/simple;
	bh=JyDpuGRAq/6dbGCWCbftcksMjuTfFcZWcctCVqUIU1M=;
	h=To:Subject:From:Message-Id:Date; b=KzulmFkBKZrHkEjE9xi4CeVcxiscJhS2O0ygQjsUI53bmmFkvfUEN15h3SkUqy+1dKU3S8EN3/VnTAiriMkJvLeFOtspuvEZg/fvCHWsMqcbTmxH8lwOP/umQ9bGpWlSvvqtSxyMJfJDEaremHrWfblOHh9AEGMDmj4uNEg8aCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=chjBjDtd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="chjBjDtd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A24C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743346193;
	bh=JyDpuGRAq/6dbGCWCbftcksMjuTfFcZWcctCVqUIU1M=;
	h=To:Subject:From:Date:From;
	b=chjBjDtd+tiila0OHRgp2sEC/3sd8W5aQAWNxJjialYUIcPxax3bthuz6ZUVQtiIc
	 FuJmNbRdmVoLL11chAjeao06e4cNyIOd/BDLvdDMCIplxLPcvvu7pMqeFnjEAzqoxR
	 HD3k3NCio9loqtlkCYQaVlDHakCG9hFV+NDDu7qHKMdNgiS1pfeO34woyC72CmrxeK
	 2XHfG5WL3Z//Hx2JgbxYTUbR+VcG3GigqinKfljlkVmhEGpE7hJcNj42pbj7vkAXES
	 qitdi6CVdmrcOKCUMn2zjWcK/SfTGNGVd8xITEnUC2Ap/F7ZGGa2ur1PZTjvQtRna8
	 k4Gg3JqScpPvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CDCFC28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174334619362.4710.13364408872281213796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59b493a8e0096bf808f62603733e4f1f04929e0ba1f46a3937e76b326f4dfe1d
Date: Sun, 30 Mar 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743346193
