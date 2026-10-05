Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC54C481FA1
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791206435; cv=none; b=t08zFWbxAZD3MFlyP3no/RcrhtGEPPYRFgcLC+te8VfwWGRuEBlPy6IiI9cyr7b34TaMRAd/7YC8BCK5gwB6lwYZPqwWAaRnfUcpp0E0fdR9Bei8jDsRXO8DClNz8JVbBIhS1KThWT2mABVBMbSyqkjJ0sgfPUzFRNQeFqWKmEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791206435; c=relaxed/simple;
	bh=Fzza2RtWEoAXg3K8av4/rkLMMEZbnLKme8tj3+evMPs=;
	h=To:Subject:From:Message-Id:Date; b=olTiwXBb7/TU/xs4OP3s1T8Kx34fimIds252rysTvRBubVdP6ub0tVGODCYQpB5TXfY9Oy00hXr/EFl5bEK/NFAMDMBgmn1qrRhtO4aLWQLsUs3giSYOwDfgetdkOPmprEdaAHXJK97YwuKwqfV5QZ2noyaXmd6+Uwhs6x5/i4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IeIjDWA7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IeIjDWA7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD698C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791206433;
	bh=Fzza2RtWEoAXg3K8av4/rkLMMEZbnLKme8tj3+evMPs=;
	h=To:Subject:From:Date:From;
	b=IeIjDWA7r/yK+CBgKkXHXB8NHkIEPzlbhtayEIWSYqD6YYx1qvrIZfTUpd77oZEMU
	 xngQ/0LfXmfTGJ06iVKxsrDNDv1StfPjIEFUqUqHfAABnchNJxsiTAsZ/H7kIQRqe0
	 dTwRVpOMr2/e6YCAtznG+kDycHvfXmhjFVFDzN6T61NV/n8n9S8Ak/0ZdFjqA8NvPd
	 YsOcdnsnME4OH7dDiXwN2qfc+lCoYZJrVqokjOTx6ENfrAxamQ/jtsHu/KcLS5o0az
	 EGrJegWDBBY64UHlfjO8mbOL7X09IX8klgSa6TGZhY61djGebwJgdePxidAEsDIH4z
	 UJqv5lwbDclfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE4ACA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179120643369.8128.7795209243200264920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b30f052c6bb510b08489995581ce49ef70946d5b4af1f5227b18032ac7b00bae
Date: Mon, 05 Oct 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791206433
