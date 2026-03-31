Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A583590A9
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774988694; cv=none; b=idmtRXxOiidbd0mmEljVzWitcZOb/2qo2ddpxMA20vt+UtvWtQ8xi+H32stPx3cUMgECusRg1SsM9X66o4zDH9nOeG0ZfxoRJoPSHxphke9UdyRzBSAnCf8CRQPuAs6uJpxQUlMi7gSBn+UdaO9xO5t2o906J8gAy0uhgqbuIlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774988694; c=relaxed/simple;
	bh=hH1y45Kt2ZoeFw26MC/BwvnANXEosMxhUXu6GovErao=;
	h=To:Subject:From:Message-Id:Date; b=gQJgiLRzpYMrmf6x+HcoMCAc1cyUTtkxZrxyyemPHnKAE5z7/88qRH7ymC1QB0sn+ARo/8dR8oXDoFdFBTmAo0KL+SpncANl0lSF7uWE7D5GiYrrTOcEIZ/dc2vuV+cSEiOkDu/awXQiVYaYH7B13acj+gfVW8jreARlt9ovV2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gY1Dz+SW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gY1Dz+SW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9736C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774988693;
	bh=hH1y45Kt2ZoeFw26MC/BwvnANXEosMxhUXu6GovErao=;
	h=To:Subject:From:Date:From;
	b=gY1Dz+SWTWTWLVDfrF0LaOBnaenDTnSm87zMiB8cSpGJ1yF1x9loNQ1M+defnCK9u
	 DPoHyhWJu08GJHaITOc/hVuzEeXUp1dTtO6S6JMIc08vvTXVbxIVcKnjNn31NIe4HC
	 arSJrsecMEDFi8LFT+hCKXehlukpj9wjpUEyCyHVJOKyVqkkR0p/+woxAYZ3UaQ5r1
	 ifZv4+h67i8MiL1pVNOqXqQHkXzpntEcnzTrmz9tYWIDw0/+PXad+Mb5mgbfjtAyxH
	 EkXbxZtdpg7mA0pbo9/AjIDiubQ8Ab/uRBxhjnF5VnRyv4+nFKYoJAywzASz7WR1s7
	 fJciOrb27HFSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9478110F92FA
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177498869359.14915.1266408472982192338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b45ff9ac9c349c7fd549c88344c95e9e37c1f4ba21532baf036dec468d43f899
Date: Tue, 31 Mar 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774988693
