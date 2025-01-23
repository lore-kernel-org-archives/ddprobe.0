Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0A1186E20
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737657954; cv=none; b=fCtYBygaWlih+2wdq8VeGtgq61S9FAJFoNgsOxJiW8Cn8KD1MyNnXlPej4dNf2Te2cwq6MOSRYTnkWOkH1pvPvzLQKZwPuHadc3rMxAaUPny4plKA2D+voyZrwBHPrmuL4inZROUgmwrfnnMNwxTeVN3SToL7paRV6x6pbhHBdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737657954; c=relaxed/simple;
	bh=HghUH12qnMDpvJAUwMWddzFpZR6sM5NBXtEoNkXBdYw=;
	h=To:Subject:From:Message-Id:Date; b=QhFFvb8CXy5hRMjZFFG0RipV/MHBVVod548Gt7nRi9TpI9LSJDhyT/LVa12iRfSdkBcQxCzHsUa8QPmX0dIlOMZl2dAjEtmscgYolIZ8gk5CxzPyeM90nqwNuirP9jo6MCnlNvGlPLrB6NTiQ2CI7T5uXxFv4QpHKjWHaUb+yp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2MBRwzo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2MBRwzo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A655BC4CEE1
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737657953;
	bh=HghUH12qnMDpvJAUwMWddzFpZR6sM5NBXtEoNkXBdYw=;
	h=To:Subject:From:Date:From;
	b=V2MBRwzofSp6Ef+K5kcB8q4OO7qkA/P/I+NdbHhe5ZFjLGpKUbhCjD7GA0vwP1K4A
	 c/R9JVfm7wqZ66Ia5n8azANHTTmJSZVEs3owD6uHUYssWHi/JZcKe9RMfegVHJJ1VW
	 VXNEHjUcXgU/4qf8D2QmgBS5s//TQ5wMjECZjLM/6VAZk8Ur6eCwEu0SP2xwnxWuiT
	 6+1IcQTfl56gUIOliA5TBABMPn+u8FkV4UW5rPPCR2R4GrUC3PDj1HTzppyroA/k4o
	 3+kCQOCGLkWxozgjXyRNZEJ3WzE5hv0RKygJda6kRAf0FWss8EvqO2XssNIplfEX2r
	 iqpVorpXcSz0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95966C0218B
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173765795359.25123.10083290934152431036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be9ef181736657749a86c63610a0882f10a73495b7592b53b374755a0e5eda5e
Date: Thu, 23 Jan 2025 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737657953
