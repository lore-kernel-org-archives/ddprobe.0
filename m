Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D613EA76
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 07:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719473663; cv=none; b=os1tQDJ1NPl2ZGYkuGJxj934fXu4o3BTPiUt5TPQId/glXRS8P3HjZGCdaQzmpACmvytupZzZ97cJ5BSkuLXGksDInh/UgUBoOHqvTVM5uWU1qA5bsfcYo7Kv+qmBnlooIDXQK2b1jrmZ/zoN8ho3omNG+m6eMu0TV60NvX26Jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719473663; c=relaxed/simple;
	bh=j47lGBk4nqfe8bouJOnTRduD2zNF/YoGYhTd4fh7cMc=;
	h=To:Subject:From:Message-Id:Date; b=TCrH6OryKiVkvm9y0hRt5fAE3ZgJ/ZyvrulaZ6NnN7TX88eXmgTbPCuCkpvqtMQEJm1eTD+nHaO/uNMX6J4gvV1YE4nkM/GnqsiFhvgJIKHVVpSsDB4aSEMoyaEHjBnGLgAgCqCLspQJGkTFsc8XRKuBVyS08pxeQvVPiUwVwRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FcViOrRG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FcViOrRG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D88A8C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 07:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719473662;
	bh=j47lGBk4nqfe8bouJOnTRduD2zNF/YoGYhTd4fh7cMc=;
	h=To:Subject:From:Date:From;
	b=FcViOrRG2VbycdnoYgKQxtsSBop8I6+KmybRRfnRYUopX2UaWQeg4N3KNrS+Te/Qa
	 mr4yPjkrOEpeuzM0TwJWZl7Z7MafAxyR8RKxXcjO1WkobV3I+cYO2MCE2M5gU28sVK
	 HZPBiAnhNYbYAmmwtqxKaaLCNoYpc4EBdKy1qRDJQ3LiEtsasnSDJj4oPy8tmUwnwB
	 p+5Jw5WIGzaI2ANX/SEPelw0HoW80TdpNRFufdEZAvJGa+5NnO1Oo4aci2ADTIbdIr
	 SJarOU4CXnos3lPTNW+lMQTf0x/eV6cfoES8uPX0mSzx++Jp9iA9bkjNkTUYCUIQmF
	 wYdD9xq/zYjtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7B3AC2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 07:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171947366278.17407.15115869785152821937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 442bdab1e6ee9a3bb3c8c95a6b029f5bf3e1ed79c3a61be45e897cbbdd1ddd66
Date: Thu, 27 Jun 2024 07:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719473662
