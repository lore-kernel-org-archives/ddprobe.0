Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531293C945B
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 07:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783669714; cv=none; b=qL+hg5MotcaPSrYJfFzseeEyy+EGMD06bGeDt0kYdaTlqFC3ZXKprTvJMc92kFm9Q2loHjTwAfIIpntxu1vKaFz6kkzbI7kAj82Tz9y3Ni9ubkj03z67MY/VXp2HWZJKYqxy8E0ERnCOcfg4fYnWhf8xgwS2MdtRQ0apOCp21/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783669714; c=relaxed/simple;
	bh=lMTLiSev9eg5CWWfnrsslmdcyHyH5L16X2uCYPBtnSM=;
	h=To:Subject:From:Message-Id:Date; b=Ry0Ml0f2vh+WWrMtk+JA1bUqx1LnBWyxrVePdJdCJc9ttJk9nOgoeuvulPknYQtnbZsO2ggr39dd8TzqebTNDPowG+iDyc9IAsNFlKrjnb2SK5w0NT38ITnr7Z5H/morda+YMwpZAUDY2QcTDhS4YUngspOLE5qA5y+Da2zmFBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8/Z3/lY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8/Z3/lY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC1EC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 07:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783669713;
	bh=lMTLiSev9eg5CWWfnrsslmdcyHyH5L16X2uCYPBtnSM=;
	h=To:Subject:From:Date:From;
	b=Z8/Z3/lYQh6r3gjMTBXNgQlgPRGDwKUsoblMmRyieRrdx91bq3A8lefjvelLmXEpn
	 X3tz00wAKMwiJZruJTTHOxs3lqqfqDfipa/otgdG6CqnnWkad88SnjVsdKfn7eY+mh
	 Ocfv64c/XYZF1OmuLTmKL94R77dx2yFNsxy3AGyp6bJY1rXFK0a0VZDR7vGFL9YYq8
	 Do+wYZJvexJ3ZxZTc9s9PfCXwBo5hskLqtUZYKKed0OekY0Zu9tvi5VsyRElVXic/L
	 7Sv32zYBtsN2Vd7A7x7vnWHOhk32NZb7Qz3ufEHfyKOqQ31mZmEEOpRQIJ2l/BMpMd
	 tu5xzSyLAQDew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DCFC44501
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 07:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178366971368.8729.13362166048776614748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61f4cbede06673227683142efa8113ac624bf7576ece153aa294ba8fa929a2ef
Date: Fri, 10 Jul 2026 07:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783669713
