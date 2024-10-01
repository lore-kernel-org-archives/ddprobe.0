Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF5B1C57A0
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727789754; cv=none; b=obREneennQ5wxnOwkZoQg2nYQ7xigirOisw7h3Y/xoa4N6Yu2hkSuwBXe3Gx3ycVLM414utubEJZo4uW4sHvNxKgdqPZZvQvXt9W3KldF2peK9LnlUlRXvi/0/J3KwRAwt7sjOPx/ew314a/Fw6PWYYr/fnKwfnV4jT2O9UZ++I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727789754; c=relaxed/simple;
	bh=xCCOCQ0jFqziZirkjqfyuSJZZYEstQNFaYwjZhlPj7s=;
	h=To:Subject:From:Message-Id:Date; b=bkZ0LdvKXtA2c50WuHXDLhTZhNRqAKK1QoXWVzLFijiIMXC22fxyNwuOLKTIpESHjaFssu+3wVm2YT6lhCr5ecTmSLkIv84pMnIbrXpFTggbMIuSUg3fH1nhwlfgMoZu/XEPxpTAz1OhLmwdJybLQcm6WgxgABsWwUe9O1vlBV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OwZ9DyAa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OwZ9DyAa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE60C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727789753;
	bh=xCCOCQ0jFqziZirkjqfyuSJZZYEstQNFaYwjZhlPj7s=;
	h=To:Subject:From:Date:From;
	b=OwZ9DyAans0B1Dkx67JSaq50S8GGqiO5cFrwsF7MZ2Bsc07X8RcUb2eO35NUzkD80
	 12QBof0RVslqlfW4bCSbSHdmtmOxjBevL3WGyuoQUcjElAm/x5YQ9fd8C+uqPzPJ+i
	 681zlSdqzsOPv4v4+Ib6q8IdiOUKPc5zKCRZdyIzpiZvbamkvuESF/i8NK9LoufiXq
	 X1PU+RmxZMcYLEQo1yrNxMxCtVMDj2/caLQfROlLEtk38YXNXz4bq2loG0SG19bsow
	 sO+5s3l86+Q5LQSEmSCW650w1rii/xOGleDcbkLPI3Dtva6RHRjL2/IdTB/+pdcJfZ
	 wboA5QODbcw/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5282CF64BE
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172778975366.17174.9136316743739584174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a09a8ddeece80de31f1f1b313505ada110d25c60051cf3fe81b0a3867668c8b
Date: Tue, 01 Oct 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727789753
