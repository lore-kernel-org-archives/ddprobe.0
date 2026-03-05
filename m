Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C49CC38424E
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772715893; cv=none; b=iK2WePKnmlSQ6o7iTDcB1TqXO2Wv0XRqpCgo5g5SDHgEmgDx0yJyZg+L9fxNily8Apn0HXlrCPumUdQaVi+LE04vR0rzjLQOd2aAw2DwLvpJiaCk+Mjg3agroujmHcOn9Qa19SSDDq1TGanIljXItJpiGlIF6g6BOp3v0GyewPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772715893; c=relaxed/simple;
	bh=VMUMaRi8cKe0GCsiWSyZ5qG3kkAZ3H5QQv34M0eiQ7w=;
	h=To:Subject:From:Message-Id:Date; b=iluaNpsk2xffJij5qkzO0X6L+GO1kyeqmlWxLd8TO+zUWART0edesYIQsZ54m1STNtaPQJHJ18Rs9lBUmjZevCy7O0UOn+IQy/jCGexBKhezqj0JnZuPTDQC9DTMvUdjvGzVDqzLrZqT9B511s6h75ccYicBn/w8YMRHfqS8u74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RfGChb6l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RfGChb6l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95ADC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772715893;
	bh=VMUMaRi8cKe0GCsiWSyZ5qG3kkAZ3H5QQv34M0eiQ7w=;
	h=To:Subject:From:Date:From;
	b=RfGChb6lxbvOHOJGlaodrjipoAqqTo4iJcGsSXe/2p1IRgOWM7+gV0I4FdYR7hYmR
	 apPMsqqS+H3M4GKZlkepLY2ITtJbrPPW1bcLJ+gDI8vTRFQwQS1UeZoY+Dbwd3KsHk
	 8a8zDBZQo4N5Ve/TIijDjG2DXB5HX3YreaiSQaXoo6TKmIinI229lt9PJtnTe5UK0/
	 QO16kMX+WuptiGLE8bNmPiVUbu4ZWNrF5iOKuWQVbxZe1pVjEqttseJE6K9KaTO2Ox
	 BWtsH6r67hi+NyTx/Nt0AQHm88zrMf+9QGfSkP3IR69m806jjSzQW9yORl6q9xtBJr
	 Fgd9kpAbuIOoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E6AF30946
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177271589358.24520.5288443882768932796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab551cde41df863336347bd0e9c32a3a9b0dee09dda68db83607495d70ebf637
Date: Thu, 05 Mar 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772715893
