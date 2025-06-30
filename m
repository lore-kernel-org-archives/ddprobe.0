Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273E81F463E
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751264994; cv=none; b=MZPaeYaudvSLqoMYK4nor2FqHwPxxZx7WLau4G76BRIkf2JKAvbco2xEuPunfRBDBvJATTYHCRBoJ7Ia7KaP0FZaH4Ti9BoFjtSOOoQidOWFLt79ohN+MFVVtxoHv8aE9QTjTCc/beTOHdnDxhLBYyedB9VZAkTJYFIjYf4m6jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751264994; c=relaxed/simple;
	bh=y7MS6y7EA9pbjwmNAuJReRNorQnv8VuIqvJ03oBxY6o=;
	h=To:Subject:From:Message-Id:Date; b=LoB8aroSqr3K8Z3JBF+8u+/LF8H7n2tLCo6OU3MP1O7Wq0DYHO3RnYe+8HSt2VXjT2Nq1112vnMboCK4NQn+1FM/ZnLaSZwQTmwLsnfEKIRdRnh9Owv4b4qX2VI0y3qwR8XUM834AJ0ZFCeFERl/1DwNzIXTYsQmcHriWx5vZpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nNRXmWIs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nNRXmWIs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB204C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751264993;
	bh=y7MS6y7EA9pbjwmNAuJReRNorQnv8VuIqvJ03oBxY6o=;
	h=To:Subject:From:Date:From;
	b=nNRXmWIs+9Qv4bMWRF5MtQFnh8CgAzuyx4OAPLwz+uRwm7aTapbK+FwBmqIfPMqJu
	 zsyH6c5HE3f8v798CQzjoCcvq1CEPcdr8CtFuElIr1notJBV/0LjUd3wZZrsGKuroL
	 CrwXlJjFRBky8OtMxEaR2yTr8EpCZsf8k69GwOq/VMAx3/66GDUJqeS+QxRPZsfJou
	 SugmWp8mQjT/mS5zX5jBa973mA+oFWqhMaD28DeK2IqSzONeZ3pB84JWp/wzrvtrO3
	 H8xDT/WQLaablIH9sbW7AsR+ViFEQARsumiEjrhV83Jy23LYmXn8nhacdS1fmcbxAX
	 cnpKX5qdW0sIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99242C83000
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175126499361.1945.11385262909778265156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76b5cd67255c6b17f65cd3c068c5fe59e1c9f00efb0fb2b203f2f097c6f003f7
Date: Mon, 30 Jun 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751264993
