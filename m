Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7E2227280D
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750540793; cv=none; b=S2gFVhFd2J0uboYuNoD+7w7yzEv766+hDx/S21P3ossX4nBu9Z3upl/W4HDgjaHGGm8mMqhdvcwC4L7YobOVgB0ZiIaZRYJofbZaibTJ2ZEvBrRsbwP5PzR3ZoBZENJhIPsZH97sHjntWOhS3TERgrpTG1PWOeGPKvCc0KmHYqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750540793; c=relaxed/simple;
	bh=Nd0YfiQpsocK3TBSRbu0bYic1sPs1ISq6Gt6pwc6DaU=;
	h=To:Subject:From:Message-Id:Date; b=A64hETl4DQVS1b4P+ghY8fYkOWurOyUMedf+zs2de+5i1DYTxgFPsngT8Hq9EQbLd7LX6gLc7OqDqeSXlc0Sw7xYcmMeHdAfp8XQg+19qp5+Yqdrhxpe61rRNnkbb9s8hXJ/PZ8/C2yCgRzrzN5DURMeHohXlPytOxDDwvX2n54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/2/Ma/5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/2/Ma/5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D87BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750540793;
	bh=Nd0YfiQpsocK3TBSRbu0bYic1sPs1ISq6Gt6pwc6DaU=;
	h=To:Subject:From:Date:From;
	b=c/2/Ma/5YCGmd+I10yXEiXPDXI4wyM+VyDZqHepQsh7J8vQqbF8ZdwfQyZ0OmVt2i
	 LbQITFQ+2noGBovOakQzYCOouhfCOJ05aoQ2lFGqai4zoWr+wOtLQVz+v998whxsS+
	 KKl007T+jCBB15Ei3t4Bx9m54F+QP1yvwVpdfE1e1jg6IerwyRjNCa6/+NmEe3McbG
	 oZQZy2/IL6x8tTBlTke3msj8YTcPftkZXIpPz23sjOuzEgE+jc8t81bVtG867cO4AJ
	 O1n4qitJXYudYuYhz2lLoixUUMl3XkB+r2Uw21wXGeQ8F/8ozdNzyO30CYD8Cwhn+l
	 iE+dCmOPQmpDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3ABC71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175054079357.11098.11850595821724714690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1dc0e96a863d504c894257bb967af2acf971aad8c3f7c9e51d7ad14b21c012d
Date: Sat, 21 Jun 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750540793
