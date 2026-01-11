Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124FF348466
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768142034; cv=none; b=NDvMq/ABeZ1xy+reNRXdBvlNtVHJ2/K3zkr3l9RENqNM1I4IumVy1yQ8ZC9HPbt7l0riRb3Bu8kjp6mYy+DWbOtY+irMIcpod3RUTIWZIEOB+B9Y9gELtKjllShud0PxnlqfG+1m7n7bOuVCFXxv3lMVnkza1IDOfJxDBODNJPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768142034; c=relaxed/simple;
	bh=iKG+uy5HwpsRD93UrVVC8kfS6JEvavrBtoqhk3pBMI0=;
	h=To:Subject:From:Message-Id:Date; b=WS0nMKhv6ZuJnEyuswD+o54/qLq/Nf0AEvft+dED4but8NQO90uIhZPrUgFOkxugQaYluIL2M6L9pj5MfYjSi+fxUIv/dZFe/6Vc7mKMIch6J6mgKvHXREJrbT6RewUQbxpfE1XPk3p1w9/NZ2ZXZd2xfqiiZJXlWGOrA5Tb3iI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TFJqP2H2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TFJqP2H2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3ABBC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768142033;
	bh=iKG+uy5HwpsRD93UrVVC8kfS6JEvavrBtoqhk3pBMI0=;
	h=To:Subject:From:Date:From;
	b=TFJqP2H2ZIlTJ+ttbQh+l63wsJXVkwzMI/MuXiWdOX9tIBuphXZxj+KSqmu6GTp46
	 nES+wCL4suYfwE6OskAigUclf1EKjY0vjN3RPgWr/xV9+5AaFq+cGzOmw6ljFdeOU+
	 NQvf898nQY400HK/KyWKFIaUACaXToM62TKjxTTi581zQ2vBdkAPOCW2XghUuo9Acy
	 acodxCVHUIyT/NusTO6v1jCPfXQGfxSM1btV94fXyCfUULGofqRoZtxpY7PL5dEbtk
	 O0+QosDqAUiFSlFoC0kP849wTy87BuPRKcM5ET9dxvlFeTo09o1R5q69QVW4SlDiVw
	 ZHg0qmUSw9vXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A93D2502F
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176814203357.22814.17997471283478752207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8c2086494278e4a0e561be3c84f3bd806e9895cf9e02aef55aa82148da54f52
Date: Sun, 11 Jan 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768142033
