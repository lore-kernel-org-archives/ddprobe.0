Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4110D212D6F
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737554154; cv=none; b=MHbun3ggXjlfPDVfLIMqh7KUZp6yLcm/QITdClAVhhWCPwbOoQwczjKTgJxKdHzn7aAO1+j7Y86fMxFAn3WXCZpsfCPGXWxz1k1JVLFS1jllNqBRUyyMoZU5pYQ/pq4ow/t2qOKnanaW4MX6TQDtqoD8IHPFuktaIxKEAMqYqBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737554154; c=relaxed/simple;
	bh=pVLeZuqWRmOj6u0r2xcFZfNHURtYYXUbZv1W9z/pMNI=;
	h=To:Subject:From:Message-Id:Date; b=KcVu2xrEhV/daBrit7QrRRi5E94ZZZ+enHnU7lMcWItTQyUG0Iw83qI16K1AIqt0ReDRc7KXm1zXxJm/XbAb1SglkdJzns4ko4eCUvvk6gfhtI12znIRRdq0gfo2hQTU5F2FjV95Pe3G5M25FSzY3kxjxNU6Z8dFGIIydt/+9oM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AuRZqhge; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AuRZqhge"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC68BC4CED3
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737554153;
	bh=pVLeZuqWRmOj6u0r2xcFZfNHURtYYXUbZv1W9z/pMNI=;
	h=To:Subject:From:Date:From;
	b=AuRZqhgewT3WLId64f9rG91KS7TBzxQr+VX9MolsXSCLkPrfIS0c6JF3eOkc6ehV0
	 xJXdIKj56PA7sHP6Ivl9KVvg8wcol2AOZUv57l/fhGz4vIZLHiq6M8VoYvkNS50HyK
	 LbZXSCWeyTx74s7QMbFr3uPV7Xg6WVbfc4Aaudm0izrMxeR4QfaJ79PBUsqDlwFzqw
	 dqu2AwJVEJlZ4GpytE2RcjONSobuC41/sFRpGULoGNGYi/ILoiGeGDs/uuF3g8nPKK
	 Ms3mD6Q0OT57mGmLf/7yjL7GStfRuDyfeE1K+AF7iApSUVDlJArqZotwvD4qHmqz6Z
	 m1tGlXjMI9/eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965DBC02182
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173755415360.25164.7670507325378856249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeb10d25aaee215c5e8e22735379b87aadd7976ac02bd91508b5ed1d3015d845
Date: Wed, 22 Jan 2025 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737554153
