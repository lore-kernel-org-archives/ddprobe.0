Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BC01AF4C1
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735814754; cv=none; b=SwwK/NAcIgprgWyKJWAFe5USca9AS756oPe28Gaf/7CEGKyKXOoQCtU+CzW5RE0Oucy1em3nF/JLTLzXI6k5ixFGi09GToq6hNkXFrrDCKt88Ilu1GyBizogBHBVojHovCDCkXfeUhoeaOpkWRkvopjOtoUrkM1aju8VuE4E0hM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735814754; c=relaxed/simple;
	bh=uJyCjQ4Hgys0EPrf8ggjIGOTbh8YkMnIFYmY99Wwjb0=;
	h=To:Subject:From:Message-Id:Date; b=NMEkYnYqbHieLOPxMu9jjSydxlGV7ZGLUtbEVEmvOcQprZQAsff7+tSx3yRu1bxSdO77Ad3V+AAb4HWRugNObuz8j01bAmYJ26lzTeRUZAVQTjyuCPXo71kK0NmGXSVyD/gNW4iPuMlXTXgc7cSxtVyT9geb3Bawf/e2QzJXCQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VhP/B+xq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VhP/B+xq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03EEC4CED6
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735814753;
	bh=uJyCjQ4Hgys0EPrf8ggjIGOTbh8YkMnIFYmY99Wwjb0=;
	h=To:Subject:From:Date:From;
	b=VhP/B+xqNxaIqzM1iFWozbPjtWrpS3+xDIuUUlSNJlMNicvOe1uSs2yrvQ+mdZcsE
	 fmZjk+hwmBFTvpsUFIq2tiY0XM25CBegOT7Z/LVyig7O1NeqWyqeGxyNEYw0TasxNg
	 Hp7EgIAMSFT30W5nNxcRljinEJtG3CIs4Uo0QEj6nSsTLHGM0tSg+wJQsBYt6MVsOm
	 ihFiEh9m7sO1/qBPp8g6ufgjhTdZgSCUFU6ICuMj1XuPU7fIwb4wJMw8uu4YIb4Pzq
	 ZqRCrdnX+rA4irsZmW717XCgzDowDLHRQ1fIQC0Wqx6WlkYOWF0fLM91iC5EOXYddZ
	 oW3JxqIb3Hxaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92963E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173581475359.30917.531227809381079886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d46fe31b203cd1fbaf63c7f612b10f7df5da6902833db8198434cafc61f0a05f
Date: Thu, 02 Jan 2025 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735814753
