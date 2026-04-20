Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312401429D
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 04:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776658654; cv=none; b=cbk9wclVRbQoJKVXawmPzhNFFfrgQ/sGhWhBoVguUSIzhYHAN+OiUj4cmDtuhueBEfeCp4qPdqkrxGBAfB8vTGkcjTX34RZqJcob5wfcYwYMQcBAcLxykxRhPb6oZgKqT/F6N54dSj9q5gwWIbgqjYb6moozS5queKzrQyhhels=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776658654; c=relaxed/simple;
	bh=MOwFMv4TN9Pvn/BKYT0+Mol+Wjzv8BCMRdh6fcCjvoA=;
	h=To:Subject:From:Message-Id:Date; b=fxAUawVKomQ8sZD1sSugTim1KPHH6TJAwfKQNLEucxaYYcl0o4HyHQg1EZ7A1b+Pda4zIAUfvEn8HmC0hag5CpXRIe/auIPKq8wO15Ir9SNBVaa+aUd6Vnto4+TK5AbWEEP0jL4PFL2i2Y3gE2sJqcd67KGMa0TeobQkQNyFSdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GOSxJkhA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GOSxJkhA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1CBFC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 04:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776658653;
	bh=MOwFMv4TN9Pvn/BKYT0+Mol+Wjzv8BCMRdh6fcCjvoA=;
	h=To:Subject:From:Date:From;
	b=GOSxJkhAjdXJFjOloKj8v1Jw8xb1vPASWRn9E4uy1sWv7eaHz0Q4tJrVlQpaXTixV
	 RJ3FZ4P5PBqL88t4QTykKl3z7/6+gZ5/OpfO0lr/d+C+p5wsQ/KE788XFHEgAqfjSf
	 4d5EKny9ngzv/v0NUNCDF97kvpqZXEGd2hXDZWbIGZ20X6I80v0mHHCrOY7M3m0KWw
	 kedg2rnHkqCfZnBMs1V/g9m9SOrV9mppHU/QD3ZGDIgkxs5p+nONMs1t5rd13iHVxz
	 y5JOYek6DAUZiQz1ZhbQty383Fo3W7bWACf3BtUdMscRJDv/sPaIkidPdCd4EJXpd/
	 YEKCWrTHa4/lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E7BEA71BB
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 04:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177665865369.3514.11392012721792919263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eed8812dd439d7fb112126236b5936a24d5f80c41efffe027ff69c78c8a9ff97
Date: Mon, 20 Apr 2026 04:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776658653
