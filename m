Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A475331EA8
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785540034; cv=none; b=CdJpDKIr+z5NrSOdWG71t7ZOvPmdAltVKn8AKlkcvNMXrad7PXtEwuovhsvNGDL93hY1j1wA7Gk9LBTuXiLXw49isc4ErYwPWPvGQTjSN1FLVk6rB+6dEDCeyI1tBIdMiKFFfh1R26JYmG4pISaJbCr5BGAsBJHidoHtiOHybMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785540034; c=relaxed/simple;
	bh=F91+vyKgJJX7x7eXomFRJOFwyzWiCC3iIvXNqz04GmU=;
	h=To:Subject:From:Message-Id:Date; b=VnHmRqZLGY+xND3GoaK+YjbqC6qWlBoLdpzLcWJ0zDzuOhmq+guxY+zipCYn++HhJ4LcWaCOVR7jUhQbHdquPQ+arPbHFCmu2BI5h8QRSRLbSMqFoNj/SswkI10Mu2Y5X3QxiW8SR3eiHtUmzyrVUqAzUBFBE9pMkX7qnR22nYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4M78nhc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4M78nhc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8AEDC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785540033;
	bh=F91+vyKgJJX7x7eXomFRJOFwyzWiCC3iIvXNqz04GmU=;
	h=To:Subject:From:Date:From;
	b=m4M78nhcq97FV2mILJvgORNUlhEg8B+StSNk4DsMHatJZA9Ct1RTiDw15Jq6TqG2q
	 kenvfQDpX5sD4fKd4QOADK9W971iB32cJb2dL0ejDFxXA8j/D6ytL0SRGAeO3ZHk2G
	 FNGC9nhgxTRX4pYVOWQYIhWZFgzDQYQ/JtOjlHsuobr72lvzmtbgWSJcrWOlYfwas+
	 3pMRwU3rE8trJx6YhgWdVX+uQ12hS/0yIqaK+1ioztbdol4gDOporrC8w6tYLd8rzY
	 x2MhKTkmPlYimDkkdvB2xpvvaqih0jP26UOSpIek3S0AucojaAh5MIWBjlF7BLB5fg
	 lBaU2EjgHLqkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9F6C5516F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178554003368.27735.7795572627052760054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e296c20c3664e2b2940481ad9b62ab6b2a4b989552eb49b075800fec478eca6
Date: Fri, 31 Jul 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785540033
