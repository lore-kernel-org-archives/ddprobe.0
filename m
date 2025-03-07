Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9018187346
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 21:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741381733; cv=none; b=LGsyrrGEfKBAtC8VplusbVazf0TnMfGZRd291BJsrbo3HEmyzyOYejPoPkrgEKfFuVpW6HH05ZaAf91G1rT1qB1+lkm4hZyQI6WetvO6HTSTj8O0rI8Nn1MRi+yweqUeqA+fsvHvz2/Zh5K+IfcEi2Zp9RpQlOO7YkHkRtzJ/FE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741381733; c=relaxed/simple;
	bh=I0/vUm5z6Un6RevFFa/XEPVbpFL4DonQSyk+lzfIJsU=;
	h=To:Subject:From:Message-Id:Date; b=EWD2WAJf/BB2IPgM4HSqaQPoW3w+0M7quFg5ZTL7X/x5RmR34zAz6zHWKj05N/WRFAwTuAnKjJr34j6opXJkhecfb7Be/bII9xnQMFjOyosL//FJNwN/19eDild29qZsk7mpp2iTnRCmLyFAM1xg7julIedaXR7mR4eKEeQ8/EI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mAyQlTJI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mAyQlTJI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A691BC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 21:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741381733;
	bh=I0/vUm5z6Un6RevFFa/XEPVbpFL4DonQSyk+lzfIJsU=;
	h=To:Subject:From:Date:From;
	b=mAyQlTJIfOuk3TcjgtVuar0NoERytmafLD3WIyhE4EoVvIg5R0Y09ssIRWbpz7APo
	 ZpXVo+x2DdIFORphGvTsehlzKmB4zCpzAI4lUQRM2+gr78Qd2hX9gcm/0ozDD+EqkR
	 RMEHf0PTyxUBLyHpAvTa3exqyXx+QkQXf/NXGAMm6cHZFq8xFiH8cKAaHHq5PUcs8F
	 wzzjzF8rkRXyEfeBOfXSArkPzDZ7/UQJ/78k9h9qPGMRJqXUESd44Wbml1Q0QE+PF7
	 EK7E+H86cg/ECCMEINTeaQZA+Vf5iCOTkHUouAJlScce0TQTkUOs1T2+xm2HN7q2C3
	 0/VJa89cIE7BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924FEC28B28
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 21:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174138173358.15134.10878157979122315101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec9c70be1339d34901178fae6a6d652b77214b2a66ff2e4eccaeb7d64490b09d
Date: Fri, 07 Mar 2025 21:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741381733
