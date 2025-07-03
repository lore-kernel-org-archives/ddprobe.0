Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B552E7F2E
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751551194; cv=none; b=I2aROQh6xa0VKI+SIFpw/k8M+O0rFMXqVlGXVggVxyh4ZXyqZfRddwx1sYMRaQoGlYoEUJJICyRphz/MKTyc8wTBYs0yNWZ+vz39vyk/eT1MDEXlqMstS/+ZXog0dMk2SLE1Mj7t+dmFXVBsEV1pLmCXjpLdW4lrXxjKok7sLJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751551194; c=relaxed/simple;
	bh=lKFZDeKR2vJ9TYI2tX66CPdA6+xIBbsl1SYxwYwCCaY=;
	h=To:Subject:From:Message-Id:Date; b=ZTvXDEaPORP4B9v1YmdHKyiqQHX7PNDHloTOYzkRDgg03vkgKEkoznsOWqk9AMgxZuANwzGQx8W+p8vsMpB7NbN0GJb+83VmVxQ7XO69KJxxApprM6ugFViUaEVuEbfngl3Mtof0ZdG1d1CxqzZk4N0yaao4nDb7rxEmJ3r2xqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0eeFEGH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0eeFEGH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCE8C4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751551193;
	bh=lKFZDeKR2vJ9TYI2tX66CPdA6+xIBbsl1SYxwYwCCaY=;
	h=To:Subject:From:Date:From;
	b=F0eeFEGHoWWomrshk9nJpQEsyhEJeka9pIVz/MPzw1vwaaYd+k7BEsy14wtZpBxI/
	 apClknz98HNcKaIcA64lDNS4Q7xq8qbQKWBOrjFnv1YYCcwFhQrYk2VkeFpWwFAo8y
	 bVkg02UUc5yH+/ku8m7e5u6bVc72wto4NTH9Wvgfza/1/Gk7MWQfTv10W3I1O6SNhl
	 2lGQepXWTFMGBmxDzDRRt4R89SN+yEPKGjygmkTCW/cFccLIK9REseLhLNlGpBdSWq
	 auptd125HHn8DF/wjW6gaGpZ7GgJ/woOgTEyCaFc6Ps+6/cQv8Tvi9rybh6SOjPfRX
	 VuZwDd/nuPlAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4A5C83F03
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175155119357.30473.451012684289002722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fac0283b28eccc730061e94b63851c2f9e727522d501a2e87c4d0571eb54af4c
Date: Thu, 03 Jul 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751551193
