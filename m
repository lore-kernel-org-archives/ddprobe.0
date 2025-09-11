Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC162E36E9
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757584794; cv=none; b=AHxdsZpbHJeaUqz/QPQpQSzjzhepRrAG+4Cas/qqW07nAqq90Leh+ueVZWxmDKxlzuKf6V/oNzX/UWD3oME7DhVpanZaZ+hoN7cpQq4pKSGWnNe3sKt0rXtLXLbp3TUA3HjlIZ+e7ezBgy9/CLOkrWBqN228A3jn1gtbRc1nxFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757584794; c=relaxed/simple;
	bh=uWV2kA4VURuz1ccPI7FCz9AEW5GmVhbi0qtGfvEuRL0=;
	h=To:Subject:From:Message-Id:Date; b=eYKbVo10TdV39vj2e2EkG3iIXH4vXQ/XjWLpZkPAl4/qCbskUyxGQBf0HjsaFOr7OBs30XElgxNkB9i18Uj1wMQYs2gOhPaxNec6N1tOsx/axvpPflmT0LSg8bdM4CZ3qzE5Jw1gSYPYDmP56DuaV4RZoQFcs6V6LFTkkcMR7co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pE7wkjgf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pE7wkjgf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3946C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757584793;
	bh=uWV2kA4VURuz1ccPI7FCz9AEW5GmVhbi0qtGfvEuRL0=;
	h=To:Subject:From:Date:From;
	b=pE7wkjgfwGbwCxZcDkl6bAHKHe5M8XnDQR1M2q8THiXoWbqxPn7MyX3K0VFIg1XOS
	 QILZFC1TwpjqUUQJHaJLiYNJAq4Ct9n8w8Ci8GGtDXc7BE9+Rk11TyM7yJvwj8DwSR
	 xOOfKj9VCOyfcTw67/JmWAUAoT4K7DZT4UkSiXfp8PoVHOkGKKgvGC36NEary3D23S
	 U8w7ujY5up8HQwoSNjNYkGqec8iCpwp9/Mh+rxlxxWYgUfZ+FnqZdcbIGWApxsUbNu
	 r0enMajKtkFHVymk7pqlUyf6Nxy1hxoYN1QNw6vN6orpwfsFC9ZKefuSZnFByslbAZ
	 Z4T9EcT37WIUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E34CA1016
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175758479360.22913.10775063170466117266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ade65a221dd798e02ab24a3df9d2ea450ba42dabe5f4a43f25007b6713d8452
Date: Thu, 11 Sep 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757584793
