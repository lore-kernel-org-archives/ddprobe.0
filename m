Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A0120DE7
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 15:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716738863; cv=none; b=VmqotjoEuMzlfuAMuIKho/fp5GCnpYN6qaSefibmUhrKZCEIYPNd/gWYJqied3gnzJ0nN32+d9Zw9YbCqkOPUYiY5yQA8ruebB1pu9t+hmo/gvm9YXgxdp9HcWnRIPk1fsG46pPOZhramYwT8K/gdLzm+JnptVeGz+3H1PCA3qU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716738863; c=relaxed/simple;
	bh=RY3OfQHaBYGV8UB8dO5p7iPLiB589vANfvPXMv4VMAQ=;
	h=To:Subject:From:Message-Id:Date; b=eliy2ebPzbXRuQyBIfcwl9KukONlHgja5oEtY6hpAWt3fEsm997Xt7BESFwwYZCjilBjf51T00KJx0WGOOSWPu94bkfDfsAEQ7RO7OcTpjcxUjExHm566cX1mhF2ikOuuAdaiULkT8e6Sl8xhZMlAv9xeK+9TeVIUgoVzmUHPqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NgdubUQ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NgdubUQ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF2B5C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 15:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716738862;
	bh=RY3OfQHaBYGV8UB8dO5p7iPLiB589vANfvPXMv4VMAQ=;
	h=To:Subject:From:Date:From;
	b=NgdubUQ0w63tJvppIW5ZVXdsJO6uakOnSrNK09kw6xdpSolouTsPS0r1Dvd1gWl/P
	 58qfpaDQniTKQLVIb5g81+M2QxrTJEeJVaKImTx1uZNTFUF4voPHgh0jBxkr+TNgh5
	 JCGotpkev/rjC5f3vUXMuxncRy2tOvFBqgD7QyVEikq//AxfvcFYyVO1YguNwMX52g
	 S2cuSgQeWf4mNmm2fo0u7liKmbnVz7sdgBxmxh5QyOuFTGFVF5JQfDELqberdHCDqt
	 BFSZMqOYnJA5+UTkVjBaJv2RxbEUWS+h3i2lTYnjh1vw9I/lSNwOtil+hVcFiwr5rq
	 /a0l6eh3vqU9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAE90C25B7A
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 15:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171673886278.4021.11403481785014585245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6edd5b919236fed035b55043a97769034a7f213575d121888485679333d5e184
Date: Sun, 26 May 2024 15:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716738862
