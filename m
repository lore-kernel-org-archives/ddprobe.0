Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB762DAFA8
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768285434; cv=none; b=kqSrS0vWrDgaOXYB5MBCH2aC3VrYGR8FM5XfaRRfWngtvUQqmD/QKDymfMhv0UuFtfeuBwRcy3EseSxo3OrbB/PBsKaFSVhjUiny16GAkWcI4q7L9zJUIvviZ4UrQv3whQbNuYsiNQXcdBPEKHzOdI6a25mdfGJPNFe8dKM5Q0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768285434; c=relaxed/simple;
	bh=RDxszIjOxKfeSeGYW5gNN8UrIGwNKuL3BgHuDKeI6fA=;
	h=To:Subject:From:Message-Id:Date; b=hntoVFv/ZT07pnviS10FarFgNTGvDpaEdLkaO8TbyO66ct+mV+YKYkx1T4WEhmyMK99ogNaRIBdrvGcfZEG/l+gI75IbHniiDv295H2qkh8gdy8XxBeMv3jdalTK65OX9atciz5Hr/eARnXkO8maRZ9m0gYgOIDI2WO9Yzsulak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qLjulfbt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qLjulfbt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB68C19421
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768285433;
	bh=RDxszIjOxKfeSeGYW5gNN8UrIGwNKuL3BgHuDKeI6fA=;
	h=To:Subject:From:Date:From;
	b=qLjulfbtlmUXcG2Y3gs1ywjMBRNZLloLb91q7VXMGB1ahAbKqSXe+AnQ8d7nDx9vm
	 Qt0Kr9yj05M+sjz93qt85d628NsdiQ4Vn1AEVDpFr7+dBINekqeqnNo02Ip9dTcnEJ
	 D334BKNlg251p7ulHeo+u2ZTj25oyDNPE/n/1nLVilavmBhcfvKqmTl+eeSHwlLz7e
	 Rqpg3tVyfOqfI2CWw+UIG2AJrBlnfE3Am7Rq+SvrzeiNq/O1Z6+Mpv63/SYa7jztvA
	 I4Z80gmP8H/QTwWPjADaxnNgc49ltywAlK0W9T4SaXQyEeF9ovL9Z8u5LCbxx1ZbXN
	 7BTW4xac3j/Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C068D29DD4
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176828543362.7040.7611776196482068471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac62c762b41d571d63d812ae9d046df21019203c6e3e9a4d61bdd33bbad6b540
Date: Tue, 13 Jan 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768285433
