Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55C52153598
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 02:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741745934; cv=none; b=VGPYigLtClJ/mHkIvh9BBxCfg7z736x9ZH1PsKLnO2RV1qIvhnvsd6eg1hBmTTYkJ0BLVzbYepPDyK0B2Kqsyx6bpSNZug2Q/8VPzoXU9DYnYGOQloeFxiam5qb43rY5oZFvVeUKvfdwOdLZB1dCYZ2WUHoxQCzVfq4pIn7sahc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741745934; c=relaxed/simple;
	bh=VgRFVMKHaoi0oXhOoUkk32vpI+zpO/E713bFx1+DPWY=;
	h=To:Subject:From:Message-Id:Date; b=YYWZkOJQlQiBlhN8K8U/BumTm/DIdSws2egRiJV9l5NfIdXFIDTV02HkIEoiy4XJIz0E2qTV77wAldE7tZq4dRS/Jt4iTS83mr0wpmSC+5iOBhNkEqDA5ktxh1HnOo3ITUR8ixb0gDPkJwA+9JuqL17TA7Bt/0GeIabYKojvot4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HJ3In1Ry; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HJ3In1Ry"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93C7C4CEEC
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 02:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741745933;
	bh=VgRFVMKHaoi0oXhOoUkk32vpI+zpO/E713bFx1+DPWY=;
	h=To:Subject:From:Date:From;
	b=HJ3In1RytWjbE2bQjm+cnGAAx/T3abyNopWq77ILD7DZuvuF/wR/9zIrEhYjqQC9Q
	 KTQMejGMUp/3Ly5A+efwZey69U8XZySaYIgw51nqimCFvvItbyBUWcVdvKkrFMYxjg
	 gudxVhQvPyziZMME8hueLC3RUG8C0dEouyLLGa1kXILtdWbXz8hwhZGsKv9v2JIDw+
	 /4kIg/arSlJv1nSAVGQlCUEYH9VidhxoOxVG47v4Sen6DIfuig+rSGiulGZJ8AGb2s
	 643p8FSou6yOxCKnK3HejDWJl/Xuki59ZWH9pG319OAHDStqc+yqm9oR7SFAZVa1np
	 jSSPTbbBpwZPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F7DC28B2F
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 02:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174174593358.26945.1661651636940549273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a1481f7e58206a7b69efc0c9edb3ffc572259384716c36ad3c296b13f71c716
Date: Wed, 12 Mar 2025 02:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741745933
