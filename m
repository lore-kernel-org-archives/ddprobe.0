Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F38A4DE72D
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789729234; cv=none; b=i7MoRMfVDUI75/fsDXXQBzNgS1XAXZ+bsf6Lg67DT0j1P8xyTIXOIJeftAmYfqX3xeHjZ66nbFl6m4EyOzTWSNZb2ghOVG7QgmcsA/IGBKQwJS6F6B3+cX8yMp0P0JuBnolW/T5DKxcVmQGvLot8t12U4xJnmsZ5az9mxc6Wge8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789729234; c=relaxed/simple;
	bh=0cxDt6uf+k5At/I2igqkiE5yXSDc3I7kwqjrRY0bI58=;
	h=To:Subject:From:Message-Id:Date; b=o2oDHqgHVZGE6hyP3FDYh82ZZp4qqEtG0pI1N10cCFjyndWQD/zHNdYDTUJgO7ha6V/K+UqhxCX1pyWmQeyOLJsVf3RdIGt4jjkDWlULfp/jYusBk06zxD5D9raM2DFQAVMaSnWHJctWuXn39EBQ1kUeNynHwaeGMoQEMEhUjFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fx27xSCK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fx27xSCK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05D2C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789729233;
	bh=0cxDt6uf+k5At/I2igqkiE5yXSDc3I7kwqjrRY0bI58=;
	h=To:Subject:From:Date:From;
	b=Fx27xSCKic3aYz47SIi8UhR4fVaMlzKQfsPB0QCdFRZRsaqhqybvg+n2e3m1QG7Wj
	 pdUUdu2TMUVJprXo2gpOMP68nupUZSg9ZTzszxZtxFP/q1oM4M7We2UhkyxSPYo9j5
	 EyjHIce5k5VLwbA0kQr1VRUzgeS+cpZ/P0iocFQ+BoOOrhZiEnFZ+Yur7Qot1+DDXj
	 O8ve9TiI6TUJ8m0qkrtol5nORm/GHJAnpOnfhsc8jH1QNkBP4PR0X5H74t5Q44+hrF
	 56ZyKO0U4jxXAsK1QzLSvp6sFrYs5jZ76SlZrUvhT3G9+kwvM3jngiz31piqbzTLLQ
	 CegBQokoSF36Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A955EC982D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178972923368.29897.8751675386410194534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa86a3c4cdc08c2c6b422526453ce6657c529631ea590f9d7b4f629910b431f2
Date: Fri, 18 Sep 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789729233
