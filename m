Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81BB03B42C3
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792383634; cv=none; b=O9lt7SpVCdSm32LfLjGUfVEVUaRp6zk/tngXz/hDFa7ZjLRHmNcvl4oqOPKEK30SOWL1MiIHrBq4DoA9bNP00RX/uYWkXwHn6IAJm5FGX03RTR+FddjA5xsyD9retZMh+avorQ2ktMkHuRN3XrXECH68PkU+nre8OzRMU04zifA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792383634; c=relaxed/simple;
	bh=rWN5kKHKGLVlTupyib4vNVbXsXtopo/hJT4XCI3P7xs=;
	h=To:Subject:From:Message-Id:Date; b=sDsfnPbKUr9YIi3E9mAjQnbSKEFCsXPXOloOPoEnQh23uVypNqRG386135serBo5L1oIeYMbvuVmwU6Z4mFn1Asa7dUvR+RZe+o2MmDqvlx3+capHsKN0KuGQ2QMBqqoWge3HxojiMrxqKCUQ0O253mK0OAuVS2LBNiWJunDYso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t75F4Rfk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t75F4Rfk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 077A9C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 04:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792383634;
	bh=rWN5kKHKGLVlTupyib4vNVbXsXtopo/hJT4XCI3P7xs=;
	h=To:Subject:From:Date:From;
	b=t75F4Rfk3sPLyrAujegJwXJvqwMDNc7tqFPcfmFj2b/XI5dImD6K7BCfYa/IYRcRf
	 gp+fbIgizMY8+RsuH6/EUR4dskLMvRknFzKQOLaoFrYmuMgoIq5hMG8ra39HD+ojN9
	 1BNFkEeUtyFbj95qBKHC6HNGd5R8UormA8ICqfOtArHQnmY1CKE3MiLqp3jTSigeBM
	 /tG2shY7Ys1eYkT7GWrciAl76nSPCvWP7uxKffF+LCU4x1D1+dHAI4ERUh1ImJ69w0
	 fDpmOkoV25gVMyG9dtU7fYhBv4eLrcysQ/OWPDh4oM/ysNsIgj14O8HlOYwDI4B1mD
	 wiAV2Zsnl7moA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBEF7CCF2D4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179238363382.27828.16178280454819507691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec1f4077e82450740378366bd5e9f26cc5961f4ede449c4f6ae3e421d17893f9
Date: Mon, 19 Oct 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792383633
