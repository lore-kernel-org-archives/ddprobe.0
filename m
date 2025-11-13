Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F2142DC78C
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 21:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763070594; cv=none; b=toB7Yfjv68hxg342653qmz9JRvGxjEBZZFp7RqYxBRTTb9+xFM71+Zhb8kR9Z4HECVCZN9sMTezKkiF6xc81KHwXaR0p8UJNLgJoIUfHy1bz672NBJRsjiGALZAbqzjRFa1yQwaTrKvxHcJsDBfBO6zQI7a/jRHhURQMVkxxrCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763070594; c=relaxed/simple;
	bh=nAEXTNCjDPVPUyKEXqIqI8LV0VuKehQkE+uAHd01M70=;
	h=To:Subject:From:Message-Id:Date; b=uRdKoi2mjlePf3Bmyk9ijudWHh5lngudCJkpgxM0tdPBtEoiENQdrhtbPE1sPgygK7FzYlS9cCutCn361FNNmfa+gg2WqNNAZLhav955DDngFp7hxqFtAT21rsocnZAOUCMS9zo2BT1yvx6pYjskgQGai/YCssqn1XHqT9ljbFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ebkFXo7H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ebkFXo7H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71FEC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763070593;
	bh=nAEXTNCjDPVPUyKEXqIqI8LV0VuKehQkE+uAHd01M70=;
	h=To:Subject:From:Date:From;
	b=ebkFXo7Hw6P2idXfnj3Or+27SqyghL6ZIlA33KprgNCfu7M7YRenToY13WQmOVpi3
	 4ErhKL88GaS6oXBi796tmFrBcQdXVMQNCK3Nkfq3/gc6dGvgl3zVIzLcMo2Ve5idKg
	 sBzPId2oy6QwiLl0YmK0vJEZljHJnbagCl5ehdj7x+zqAziNmcqBlS6CepirGCUnEC
	 nqlPOZwStOoeUk2qvVCuA5KMrtgKezVMIKddDbY8QTzM5aq1ibtdugfO3HuhTjos1O
	 VERMZMlD/rBBj2O+aE9LNOkAYZTacSERZFdAKGOXtC1z/kLyCC6THWJkCUNuTiDBVr
	 R9bQYibMQKWjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94010CD98F0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176307059358.12133.16201702476265482699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de9ec8eb16a0b68586eb8862077829ad0db5aae63e3f17c80a90c608b91dfca4
Date: Thu, 13 Nov 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763070593
