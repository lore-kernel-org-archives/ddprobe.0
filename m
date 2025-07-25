Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0C0246326
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753445394; cv=none; b=m2qQrYoYr0LKCd1PngL7hN5fbo/IT2LPUpBj8doRne5Kwg18DIX9r4ubRZK4MKVN1myKz3AHEgWJUdQvBUCa4oSrbl3tvmd01F3N1dQy4xavbr6I8NfyrqcQ/1vDlpxJga0F30FXIeCmKd4FdfulEsoQWsaKooy2OT3c/kgaF4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753445394; c=relaxed/simple;
	bh=Z0OwYRnuvvTR2MWfo5snw/0IQSdbfr7+wK3moSj+D+8=;
	h=To:Subject:From:Message-Id:Date; b=rwN6nx33U3D8jIFUtTsth4+9WqGeNMoO1FCrTVtmC4uqILH/HKYeL6fUTN1FYZlB+59Dmb00SiyOR01K4YvwWOOpHEuPfE9zgy1fZXX2hyN9R7frPzaKlidF5u4CzmRnwBSsE6JcqseqqnyqIH/IEyvW3zIVa2kmZhVhf6djVwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XbuLDJ6h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XbuLDJ6h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1031C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753445393;
	bh=Z0OwYRnuvvTR2MWfo5snw/0IQSdbfr7+wK3moSj+D+8=;
	h=To:Subject:From:Date:From;
	b=XbuLDJ6h5J/TmOxu8oEydWpN46I3oEuEWlP/yz3+3nXTYosJW1+8m57U6PsYcb2Nh
	 TxwTfDdRhoON0HtbAMcEHF7O990UqGyijeXtSAsMvF7AuNbjeaF1Hm/uNSUGPKPR0f
	 6a9BCcK6idcYGue9YMPrB/XMxxnAW7b4W60l25QDUD8361ikz8uh+nx3qoKm0gzU1r
	 OxN3xvKd7O3A9GZ0XUaGPA3JRowqwahF4W5zHsXd+KJaetF5NxPRRgUPaj+7i6dIP8
	 R6XNWdaoNogqiOEk5x5Q8DwXirK9rC4MMjoCOFlaqDvZuojv9OrmQ0Swe9NAGvqpVK
	 RDRfQ/Sqmr3ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F121C87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175344539357.8959.14950108383783165610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac768686728cb3bbe302fc0ff41edd3b04c1920865a7ebfd8a21be3cf9689f04
Date: Fri, 25 Jul 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753445393
