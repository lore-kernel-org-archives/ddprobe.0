Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1EFD17B50A
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788474634; cv=none; b=PtvPx9DQ4SbrqSjYAcO5bqFAlJ1ZGETBy1c3QyDv35ipEfHQS1UQSh48OhdWk/7lugbZtW1o8ay4qwX34lIaEITTunqDHvi44ilhdyV8gFm+N43ZdYdGXjTQdie5K604nCKQZiELWWQHjBk7FiBQyfbt/cmL7kAc0oQ5PnWnh3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788474634; c=relaxed/simple;
	bh=Rhb7K12HEWPbeJ+me1NlGlnLUZUpSYo8sGiRVgFErhE=;
	h=To:Subject:From:Message-Id:Date; b=uGk9s392EBd+nnvUrniIO09gpCeqCxPgJQy/Qm0nhP7GvmsDvsSyrXhlxef/xw6TXh5F4oa3ZDu9COc2CE2ettOr2sWRP2RCb5YG0ctcGurdCwe89UAADxtAaZfz0NjDmIosQbWI8wKANPf25q+31ehiBKar8X47/AMAid18TSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4jJqGC4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4jJqGC4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E42EDC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788474633;
	bh=Rhb7K12HEWPbeJ+me1NlGlnLUZUpSYo8sGiRVgFErhE=;
	h=To:Subject:From:Date:From;
	b=L4jJqGC4P6OJU4ayp9MUCKSYOYLmpVzZWHzu7/FP3PjV7XkoZefMck9wFIifRqt2z
	 U/bXeK9fP4YwBGiin3WqC9oi7EOgDS+TiCL0OdDBpMsi3bsqfAr0dUkCsCDx9AjTg0
	 OtpThvIOQio9pl6eN8G6+32aHx9MwuQKqKfcevoeqsz8DUAI3vx48RgH4tba0HWQLT
	 wif5MbFWx5/7plgg+PuUwm7YVfqj7UxoREE6V4nxmeaMPl+UwA9IuwxRwF+RUDdDu/
	 OgSg/UlHhJEqgJBBPyUqHVJAtqxG2CdoX1H7fWUCKuYNrkGVbRQa84ScVxk2Jm/369
	 /zV5NeArJOEGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2FB4C61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178847463369.27447.8913548918334575372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f3fae7aa83447f1afb7ca9bc5e5c70545189fc0ff495022e5af84993c415e08
Date: Thu, 03 Sep 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788474633
