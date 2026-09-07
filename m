Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424EF3DA7DF
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788792635; cv=none; b=MMK6G5B78nWwVZWYKGm5i4CZ0eYxPwjwwkEMnDm4tKapfmMAXX4UkYIjtiXK71KAYFKJYpVuPzKbUmrNNabLMSeEhsaNc95UJPJYAAnaouN80rOCjh74uXo0IFzmWVxPh3MfFw2WuuvIxIdCwXhqnQVGRYjpNLTeLAfnAWs0g/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788792635; c=relaxed/simple;
	bh=LiChy5ek+9xXnxUSaqEuKs5wggsif3omvfzRx2L9X7Q=;
	h=To:Subject:From:Message-Id:Date; b=SEHU2Khg7PfZYfb1wXx5sLGAnJru4EGK4xkEhZhNVGSp+nEuXygl/HXJZmSpKBJCU98FPdrHw0U6p+N8EYilkBaXtKuV/qX7uEYa90AvTYd3f4qwskDIPKa1sE6EE1tiS2er8TusilJpfeTolC88fz+BQ2QB1Npy9nOwiOQ9ZBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=inB/VWU3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="inB/VWU3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F19C2BCFA
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788792633;
	bh=LiChy5ek+9xXnxUSaqEuKs5wggsif3omvfzRx2L9X7Q=;
	h=To:Subject:From:Date:From;
	b=inB/VWU33byQSyptsDw1TL9jRywAQ191vl8oF7hLRAMWE2/1ynZaTg3sbKmGmCk+z
	 ukaR91vhm+VPGBmzZYi9LuBoD/cDYsOXY3AU2kzWK1wHn/Ri7eA49CyMqZSASlz8mj
	 UV7SvwqMOrkW1Tl7Z5pCwloTYa4LizzExYfx6fkcBQTNOXijYuU+7iRFgxFN8G5ssB
	 0UzXhbffhcSA53ejx8RFnEJNNmPFVqV7CNI9UnKyP5FUB4Fo2gFlQ6V0kiNwbjX4bb
	 Reavoz2huZrZBijqFUOIPAZlshnRjI7DwY+RR94G6DgrYQxf88sHu45FM9/tR/zvgP
	 iUEIton2Fxa+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FB3C79F99
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178879263371.18183.5373461181908012899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9dd589392c429e8f60bcd4a3841717111d3e3b7dfc24425244205d68d7b17cc
Date: Mon, 07 Sep 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788792633
