Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0DC39182E
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 03:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782790114; cv=none; b=T40NeLWR+gL/TsNoBir+jSw2S12ezRMekZSJnD04ogwTJNNTms0YrtUqG+7rGNFuzXHLezy1lAykd5OCpugRY0oN/4mH+xziNZzacA4VYbz5pb6x/ORNXgVMDhFGKIrO9x9ZsqVOtk5D0xYCW4V3InD89nWwX8dYi8mK6sUjxcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782790114; c=relaxed/simple;
	bh=mLp2lKw629bsap852jPFE2kc1NhOYvb3HM8+hQ9et3s=;
	h=To:Subject:From:Message-Id:Date; b=gesB6BhwicScja4VXeFgVxe7eCWR6C/csCBGuMJh87S9esGbWvk7ikTp7BHTNr7YJMnfk/s38OwRBFFds1PX7Q27w2gS6tg7TteHgbt/nKhthNm9+kBCpVj9A2DCDeQm8FBDiIgV8RpU6YxosLU555+7EvBnBJS9ddIqwY/E65I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BPv5FSYQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BPv5FSYQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C66C19425
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 03:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782790113;
	bh=mLp2lKw629bsap852jPFE2kc1NhOYvb3HM8+hQ9et3s=;
	h=To:Subject:From:Date:From;
	b=BPv5FSYQVchtZSDgpr2OqMSUofctUpdLEJQWeX5/Xne2KyqHhZdSqqK8Ex1wlUEdC
	 MoJeD2xRrJLc+0XxZ+rdHdjw2WT6JJ+Kyk9y69dzj1diKWE5OEoj8oRj5DEdzJijPK
	 s+/iA1YQekPp3tR8oxP9GgljggTcnnQPswd15fhByqHichs1J2fwvLGu0B04CmsIjC
	 2CAXrM/Zou3FzhjAjk4Bc/uGHywpKuTJbFVegfOewWIYktUM7IY2nFWkCK++kCEgLM
	 HhTwyn1OcKYKGZMh8WlerbpggyBSVjPJPxy++XX3umzvq2nzrt5aUPzUeivSpSh6QD
	 EZxY+2jE5axCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D5EC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 03:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178279011368.7654.15946082297488216101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b43f20879e3ad732640d185ecf68df91b9de20f02e9ee06bf59d4098bc690ba8
Date: Tue, 30 Jun 2026 03:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782790113
