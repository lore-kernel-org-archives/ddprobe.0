Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339E972606
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 02:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764298374; cv=none; b=fMo6i3V7VsrEQOv3L7ZmQxHWKHjTFdjJdK0PlGYtzh1Zwg9xrQs/ZEJxzb06Yq+TawCBZguFH53CJOq1RsShc/YbkwUxLa5mkZU+HOo7AmTq7byHn8EpMhXYqne51vEZdhyEzk0MA4o6lQc6ahXUKX4hsRfl6VeX+fFYuwLts14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764298374; c=relaxed/simple;
	bh=W3UBxVGfaoKXfrYuBmyMa+O/OjyKLWhVGK5jOzI/EMY=;
	h=To:Subject:From:Message-Id:Date; b=pBp3JhS5LDEO0FBbpJ1zJRaay29BpPm9+m0i8bp0w89d2ymJacmSu0Zoserzi7KreQiIq1tSmCXEtgu2kx8qUFQHVqvLfelJh55LFpTx4Iu1Mh4sy4kfqAonOlOqlxAHQ29Jtvs5YhTwovV/r+fbDSlITnhFTzPxqj55WH2jd0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oRLQ86C/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oRLQ86C/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E68C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 02:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764298373;
	bh=W3UBxVGfaoKXfrYuBmyMa+O/OjyKLWhVGK5jOzI/EMY=;
	h=To:Subject:From:Date:From;
	b=oRLQ86C/n1WNFAjlNQUiLeOa8tNRrYPHhWieV2gO7mVj4gQVP+1o3o3AHPDTu5h4a
	 m6Kk72mVIm8yoKwQUaXOIM4gB86rNCZp+cVH5qy12K0zFAGWn65xSM5+Pe6U2Xy8Ry
	 PmsiCfNryBrhB196nsbADlvNGx6Hzd+otMeTdlzul0hf1EBwDMGVO28FY3oNMQ6cXl
	 TP3pgTHMR6NSIxyQpM2U+MASF1X7nvyNhG2MFEt9tENowZ4GNxitlxx0/qH1TTFBVL
	 b4zAY8cX8zk12P+7egL9/HJH/jHnAnd7wXwZdgxzpD7jC6zsll1LT5c8FnMs4mhkQn
	 GoAAXIfTWqb4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0DA4CFD2F6
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 02:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176429837364.21339.1446684364099721013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb360f37945c4a34b6238e1a1c93425818e3abc8e93cf6db6bc9f1a34ec06459
Date: Fri, 28 Nov 2025 02:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764298373
