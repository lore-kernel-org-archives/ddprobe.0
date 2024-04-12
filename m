Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA0733DD
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 02:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712888363; cv=none; b=qwXjxNpbW52Hkq5JURJmcplkhKAEs/wdsEAbLjoA0iIu2ydURok6uKmRJvxk/sQiOjGa3IqNAtCfDwKqSiUXqfncpu5mtIzxKJSg1BjTlXhl4beMoPdkkQAwA9WmQNFOAu1W4qd+tES7b/S2oZhwOFR+Kkpfp6VZ8GT/NBseGvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712888363; c=relaxed/simple;
	bh=u8RKitI84fm3to+KgypVK+IcPSRBZpXM75FFWRZEqjc=;
	h=To:Subject:From:Message-Id:Date; b=Q/VUmH75l9QExI+8s3QhUNhUHYNYstirGqIi0NoP3Q+BgFCX6NOM2Ya9NPO0DLWzXdQf0zOyN2oz6n3CK7FpwlndcZKyfkw/fyak7D6APmCORadq8gh/ttPrmNmPyJCMAOFBoH2bNaOOSb6ijORPaqwENxIJrD95SR2LMMSbG6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SkueUrsE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SkueUrsE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49A3C072AA
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 02:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712888362;
	bh=u8RKitI84fm3to+KgypVK+IcPSRBZpXM75FFWRZEqjc=;
	h=To:Subject:From:Date:From;
	b=SkueUrsEN/6JvuQL6g44UHTR9JhIkMpMxKbS1MlFwfJI/nKJNc7tIC2uJDt8cwyNN
	 doV+8mAeitoly5UFf0E3FCLBqz7yk5RR8SeBQ7hMzqKJK/t/XUStgzBDk4cCVvgcMh
	 Bx5ubwHNTRSMsZLw7vc9ar7OVoq2dbCwKPeERvc9kKbWO4wKinJ6rRa0cKdvJUaRf5
	 SXUj5P9Tmz5TlgceuVSB1jzCz/5/w+ANn7RYw4B4uI6JeM7P9+w86ugmMfsgY+Zll+
	 gMNW5l1L30frp1ARaH15U6qyOvdkLbTw4ho8y43LMu/tu0N1p84oXs571KVFgclY0u
	 5WUqZbYa65LEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C37F0C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 02:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171288836278.4790.8147470267422317636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36f5fefc55f4c3f583991b5664d46dfbcb76b35f6505c7a313b41ae704797444
Date: Fri, 12 Apr 2024 02:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712888362
