Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFB42765ED
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761134995; cv=none; b=dasA6/l57XaIJIXAYcXT0i5zhrBunsezB2lyvEIaX2/SEEiwq4dpnfsQU4pWOAjM+mgkCNhCZzPjUFnuAzeVXUDOyZONXLjvGC0XcuiBy8QhfhwmzerZDu053WUple3lYTY2Fw/kNqjo2zTeZa+oBeMb6gaXfp35e0I4tjcRXns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761134995; c=relaxed/simple;
	bh=3OdOHRoFCMgFf5cWDHpZorNMnMKVDlvCykZcN7Pcy8o=;
	h=To:Subject:From:Message-Id:Date; b=unEAVG2T8AQbMwML+vQdc/ispGcokI+369+nuUbcdb6Va4jqi4FRGbFMM9DybJFV284N4lHhCoytqIFT8mlLln482iZPzaVXmbx8nMxv9tsXItkvPZR2AEQTDuUSgNGHsIEXXIEqYVtNG90uZoYYfmupPw6zTQu6f6ijMTVBJQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rTVCg/Yz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTVCg/Yz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DC9C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761134993;
	bh=3OdOHRoFCMgFf5cWDHpZorNMnMKVDlvCykZcN7Pcy8o=;
	h=To:Subject:From:Date:From;
	b=rTVCg/Yz722aqLOhjjg5Hdwn4XmidxEbTKlD3PsJbl9YcuxTwliwGI7KZefdbuZwe
	 QX51vByKvCqu8sMDz/46zl4of++XmjhKs/2LUGS59KdJU0UAgFspXavpThR5TPrORk
	 cSaR1rjhEMeaxwVFSzgr0HADa2x7WAHcPeMPQugZW3GNqrXBg2scsokj7gP1epGhtl
	 +K8aWD9dsYRtJoRk509gvMCkSp0nUS4w2wlj1+y7e6YE9SdC9x0K6D2QuVqzpayt7b
	 pEkNBHY1+PKldXKjcNG3j2JO1BUTaARjWIeA9EeGDZpVGPb4XSNcMvS15PNsuLBTH3
	 X4iBU0UuCzoHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939CACCD1BB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176113499359.10268.1672399409458674335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85eca28aa5826563e9ec4416f3a8b05d07836498c08d3e41492f78b772000fa5
Date: Wed, 22 Oct 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761134993
