Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280492BB17
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753459794; cv=none; b=NrS1tR+h824TcSpxQlTmQEomxEpddqo/um62NMJe1GTAragTqEFRhdnmITnLaEjPVX9pE6iGoDeVfzuaynpmf8pTmbsk5oDYja9vFMRdAsJJg2xvw/3cBkUBtZiVs3nyMMwUUXJaQhNHiD+n18wBqmPs+++B1yJoVcyd6PZwV5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753459794; c=relaxed/simple;
	bh=xkDq//obV+XisimGHzWEWei1UjYue36lSdpW4Mv1Stg=;
	h=To:Subject:From:Message-Id:Date; b=SMgq3zSvqhWv9F0x5/frRF47dbt52vQBJlYbAryxhsZoN5PXcpUxc7yKKg4E3wRPCM3HWsdV1B7/PdPh0LyFEU4IxR8GJkHnNk7eYcJd1sNGFya4Opizy3F+4gK+FUEbO/Ly/Z38YfNB80h0TMsk10TEv3oe3seUVwoZ2vsIrF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+EB/J+U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+EB/J+U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0FCC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753459793;
	bh=xkDq//obV+XisimGHzWEWei1UjYue36lSdpW4Mv1Stg=;
	h=To:Subject:From:Date:From;
	b=c+EB/J+UVL2RKUmddiQQTngk4soeaQ0G3SGKVcoHuS9ZGHAou/GveITkA0ybGgjA2
	 pb0g8Q7b+wcvifmfspkbF4rT3uaEDd4wN11PHM49GkcRrMqxCqqi7/AVviCYgmJu3z
	 rxKpRqQp6SQGok1AEKbvMna+rB/7Eu1ke29ZLMm4DAcKQ3gUoqw9XWYRl+CpRFp9Ps
	 Tg+KIBxC44u60pq7/sUAXlmBIgxmpit7bO+dOqNkRVyPZnR8HCImy+mNwns53B7OdQ
	 edtW4PWot+ilaC0TpoPPiIrBGuGd2jhjUlSWRzyggHoIl5u9xgJod8GLaF2hsfTJ4U
	 rTLvrUdCCHjhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFE6C87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175345979357.15823.7688667980524223790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beb4d374ea399a64dd024fb0f2d2663d986c292b63b7ce9728a0bb6657477a97
Date: Fri, 25 Jul 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753459793
