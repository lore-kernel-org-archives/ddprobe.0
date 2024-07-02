Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539D112B83
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 07:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719904523; cv=none; b=e+3EVdUsHMu+MPx7utV5t76GusHBQr34tHkbs8fLxUuM78PhG5yBzDlJ9NCZqeeDhHHOzQ6YZu9PTkk5GG5VBo9FQ5q/8urfA9R5a9TT0ZoOAKJJ305Zxw1U3gB8hBgVIp2yefiuCvkcP0MDSqLYYJVPLqlO79dxXsXRiq/GHto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719904523; c=relaxed/simple;
	bh=GhN66KDJe9Ld5WytT428Up2ZQhK6dJKv6IzpVC2SKPQ=;
	h=To:Subject:From:Message-Id:Date; b=W3jvXcW75zulVIjlNXz13PfnoZQhrL9nypAaKDPUQdY+tJhUJnBZnMnR4svMqH/HI3kskimKuvDHf56mGqTl1EeiJ72WALmAs9j3LlRs/M66A8dCN7c40NobSjG21Mm8oCWOutFTS601hb3jypjI+b9YfUhI8nAg+wXBDl00jRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mu9WSpC6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mu9WSpC6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6CCAC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 07:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719904522;
	bh=GhN66KDJe9Ld5WytT428Up2ZQhK6dJKv6IzpVC2SKPQ=;
	h=To:Subject:From:Date:From;
	b=Mu9WSpC6nzZrmK4d5W5iWCw7djTc9DySDJyXp/SwPYPGtRnmduXGtmMsWFto4qA5A
	 fxyhHy81SaEK2uhGp/C+GQuthxFTtvq7kQ69gT29D6scUMq9T1ZEnGKw3q+eiYaBV2
	 T1+dE5jizCsfp3jLx6WTg5LrhJpy8gGffDGbZEXkeKwwW7qym5MTVR2tIq5WOfIh2i
	 bmaqLb567KEBv++RFMy3+Y246iyAz6k3j5mv8DmGNVW9nsIVI5Crgct+tir3pJkfEN
	 +72RSCwGqFgCF8kaRK9mLzcUT6D8Gz1BviaMYneGDFITDRI3HDq8dmqnVYtnk86vwu
	 lP/frGmrcLu6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5DA9C30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 07:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171990452280.17481.2523089164203894465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a244e1aade706f337ba8a553c0d0e2a1db581e36721c97b63cf7497c92785ecd
Date: Tue, 02 Jul 2024 07:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719904522
