Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D63125B687
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756709994; cv=none; b=DM0a1duU2oPyeoKJWNH1lQJ6bpFiBAa5dzvylfXXbfXK2aJ4wytzjqaDHr/mO1pUisX4D3mfDzWSjmv8H/+df4oDxHhQb/IYiaLjwVNfOVO3qdUu24iPL/+ZRrzMDurr/PgsdrNCoSryTNSO5Tm4Wr/x5mic/ZthkIm07sVyF8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756709994; c=relaxed/simple;
	bh=x01o4ec0zxRXv1YMGrkG3lEN1r+tQcqs+/uNhj952DQ=;
	h=To:Subject:From:Message-Id:Date; b=E3iVB8CUp6si1seiirjuunAoiMVNo44uteq8Y0H7pt81mTgYPJlRM8P+drriWapeLVDwMMkz3G1zkoGc+GkWKFDAFbUWK0fCsx91Tpi6E9XZC3yCcH9+I8acFFuxS7cLo5Us14HWGasiDhVlFYfzIKRYl6oF0E5cnJEsmcIjHao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vON1+Aeu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vON1+Aeu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A162FC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756709993;
	bh=x01o4ec0zxRXv1YMGrkG3lEN1r+tQcqs+/uNhj952DQ=;
	h=To:Subject:From:Date:From;
	b=vON1+AeuJ/XXGlGBpPzg8cuUT1FVHXKuLDVaa12d2PM8Wh5JfpqLFZL/s8TJpBAVS
	 Yy1v++0coosu7rjLD3yum/f6ATrWxzwsLdjKNJMa6elPh3T/U60+CMeO0Hx2pLYHth
	 dKq98/5rCZJIqaUIjiXC99BfbrqBJW1wEAIe5RqSvUN6bRSzqRsAkz3aKv9xq+LAfh
	 GBtjsv2sDXsrDxUhu0k03JL6leQug4waOKMAFFLql5Rx2ZrUcfq6MtOfrdqioijI+j
	 7S45WJj3ZgAbwjsRwTTR9/STJEi/JHdXIBs66M/P3lviwaMR/LFkqxurux5PcwmsqH
	 uS6OErePG4SYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDFBCA0FFD
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175670999357.14227.4846371131274183044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9da43ff4d56893aaa0732e0fea68ed7564095edc58d36f8c2c609433d138e56
Date: Mon, 01 Sep 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756709993
