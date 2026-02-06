Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2074B30E0D1
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770407034; cv=none; b=toA6CdXGbY4uyvo5zcFt+jVTs3D2OBmYIowBu0Fqr6fgBd+oAWm1/pZ44Zy+i+eOuHh6Vsem2/ELm8Z+xEitCioHnCu2kaGILd8SBOAljclc9HbHLl5To2KFGz/3cKTdEaUcbwxzkIo+KlXaTRE/MEXy+Hf/mcvEXk8RZ714IDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770407034; c=relaxed/simple;
	bh=lRQm/oiaqOPL/6pKVvH8EhswwbHIWHSw7K2wofWv5I8=;
	h=To:Subject:From:Message-Id:Date; b=ks/03cOe8J592t+kcRxSirFWmsXIsrw31JzCOYs3oCecDtScsSTR1IjW8rMTjYvCMEEvFKNoDPl5moNeSEZhlSi+L7lhCvtO8x8RwIWU4NaKGCm/+B42OpBh/jdx47IdSFL7XccRL7goMoynYi/meLRn5DnjMJ+YY2k7cfrSxdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qkzKZ+Hn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qkzKZ+Hn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7559C19423
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770407033;
	bh=lRQm/oiaqOPL/6pKVvH8EhswwbHIWHSw7K2wofWv5I8=;
	h=To:Subject:From:Date:From;
	b=qkzKZ+HnJP9P8+vOur7wgi9eyoURx1SVEncNoxZgOK8o6if9urCfkJe5nTCRTtf2/
	 InOEcjEiHDSOYYpOueuMRPaWiC2LcQZ15a+q3WKgL1sQ+8dTRG96raY70ZxdGz7FLx
	 nWD5PKq5M11tT1uYx1XQh/Db0/06zA0uiymXjIAOnth2UGDyQqk6Yg++HvJaBWcGuq
	 pIlmE75svtedjm3xCP39+XSW2+QFeOX/0l/YhF3WgBvJu4gIVcBMhhhigQdmPwhR17
	 TzTP8GeMXC/HRzzmaR7Uwe0P43Svs3XG4A5ZOfYMpk6pgwOwzgpM0mmsJ1GDibhtpE
	 eFi5xF+mDUn/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CCCEE6B4C
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177040703358.17094.18094389780002571125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a9d3d81b2bcf8e8095cb9e47bae04e71280dec7f27bb398f5ddc538bb9688a3
Date: Fri, 06 Feb 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770407033
