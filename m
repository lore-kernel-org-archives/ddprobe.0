Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58A38812
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 01:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714093343; cv=none; b=IBeeoSmOxxn7TD4yrIv6gSdpwpVuoIVxObaLPBENZpyl2VQqoDkQ+xpK2/ZI99hSOQSAGVy6sREn+1YIKSn8SDlc106CeoSbRwp4hsn0HmnntlDvFiCTfRX6XfbnZ2TyTzXn4z2JZgKuKp6Vb2rGK8jOGq88fg1hFiIoVgATdLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714093343; c=relaxed/simple;
	bh=CXwpRmqDZN5N4N61JwqwkS1SmKAd0HtmKbVmDUbERdo=;
	h=To:Subject:From:Message-Id:Date; b=hPkqhEJh5gzqPuMyGe+ml2kRjE/FpgMpLU4Xya0CN8vRYzhqbCT4QI7fI7dOP/rPkQWsUjPSXTHhv86p/Nlgs0A+k6cm/7Nh1vquqwyDRbXxMXhxGiA10a/X3dji2ebWdkED5URKlz9dklSlp69zDVIPsjvSY/KSL6e9G4kF2OQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bj9suRBg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bj9suRBg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEC47C113CC
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 01:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714093343;
	bh=CXwpRmqDZN5N4N61JwqwkS1SmKAd0HtmKbVmDUbERdo=;
	h=To:Subject:From:Date:From;
	b=bj9suRBgx1THy4ysXHJVIEmLqBfBgjtU6YOozxlrXyRU535TzFHqMHbaMuRnkPyIC
	 hJb37xajoZouGikqC1N12Z13GP62nwe2wmYCzzmwoJnByZI+XDc7ECQgRIsNrvjnU4
	 ozMGvQpVlIr1xNVz526Cra/G0PMiqtmjsv12wiZhTEc+eHbEByqehjjN7PDJXGzn4N
	 6TUfxnJ0qnySf+cxb1zu+oHfzkr+HCcNXb94UzHY+6GOU9pVP6KzHMC//j1muA/rOB
	 VpbnQxPszmFFfa1bj3IT6zynFN79Mhs5MEsVN/FKs7asB4jJNJgTZCuaxdc1+E6vbV
	 1a+YsmbTUd/MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3B14C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 01:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171409334285.30648.5281985962621080965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0b30fb05ef5cf57735f7f0039db536e0b376fac75191505e566b98b7b1bfeb6
Date: Fri, 26 Apr 2024 01:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714093342
