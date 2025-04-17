Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FEBF9EC
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744924194; cv=none; b=ESxqZDyqcxPee2UlLfn5IqpvIVwQuABbbjzWg95wMYaRgVVJJR9tpPAz6m8/y0gSkpSsWCbOwyviI0t/J1iQ7xsq6zIgTgkhBYIQuBwIgnQZxgYEx43lq7r1OLZxiToPUzG4AUcorzTg9r56VEGDPGxtBEfZyR3vJIlQbi88MAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744924194; c=relaxed/simple;
	bh=56dpugiPLTgBXd7z+Ebw42P+sKCiavKpGhoWObBkYyU=;
	h=To:Subject:From:Message-Id:Date; b=F669qFeyE74tRvw6O1g3yVHKzTLHPPBn1nlF9MpOjwlOTrSYhdKRwX7X9kVeeMJm6Xb0g++c0V3ahgWydqzOcwaE+WRVSGS+HAGUWOTXumbl96BHdVq/KrUFP0d3PQH8JTk8/e3qWEkXoEF7z60owTN3+GlN11HdkULbtdpemFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lFdbQX4f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lFdbQX4f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B14D0C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744924193;
	bh=56dpugiPLTgBXd7z+Ebw42P+sKCiavKpGhoWObBkYyU=;
	h=To:Subject:From:Date:From;
	b=lFdbQX4fpDNbumBHa/pxYj8BsfaDJdxW+QC9xs3oFL2b3EqzLe13tKlIOFe1hiG8K
	 S9BWn5/d24ZWAQ96/QpZRgST+4KWFdxfWFFIdyCBFwzR+uYzSffiGzIFvcFXUaRWio
	 yoQTt/ZF1Fa++JGMmmxL5SL0MWNiYfvc81SsBF9+6i132O+91vVbMj9f2OOwJu0j9D
	 Et3gRXMLIwV+oW5WOr1r3Z8OHXobKfrjCbvO4BCowok/V3GkFSYCVqkXeV7KVJ8IPL
	 H7GZ6kmAmkf2GQt4azRf7MUuDtU+8YmK4YyW6h5M3dfjDA1pziAfvfqOd7hGMwxWgx
	 EGQojn0n2sH3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B7BCC369C9
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174492419362.18786.8241882609065932297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dac39bc83e2bbb275a00e833d61158650797706bb50769d2033100f8e523a0e1
Date: Thu, 17 Apr 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744924193
