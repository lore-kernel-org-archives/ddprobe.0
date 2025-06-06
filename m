Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF001E231D
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749244194; cv=none; b=YtWxvel+ps7vFYo/eS18wPtUITrvac5B4Z7asO9XM2sv3Yy6reis0f+oSdCcqC+K165t8rn76Xtf9UZsMt+sfZPoqmiPnvqg37an0iqVNYGS805MXTDgU8XfQjaq2NFuRUuR+y+zuoXKGtMk4mDveSUKpZAl8/4cXknRW+iBDSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749244194; c=relaxed/simple;
	bh=2ZpZj48yQSZZlZauQo4JXX9zMJAFcI3wFbpvNd5WwYM=;
	h=To:Subject:From:Message-Id:Date; b=izzQiERweT+5nnxZzE93jScUdn1WmhkMPKc3yYp6p+Em+O+GDjxNOh8gOVddbDqhb7OPFDRIrBs3asX+AQQ2TA0hLYl57wc9tb8K0mERHKwMQ6Q7bHM1gBBY9/91Laq8FS8KRCa58gfz7YEyhMo/yHHiMEksiSXJFFfW/pW8E9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LRoxl3nB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LRoxl3nB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFC0C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749244193;
	bh=2ZpZj48yQSZZlZauQo4JXX9zMJAFcI3wFbpvNd5WwYM=;
	h=To:Subject:From:Date:From;
	b=LRoxl3nBs/w24ZJOoDWQ0tcnKbOAttD6egWyHQfoe1zYrLiJU17Ulu8XhbTDu6ita
	 BiBZx4gwGn4joMiCB4BsOqrBzxQP7y99Js7D8BXTCgrXGGNH6RlH81oMEli6pCPmXw
	 DliSTWnJVzW+tXMnARrmVWIlPLY1OG2SoZYWPPLvbkRpeqnBKmlW+s4PVq4YjpygWu
	 9lPX2Z10OYEzOroePrNIXYlOU3oQBsBvEe5OzVvtL5p7o0dIAQFGsn3D9NQHLVx1X2
	 T6xPNzExS42wD9VSfcEX3oP7hZmaY2z2Xvmd09v6YWPD2z9mK84d4CjmZuch5Nngbj
	 /eo6i3YYzvufQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A95C61CE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174924419360.2196.281114201622537059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a58c98f03b98045b2aa6b58e8284b7c966bd9f8d0d4c95645668328350510ad
Date: Fri, 06 Jun 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749244193
