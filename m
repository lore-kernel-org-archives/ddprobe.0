Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B85137C52
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766649834; cv=none; b=UtqX1iZX6uDmw9oU/FmZhWglkcLX+Jo0UAfHt3o4mAOBt/Ejw8GlnXp6XGPOOlt1OEelOyNwKkSEOBjIH2IW6XT2rIoZYbO7pUY4OMR9Sh4Xw94tWTpWNBPYk9F11w9atlgO+Y3W6wvC744M9+3qVk5YYBuqJNLL0YFuGTxJkR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766649834; c=relaxed/simple;
	bh=xvIhSzD+rZztN3B4w9HoB3afTzwy63slhKP/wIF8Eog=;
	h=To:Subject:From:Message-Id:Date; b=csdSi48dbwIJ8SBVLD/skuAb3bZd6rqKAvATUH7MYoYz7C/0uiF+T8cfQ+h5Ir87MNTVntppPEXiwpb3OkkQ1PKsfm9kzQuUa9G5xfgXe1psJ3RF38LV4FJb/mjQloBietVtwwSkmR7Ku3yGDmF8mii5ZF522GBgz8YI0GFknso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=haDHcbCe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="haDHcbCe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB86C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766649833;
	bh=xvIhSzD+rZztN3B4w9HoB3afTzwy63slhKP/wIF8Eog=;
	h=To:Subject:From:Date:From;
	b=haDHcbCegMKkYMnklckd/fhmv1dlbKfJjBkQPtnUXHk3OD6A3mMREp+slQMQJTYjt
	 zy7MkUQPD4reGwPV9PvxLgUMaeNTrYkNSubxYCau/aYmzxszA6w/u5HzSCsz2n9m6T
	 HjH1P0rjQi2N515YGJ6Ph4eqWPpxCEHYQuw1fcYAXbKuAXR5WQu5S6XIE/dPLloyWU
	 ORK2IkKpFPXq1jJ5QpMLkXE12Zmr146Sd4iFrlP3d3/51KyrD3YrAgB79sxpudpsZ4
	 UghMfTo8FK6ALwfh7mHYQzMggyFqsVyehYRgs9cGv2Mo69zKsceEvRoU6q8ZWXCV1P
	 dZxPin1qc1q/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903DFE784A6
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176664983358.32742.1153481593130499222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d3ba35e7c898cd463401c03cdda249c31d85fcdf63b1e61b1282cec48c27dad
Date: Thu, 25 Dec 2025 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766649833
