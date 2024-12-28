Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15ECD382
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735408554; cv=none; b=JZEtvYxO6aZ+/aVZGajqNXmyaXWT8Agu7QhOHRgeUoi85YiTRP0a/G0Ld+UYuJq5xg3wW9NQESf0VZa2agD87yk0OhLAlsWX0Qp1tHKh6+xU2T/2Mca4sBoOMiaar5isIza2NT52s6T8qg0e70QQGczF4QQsQaqyaR9JMNUKeJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735408554; c=relaxed/simple;
	bh=DSZjAhrPB70xlf20RQ/gSOACUc3ha0vdrfZRfQ/he5Q=;
	h=To:Subject:From:Message-Id:Date; b=ec4fOLloL1XDIlEyXPosWzmLHoFvXNZQT6rZdojGt6ILBBUbt8jcd8d2AUi1N5B94lRzHA9v5fv9dd4FSVWxj9CV0oaBfrsBcSN6FPjA85iKnxoy7LdcFFcBbEYcCzgT3J/0g/k6NLKvZAottgWoJ6X9KeZma9fLeXdpfUS+1Gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k/ozZnzv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k/ozZnzv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4316C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735408553;
	bh=DSZjAhrPB70xlf20RQ/gSOACUc3ha0vdrfZRfQ/he5Q=;
	h=To:Subject:From:Date:From;
	b=k/ozZnzvKQlVz4D/8fY1AQF3sDlazHfmUb/lehoZmdjDE+Ga0XyZfJxiHqTQJSJ90
	 QHK2fcuctXNwRXvgy4NQbChkfdQ8k9wUsZCjHMhwGBCCSaB0kiwnRooTyL558unb8Y
	 Qa5xe3t40VcrO9S1OGDsffJbL0M7j04f7tAsa3XDBqXfxtQmwC+R04AA1ePdDthlad
	 oe2upOIA2PwUgHhAqIN5BZhLOzLs/iDHCqXyXlfA+BlUEtZFZubSiHpSnFC30oWnqI
	 GoV/oVlzT9oudwB4KICKuI3yA3TPf9y1ipMnUyM0EOUNw87EzljCet7UPU0NMqjQmQ
	 9fMaecMFWUl1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94754E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173540855359.22679.15444383864165533805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab9fb8853745a86f8cd4abcd3565fb9ff438db562bc4a9ca6555143ae713782f
Date: Sat, 28 Dec 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735408553
