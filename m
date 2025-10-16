Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D0728B7DA
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760644194; cv=none; b=KVXHPrn/42CsDJMDhhYv5HO2ws0uNB8xHPksu51CIA7iw7iO9V+/L5dUSCL2uUQAvGLGeBGNJzNJuqxE1VyksxfUvEGZncM8OGBNwKvA3yW0flx7wTlIUAtuV/nFcOqTUgYxQYQ214AVe+ljabuoUw8r49q92c9lqW3BgoPv468=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760644194; c=relaxed/simple;
	bh=8mFeWynPrgrovhk/0+cUVOV0S6f5sYU9EecKCqXDYZA=;
	h=To:Subject:From:Message-Id:Date; b=NCC+2HbQH8mVrXQREBnBwU/xQCOI8VUZTYDnv11elfrHv5ivT2afnnCGEbZilWWrVXuqzeezG+xgJfJsVzNEoUtmtTwaCPnXIOCK8FPVSkCg8ziQrEUGWR/t/gVZBtzh2FAfnertbej29YcHNWwr7lc7CGyD77SikHOowOsI2HY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RdF2gXhx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RdF2gXhx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC2EC4CEFE
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760644193;
	bh=8mFeWynPrgrovhk/0+cUVOV0S6f5sYU9EecKCqXDYZA=;
	h=To:Subject:From:Date:From;
	b=RdF2gXhxzp0GKzQd2t80CeC964WIofS4vl03CTqugUuWDYS68T6jsUSB5vqhRiAMU
	 HPDaRe//LvXW/Y9+AltKg+xHF6DOi4TWCs6R7Qom6Yzm5mENymMofOOyuFCf/qWL8i
	 h4aw+zgkl1qDExYNxfosTdYynY7SMbfOzvclziZPtF6uofLIPdl6DIBWiJlMYgvbQw
	 +ufQa1DPNe0hiFanrq+eH60f4lee+OdZrp5cJGJnJvsWJVMhx2yupzbejB+qp9TtJW
	 qcL77Mur3G7jdqFiygulU2unPrDU58X+hYB4Dv/LcqrJpGzsiVvzCD9oqv2Opau2Gy
	 PIx1pAeTtL12w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9104DCCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176064419358.31451.418034469412718787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 098eab4f63260bc917c4797b7c8481f05d4221ff30e8d2d7ebba15cb3864a8c7
Date: Thu, 16 Oct 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760644193
