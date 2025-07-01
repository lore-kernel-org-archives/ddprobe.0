Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F80B209F2E
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751361594; cv=none; b=tRcAh0DrCUOvpOAP4V+hRm4KUJaS5Tf/wTHZ4FknHZknC9MThbLuB9YvQip4vxYs7pFgfSPk/THKU3ML3cgaXFg9Y7t9d1G9bcpYBQ4bxS1RwNfXlHgzGwGsGn/UPsZ9b6+LGKsTVoEr0v1/BSE8dvDYAIvl11O/78f5FMRPAAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751361594; c=relaxed/simple;
	bh=9TmyGdIgPIQbpw/oz2BH4PChbDO26PrcDtI6y0/ipvc=;
	h=To:Subject:From:Message-Id:Date; b=ls/mIh/BkEyEXX2aZWP6RBkXKDPvq1Bjb6aqP2hE9U1MKVmeJU0qS6nR8B+TxVsnh3p8adKiPKXZmJmd1u0/tkmwzJw32jhmFdIFg/bCfnTBl7zdnNNtQk8i88ELcwBSVW+gXmQNrPvR/kuShgHR3oE0t79foLNCR+N4CL/bN1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F25Y3Hrj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F25Y3Hrj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B67C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751361593;
	bh=9TmyGdIgPIQbpw/oz2BH4PChbDO26PrcDtI6y0/ipvc=;
	h=To:Subject:From:Date:From;
	b=F25Y3HrjBkG8IBwX7xHuyV6AK1oEL+7KYFnGw9qqM/EiRO9tCVoRF9nWuW5o3fAr5
	 UYoCcu8kwhgnB/AOZAIU3oeYVauiHYE/vont8Ybt4muwnoDzHa+bkOHi5J0/sEGlzV
	 fnXUxNbh7HHWRpvRONgdX0pw/90pi6W+L1TORfqR75UIbH31eYPfdb3MV/CIaCkYG2
	 HKYhS9ahhw1I7M+Ql2Op0ga5B/hbyRAj9NlynVGD8OitqrLY9AXL+x+rsy3mEXFUBu
	 AUgpD1UEGg3oTqeNWNfvyT73f2HVM9HjyCl0sheE3FhFuiiU954KSmTcHGiF5/S0Gh
	 Wge5Yuvi2yXsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D9BC8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175136159357.30148.1453554390571437978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a52ce4137d9d1308af4e1d1ab85cdcf931c428654e37b911976cbdf7a2a84cd9
Date: Tue, 01 Jul 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751361593
