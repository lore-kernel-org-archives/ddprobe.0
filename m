Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210C46A33B
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762866594; cv=none; b=Z+NTFf9VEn8C7rnDGMYA5mHFZ0kInk2RTKsFg+yFBJXSPiLWZcRYvMEWYkGKYlvg0DM+xSzZ1e5UNghGp/rEeJjmVPMiVbDGOR1M6ffXWUbrjSpNdbQmgx3TnOQQ8/ZWnAsYER5nuLf76iG/ExoXY7JsldmB1pZyfH8bfDsAGX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762866594; c=relaxed/simple;
	bh=+3hPAZtCgWXkBkMQf2f3uXLk2Hc5jOHer76QDacnNw0=;
	h=To:Subject:From:Message-Id:Date; b=Yu10IasudZfdYLSgY03b4BH/pDjnXKkmdhfzpIo0j0D9Q/bpsI/9CQfAW3iG8zZ0LbkVn97n6BUrJqi7YunktHOvhcGfrkiIMX0jG5GNoIdCsyR8wJnXccYhwPMmKNMMBZIfx2XFJgD8LZV1Qcp9cLnpZSvnK36GuvxtqJLHvzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NWoT8XAN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NWoT8XAN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DACEC19425
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762866593;
	bh=+3hPAZtCgWXkBkMQf2f3uXLk2Hc5jOHer76QDacnNw0=;
	h=To:Subject:From:Date:From;
	b=NWoT8XANtrNBTtNvFGoomKTFfaxzRW986XMSQMYjbS3m7aotCHkYh3e92EgiQkC8x
	 qnqQatQ6qsi4qfdYjy61OnsQv23VMLSuuF9CQQ1Vx4yfh9gxf5Mi27O/E7b8/CRmDA
	 ZGEpnbKfyMvFvgoXiaSBS12Jt1LgNyw6BX9YT3GgZV1nfXuD35wNMAYkbG0D5qrJ8t
	 hgkoWaUy94QrRU0lyDOfUSoJ8KIUwWWeoW/YlActRJMW9UH/xkM+3JuW08Y0Kssvxr
	 +GdEZIh8ONDxKmW7Y9KvGJLuoqxk1dcDEgCR4SXFlOrkaKkYR+3W6DI1VqYS7KKhps
	 06vWjk7bWxADQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914CDCCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176286659358.26293.10253932780003938668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0751593069c9cc1da155528cf8805fb53ba913876a64fa1a0b13f7e1dde385bd
Date: Tue, 11 Nov 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762866593
