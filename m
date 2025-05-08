Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254A6450FE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746710394; cv=none; b=X1G00miuVgd1TuIri1uwKJHBj+rWKAZpobKzZZkvksFCJFuTb64HGBikFLdVPRSWpxIzAL09BOFziVOxYNVlcRLMNIUmf+vwOA14iioq/4ZIptxnRwxsZUV0afePBK6bO/x6rFtp61xT7m53xSIN+JzSFZaFAzXF0zvWxTvL75s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746710394; c=relaxed/simple;
	bh=ruXf6jNrELlh+nr2rCTK9sBZiRtgz2bty7NCde0t2vc=;
	h=To:Subject:From:Message-Id:Date; b=dIBKi529cAEjvkHTwCvzTqu1gJD2g7YjVVEvKKTfZHseURsKwBkvtqZCdbmc3OTN+Aw9DBhehWQ+CBoV0w69e3j5SNKOmHQams4zMk8g+qfljtr4Er+n4lGeW5ExaNqdmZEPwjGiGoS9i2JW0UvAlOZKS+2tWvD/a69lX5te1nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FOxevtsm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FOxevtsm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4A2C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746710393;
	bh=ruXf6jNrELlh+nr2rCTK9sBZiRtgz2bty7NCde0t2vc=;
	h=To:Subject:From:Date:From;
	b=FOxevtsmGe5oC3UpV7h/9C/nQ0lkkyUZNOgt8F/8y0Ly7aCR3DBTOSeLSxNET14f6
	 +/p7GGUcweo8c5ARXlG1PbGsIeC7yNNb4cX5axls5aFbFHI/IRrb8JFaWRV1WsPnUT
	 c+k27pfrIt0j+ETmAy3JsedYnwjpw4fc4l2nHaaLu/wAh04sitjWJp7/9jQpq4H7Eb
	 dNuWU8emkZ0tRWfYqCmm2ZeIN4Wimx8HNZOmmsC4uT0XXI3evIYwGzOuzPxnkX0Y3D
	 MyusL4HjrX+0a2NGzrccKXYzyVw4+R5vcqElKZiNbYWQHpqviw8pHsSEYMNZlQTjom
	 ZTPpQodv1jSlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1D2C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174671039357.29431.4641448707508832434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cd757562082f2231393294f34f3dbf532205dd95218dd32d6a4205654434421
Date: Thu, 08 May 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746710393
