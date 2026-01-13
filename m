Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0117933F8C5
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768298634; cv=none; b=JzZoifFGMcgnLUpAARv8FHjx97LC6ztZZO522HxzeE4W6lScF0YB7es4zf8I7a7jgdQJ3WRPgZmlKOa4dNKg6O7luH0fOyisFggNzwTUSlNDkatKYHGAy2ITkChDjrSkz1T81HrN/Y8w+HUCcPysREsjnLW1rRjKmI2/3OMQpY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768298634; c=relaxed/simple;
	bh=J7k+Sy9sVHw8QABLRM0r51lYedA5tfiC9vcI3/BimaY=;
	h=To:Subject:From:Message-Id:Date; b=kFuMJVr4Gnp8hRsUI995dw2eOTfThNjHqPwAayzrB87zGw9uSzocMv/6DA38liymtLnZuo37HAHcReE+96wkBaKo/KQ2uQZjsFrpvV1eydqGIG80rJ36/ZuQKWJ/BSoAw9/BkLyzVbRGMqQ5LQQD4PaAjm0r2zTtj/ivxtvcmVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WZDuAx8Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WZDuAx8Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E893C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768298633;
	bh=J7k+Sy9sVHw8QABLRM0r51lYedA5tfiC9vcI3/BimaY=;
	h=To:Subject:From:Date:From;
	b=WZDuAx8QTuJLsU+FADdIQo2qMyz46aQG6LbgBfDAKvchFM3eh+hOpqfdCh1vSsgHa
	 rGlL4xoiyTiL82m53aUitMQ/ZrJahpXgT8UM/9cVsdikLw6K3Ph7NNrDnxs0bO7hJ/
	 f6Yctn9tc46tG0CQ2DlDsfnYMoYQB3XD8kHGOh3hBOm8E8QBcZXKEnFScQYpx2eekt
	 pGZlmtgvWPpgQHeAr/0mhh7YpKv2iE0Rza+RaT+7fpMsTLgnxi+CoATqyNHzfBD7JL
	 b1AlMh4JZXz/YDE1u2ZJ2DQB94OJl/GFhQ4UEk02Ck8F/oudwBVGCBHBPg1EAcMqZR
	 sa0JzLbCcIbQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909C4D29DF7
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176829863358.10308.9667847045731581063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c2e0458d61eb4918b0493edd4ecf0b69fa2f8297df30becf55e01c49a101773
Date: Tue, 13 Jan 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768298633
