Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2110823E325
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 23:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765324374; cv=none; b=d4UbMN8sDWV8183zHmH52VGSheEk984EVpxQBPleySBj1ieEj/66yJmarYnqfc/2zEe1QfmYo+mThfbRgZLR5WySK+bRTlbnDO1iDIA0LtyjdzsACc0+ld+9vfp/NxlQzQzIsZmGgmH9cUTPUCHuVAX0a6yDwSmOHT+I7K1/6Qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765324374; c=relaxed/simple;
	bh=gJHmZe/DF59BiMzAEsFMY8XHUdYdZ5zpVJvTfS0IRd8=;
	h=To:Subject:From:Message-Id:Date; b=M0XNsOrb1dS+nFA5E/7hI5lWhvbZNQoMLS2/pjqCEY45+aH2EIx3jhOE8kdirX2g2a2iAa4kZsquXEoOBSlwqfSzDShkLNzbO0wgbPi6QI5qiN1so3/vcynREEhJ3k481KbkJo9RUm4uhCD5aP0nekVk75+9TjtaZwEYkQ8Z7Fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MMhdD1jq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MMhdD1jq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A60C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 23:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765324373;
	bh=gJHmZe/DF59BiMzAEsFMY8XHUdYdZ5zpVJvTfS0IRd8=;
	h=To:Subject:From:Date:From;
	b=MMhdD1jqByARvOk9unwxY+z/n2jTFndQ37MpR5XTCfT8itAXhPXZWr6xvzX52jdYq
	 PYK9I8MVXzAuH9yUI+PMjCFFOAapSS+T60MneavmVc30s8yG8eAS4q56/5urSIce9x
	 Z1tDJ6m34RJxHWYZqSu054ujhNpQQMZvZMfdmKW3MhBpw8Gz/uU6vVV+W7CQcKf67O
	 7InA3+QGnFY4AD0el93cu51E4wyMeM+IFNC+fX/7Alj6IRnHc08zRw5O7oLMkzLRUz
	 EEurza+NPWVuLj0ongcZdpmpuc9SBi7jBVOASRD4KCECdSVa7cxRNbbYWKVum/u5wf
	 ZNejJglgBeEyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902C6D3B9B3
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 23:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176532437358.29720.8417432803167315099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eae83a30132f2676fe6a948d00ad46da6adc82c8822d51ef32b73da78415bfcd
Date: Tue, 09 Dec 2025 23:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765324373
