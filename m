Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355B92E0417
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 11:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765280574; cv=none; b=rBumMmR6o2lionJNjVh+rbp+juFLRaqTnOmmHPw+AlYPvFehp/Iepcrzk5M08bjxMilQ2RgBop7GCA9gdQJ7VUaYXjvn3DiLbLVveIh3l2vkRcjZ574a1//5S2dJN5KeRpmwuadVnJhlFIRwQb2hYJj28YCvS+5O7AvBiWyzVlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765280574; c=relaxed/simple;
	bh=+QaOeg0gYCNRnJjEQxjKP6mKnrZjgQt+++3jiNCbvrY=;
	h=To:Subject:From:Message-Id:Date; b=l11qxdkVVw6ODIDFbw2+tNA5rLn6WCiKXr0h4lUA3nVaDpgKrZvXDfazj+e9ZMKEmheyAwwJwgR+8f/fp4hlPBHhiyndFQ3vCYGc/BT3wlZsjGYM4wp4Hz+choxLC4Gdvp6WJvCQ8YNGQS4869m52gt3pyUV8r9o6LHBX1L0GdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uoVIU0mJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uoVIU0mJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5442C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 11:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765280573;
	bh=+QaOeg0gYCNRnJjEQxjKP6mKnrZjgQt+++3jiNCbvrY=;
	h=To:Subject:From:Date:From;
	b=uoVIU0mJ8g95qoS3ZlgtJxf5qiCBbVoL6ind08IIOf0zCkyMmd2gE91DZJ8V9S+zK
	 woBDkCNnLCc2xcF2TiorMIwLQ16tkM3Us67nKikfyFnvroIusiL4LqusmdGMOuQOpt
	 uZieVJAvkI71oL0kfgVQWpS2xM9lATRmLU5uFoMgdki/ewhpoQnjZiimXz0PrZAJHj
	 BUpEQ2o12sxuWC8V4OIYiEZI7G440HKT0A7eek79UTP2wH/iMKucv6pgQ5Jp9HsSV8
	 gYqtFzZSAMN/BjZo3Ezrx+5YO5Qic52qAGlissFxUXfpVEq4pit/H95T3oHCeGaso+
	 t8vSj0eLRjHVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91565D1CDC6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 11:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176528057358.9413.1113851320777077584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5f794664069c2238b5fe0b57fca9fae98477977b4e302da9c180983b117bfed
Date: Tue, 09 Dec 2025 11:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765280573
