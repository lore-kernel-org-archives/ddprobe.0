Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FEE1EDA0E
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 13:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741180734; cv=none; b=Eqq1SRXGo0eaMdwKnzGdwE4P2IOJW1/hDYNmZVSAq3kf0jrM0BINAGmCZbEc1LQMkLYuHgeYGXpTCIOUcF5HAA5xb2NXGDIdIjXEYfXHEdtdIdpFqo5MfMCd7n31dZkieuwwRd90S53+JSoJxr/nwmKK18+C5t478F+9WtAClgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741180734; c=relaxed/simple;
	bh=EF6hIB5s1G8ELdMnaVeUlj4Dx/go9uiz3xiBKfRizD4=;
	h=To:Subject:From:Message-Id:Date; b=rwcucb5chj1B1BgziW2lpkcpozw7/yKdQSulaDZsuRBnW5yb3O1vTvughkFDovw6lrBlCId0e5HHj2qDgaLFRIQ0/p8FF/95HYeFLx744gvpR6nPa+MFU74eToLo4T0VPEGpXP+95SrcZsYfBHMIAo+fw7dB8r04FdvIVG/GRe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iltPruz6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iltPruz6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BA0C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 13:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741180733;
	bh=EF6hIB5s1G8ELdMnaVeUlj4Dx/go9uiz3xiBKfRizD4=;
	h=To:Subject:From:Date:From;
	b=iltPruz6D6CThXlMyHij7n9bOKggtdFnfWMbjUoYsj5X8lkWwo/LK2UPEern8TUez
	 otmAzgKMZvoo17wO3ZNWVX1OCfUjS5EEk4Oi5Sttz2BmFoMVndt+SzXuOUjqMoSTzl
	 tXJYTZ/8ZM5ybYIg1iwfw2RZq5wABfL52ER6hl+d/+5PoTrqPeXeYPxjb04hXwB9LV
	 3zWgCbcTjH5prUJxsOvAuCf5/bc85zqcbsV7qsx7Gye+FKukk7KWtKftXHiEQjft8s
	 VdBoBWAb4vErDtjDmlwkByJ2/9zrSBiwC0YK5Gz/paey/dWOO9BKzd/zu/S25ko20+
	 LgCA5DIMdX3Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C7EC19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 13:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174118073359.30450.14247351968910361910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fba4b114e0255ffbee694c062d5db8eed78e70d49949cb19a8d095b45f24b875
Date: Wed, 05 Mar 2025 13:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741180733
