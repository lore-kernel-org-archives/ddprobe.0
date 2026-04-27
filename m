Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289F421FF23
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 16:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777309054; cv=none; b=AWs+GkerpmolTb/RPBdh3/GxygQFJwX5A3MRrhJoxNMhm7l8SJ6fgtRs/dwWEB3h38n4Dn3nxiBoDtfsEuzq8TH7NSVZXMGFOZQL/a4EJyp0tsG1jRriYke3CVJcEXq+dehyTFA0a62eOjOxj6LLRyPm/1PojrnZIVyGtX9kCS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777309054; c=relaxed/simple;
	bh=h87u5lvVpLa4CAHIAq+Pfkoa128YAnIv9fdOX8bxXio=;
	h=To:Subject:From:Message-Id:Date; b=H0r50CGOmf+rXZ+u4RmlELA8xiL7dR9PCF7QXb8uZU1uDc5f4IimeOMnN1mH7AqGHTTA9U7DqWu8k9PJqdk6+kF6t1g+oZchmKn+PuO+FaMUN0PYvNIiQgGJXxgNiFm2QL1GVIKFn31f4YZtMTeEYsyNJ2zpqyx8CqzWY8cV/Uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ju3WziBL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ju3WziBL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB60C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 16:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777309053;
	bh=h87u5lvVpLa4CAHIAq+Pfkoa128YAnIv9fdOX8bxXio=;
	h=To:Subject:From:Date:From;
	b=ju3WziBLK2HKtT5XjRyTuPuX5s/59UwssQAot/9HhUJbLqIkNWos+P3xhMkpqmQu1
	 mjsAsCkWSbRaL9NfL6XreqKtYYWScq22GwEOh7xNdH9RAE4BOSLwzW3BaQr7R3FlWY
	 LMVtFCIX40d9FuBkpd9V8XspRXt8TXaWN0iRcXoJF6h6l103+EDOqGOkNgazpikzmv
	 f72Zg2kKmsy2fUL4NOBUlTeJPAERnIhpN+wlh3EzVh7EgmXtaeYJy4vVSCWU3KSgQP
	 jThqrKinWng+UuWKqU/4YhZ1L8++zVWnLAc2iVu1Y0Im9US5J04NuUjaRzy+H3Okcg
	 YVyhjLvn2zHLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD196FF8860
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 16:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177730905368.22233.10904269529593762256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 031ca134118783955f4a393026361c877e0bd0a7c23cf8c3b7bf7ce24cc880c7
Date: Mon, 27 Apr 2026 16:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777309053
