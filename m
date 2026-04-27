Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE0F3537FF
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 08:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777280254; cv=none; b=nVE06WDtgq1NvloL8u+zglE3gXsysGbfq6dkiD6Y8ZdZxt1+mEJnkGDdmhwbRV2FF3D5GxLBCN8Px/UdxQ1DXUWGKQbGz96bgxQL1yiUD+YvdaD8ZtoJma4vYd5+OGWQKJfRVw1tTrguCjvdRz/JKbsLW+UmJppRwpEfi5NAmtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777280254; c=relaxed/simple;
	bh=bHLQ1Dbi2phESiGoi8TCM15rwZOLBYMzQ8JcDg2Ebtk=;
	h=To:Subject:From:Message-Id:Date; b=U5Hinadpj4ouAhWgYlC6KM030CJAZqpwCdY0KTm3su4XqQWgEB3MFL6Dq/ixRo3S+6XadkpHRvECZ+maANWtPj2bhcZagxmIDuoxu/Qh0CTnFMlGY42pbgEMFkrTntIWgICSyiI0Qr/iuyB05ffyvI9wZT3znO5S7oTNRU7ijpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYa7XrH7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYa7XrH7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B772EC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 08:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777280253;
	bh=bHLQ1Dbi2phESiGoi8TCM15rwZOLBYMzQ8JcDg2Ebtk=;
	h=To:Subject:From:Date:From;
	b=rYa7XrH77jdfUEHvUW+6ScSImehZJdh3KB/uewUlxodgdz12N4usrv1k9ZMq8Nfr/
	 NAvhObqbbHOkT4SrT6vPTSUYY3GwXAd6kYBHxVaFDnrx7JV42xGzqwhZKO49XXqvo+
	 hFfatcsfmYkfUL2RQOgTqWm2CcczOQn+hMO2oPDZX2OhKgCO1shrEgW7g98R2MNepA
	 GVcqI7bSdd55JQJz9XlLVXsgjrZJlpRIk41OO43p/ESqVma+XhqRCpq6Nt01UnJN27
	 w63wQ9aOwzX8IhkVQLgXUQy6/nxguLgiK6b6vf7RIDOOYVMhOszkvHe/sLgjBNmmyy
	 YB0t54XiHpNRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9873FF885E
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 08:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177728025368.19449.18116425509302320573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a84f03664c43f352ac97fccc3e7b405d7a1d56bf596366580a66e6b5250d87f3
Date: Mon, 27 Apr 2026 08:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777280253
