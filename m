Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC7C3C1963
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769002434; cv=none; b=WHI6xTT1xHSUozwCp6uHQ6xf+SYSoNDydzeUNTifQHKPYKb6jjlxP2tDhBDuBeIfh31JHOQcc0TWXI9k3FP719wPUrGD+irAAnpnJUIfDiV34V4NYgBJtyC7vv1cmdp4qQ5Eih6MHnSBFyY/X+JYxnH4fNmM5ys4EBbl+RqTVxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769002434; c=relaxed/simple;
	bh=rbXIftcpa/DAKWKj+Bo67OJZSiBsZp6OJZDwKAFo33I=;
	h=To:Subject:From:Message-Id:Date; b=rlGNJVDtNpPkK3RcEo3T3rBTB5iNZb9dHBqY3WYckqkiT+IrCx2cM6jGk1MXpacyiqoEMG0KoUTUoGtid0c46ECT8WubEJnTnCPfGMVe6C/FBty4OcBU7NSp5g3fSSxl/bX8uc+a5b4bK4iEwbsQfJluFwwn5M6X0kergspgMZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVz4SQqY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVz4SQqY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A20C19421
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769002433;
	bh=rbXIftcpa/DAKWKj+Bo67OJZSiBsZp6OJZDwKAFo33I=;
	h=To:Subject:From:Date:From;
	b=LVz4SQqYUFHbS5CMn/QbslnrS7JjC5WsTFwzBEI0p+He6RiRf2y6ISwzMHKrXy94J
	 9u0SnIn6GNjQfjzh2WFcVALzLn0IIIWbl7a5Vif4Xca51A5ht9pEu8SoMF1J2BYFyc
	 H7zpKPWdp+M5U9gKZ+453sZx6siUNsTIgdNWUnun5FZiULx5wD3ci8SfST0OQ9S7xE
	 n0GUj+9zcjVCjdiPwZQ+tWk0Ki99k0pPUKF7LZBbY4o+pzLxv6e9UCPi/jtoFNiFwl
	 BY6Q3AyF5ELsA704aeZ0zhnkdVYh3If8IimsDYtyj1D2DSkRtoR2Yq3ddo7Xm699Gl
	 ZOOzbSzTzl5HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9079EC44525
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176900243358.10339.17093176798794427493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6c1dcfe3b65ad5ff1727e011cb85a8636ec4c64cec7c875bb05e8e3b6531266
Date: Wed, 21 Jan 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769002433
