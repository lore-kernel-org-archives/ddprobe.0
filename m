Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2213037F304
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785131434; cv=none; b=QhhTtMgSFL692hwmPf8xNqXcdMn8RVB8j78rGIHub13Pze0rJSbiDKC8JP7QYEEBoQd3KvnvhCMxyVv8racvaqnlGGSFBAExZTS4PU8hh18yY32+lkj0WCxwVJKcuO/8Py0kLW7LayN0QuihRBj7NjpTGVMK3gIxE7QM1KVxOkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785131434; c=relaxed/simple;
	bh=nMkl51NjLNm+xnTaMI8/Z7PpfLhIuUXfUf7iR21gJoY=;
	h=To:Subject:From:Message-Id:Date; b=KCHx0//k/plfq+MoR18R3P6g01hQI6B6X8UwFXiWtiN9X4Wqs6COfWvaWfLvtlZ1IO891y6w2pcIzuYcn48w4avXgjsZvzZT7tAjts9MNXul80zc/H46gb4IhWnsmN4Ifp1iTasVB/mgmvkVHZ8h1d/Ose9CKn/I2UWLYaEf1kM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nw6ZGIXw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nw6ZGIXw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C95ADC2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785131433;
	bh=nMkl51NjLNm+xnTaMI8/Z7PpfLhIuUXfUf7iR21gJoY=;
	h=To:Subject:From:Date:From;
	b=nw6ZGIXwBVgsnxbnKgD/zdUJBbqomMdXQy8vVlSRnRwaRm+G+TNrgRYzG0RVBg2ai
	 MBdhaoV+lYXMsDTEO6Sf7fnRbJOsqNxXS6tJG3nnygI23UiOyWpnfAhgYam2Rqls5X
	 h7uJEvVT2JAU58ibKMg/znUyHqoWGfwbGrPsgYw21j0Cw8alGaXrHgY93VDj0nj8H7
	 7DKQ3xeemhStMMYyrVjBMlqBx2+Hqb48ujrBRFEUeXd3R578V+pChMG5fNdvQlwm4A
	 Akzv2Qhpwdz20bCw0gG/0QV54U414WPAoqGSQJ78XX9wCAJWHszY5+Io0P51G1zUgy
	 Zq3LU/HEVcTaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9241C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178513143368.19522.211444648294993860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de0a930129abc9fe263e82e13f974d32537c40eb322251fe8ea3f1919b1f330c
Date: Mon, 27 Jul 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785131433
