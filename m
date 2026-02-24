Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E63C27466A
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771902294; cv=none; b=cLHdrhno03VFA7Eyf0tKlL5inyAVPXtz8f67ExQgrMW1Gtaf/sL6QKOcWEHeEx8jdOf5cbWO/X3TCoUYEALRhoC3cEUtY1BtgkNWthp4QVmKsuE9Y7V/HFT4wmlsI4aVgDeXkzkmrr3keutUJVCLVkdsr+wD6lNWKf9GUXUF2mQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771902294; c=relaxed/simple;
	bh=qw7JXUUb8mecSlpnT7l7V7uyZWnnZJRVE0D3IcQ6OwQ=;
	h=To:Subject:From:Message-Id:Date; b=AcHYl/y7HVChQYxx0dmPJeyjtsfjTrASM6dGVf/h2e1zBxpfbk75E54yq5m7Wm5WAPK/ixSuRBLliIM6ZamvKfSn0ELugCYOFgCqc5iMMhVRkATk1oKmq3jKkmDNH+qmQ+rUSLdG84QMFkbut++Tc8p9e2nqKjRNXhanh6H7isI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QV50rCKq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QV50rCKq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F27C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771902293;
	bh=qw7JXUUb8mecSlpnT7l7V7uyZWnnZJRVE0D3IcQ6OwQ=;
	h=To:Subject:From:Date:From;
	b=QV50rCKqrJGQ2N6G3OLdL28+B2Flv7JSILYgkPlxS0gxgjl0rQYNI/uJXB1rxmi1m
	 IABcXMbFN31pZ16m1NVlCrk8ltI3itOvc2W+wFA5ogHa8MMD5QEYnQTUptkw4GpJMy
	 ExGqsW0cclYTRSRUolfE/TD/su9Ad54H3XSvDBi3zZVA0jyU/odkncsUwXwfbjMU1l
	 /UDL7bHmC9dFDM/ss7DnpzjAGrMMIr91hd25/x9YGqMjLWGYqR6a8W62wtEDRy6Uso
	 13IHApK2T9EZ2riFMgbPodXo+gFo8OR0h68yUw/rOV3/ANL0LAWCaSsa5+RAKCPtrg
	 sc2KVoRLH36Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92121EFB7ED
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177190229358.25179.5506033926806069241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b6421c793869123618aa51e2b91bcc87942132ad8fb04f1afa8988bdad38d81
Date: Tue, 24 Feb 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771902293
