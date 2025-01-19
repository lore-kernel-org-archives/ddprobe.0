Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BC11401C
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737299754; cv=none; b=MXMNFjHuOa1ulJv5rJnPUojVNS6eVEnvNCc5j6KydPvtbYVZ4wjOsap3jJE9fs057MLdoyr+GsNLn+LWlf6sd/krAPN8yGIzOghtTCLVbQYScQmKHBZVC2Qf0EQQn9ahonZtoTIulZ+5O8ZH+/m+qlk9BM8X8OI+b85UWpZGnnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737299754; c=relaxed/simple;
	bh=k+PA3U+ZDoJwsE4EDnroHFZhYKGeCW84n8BEPQLkczw=;
	h=To:Subject:From:Message-Id:Date; b=Rm48uoqgBROVp9Y7Ye19FGRkzTfI/OzKHPfVErIAWAYv0nJnIoqWFWC9zMgWElHd77/GChTuh8HegPssMqwAuDlDRxm/zbbRO70r5gVafURpTv1uA9kQ2ECWvVuiqawRChO0r6dZMHpnIlw4meex+pmzENx62aELRjmPh9+X32c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NARzA84R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NARzA84R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6624C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737299753;
	bh=k+PA3U+ZDoJwsE4EDnroHFZhYKGeCW84n8BEPQLkczw=;
	h=To:Subject:From:Date:From;
	b=NARzA84RbARkQeqy/Za1TUroBYOgMgUPpek1YEQSvU0RflCvoM5jY8QMKVxHUUcbX
	 y9pahvBQzcxoGPuyJDh6vxIyg8JhkPj+dC5XFh7YmRxktbt+skVGVfVumCmHJ3xh6b
	 l83yQ1MB+hN3C/EkD6bt6i5efWBnCr3L9y7IKuuqlUspcAFCvDTXNNgegEnKE0Va/f
	 fIUYPRijKeTbf8qXA+SWTN/idUvzJtWkZW6JK6mvXLoZx2eCQAvCH647kd1Qwu6RSE
	 zsmLq+ISbT0ddbUaE9tEu2XTLPBzt3d3f+V1LqkRQppaZbDES2y07VBDyD52o8JBbH
	 13qiN7MCYE4Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CA1C02187
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173729975358.7582.16497969316127022077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9179fa02e71c3eda60a19a8b0613dced0b8b8d217ca7441a319b9ee6ed837e4
Date: Sun, 19 Jan 2025 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737299753
