Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B6E2D7BF
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790295034; cv=none; b=p1++kxsXapaM/aLRv7sppnpGWZa61AofNwDyHaGHHpoXXACxiBZcnfRaBg2b+yjTRgFM0UayPH7XGfsooreMxe/Uo486nz1MYnfLrb0r/e3OHYZyvaPVp9sFkGX7ml/mvXVi5yBn/QxtEPD/VkUpXdzGIXQJPNAw5WrUtzXSW6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790295034; c=relaxed/simple;
	bh=eoTXcaySO3q36wRd5YNEnpekJFjlJWsZkeQD1L7/sLY=;
	h=To:Subject:From:Message-Id:Date; b=KYOy8oKEdoHv7IfBIr822KZwp7MG0T9Uvedog+bPoO+l7XHgE78NQinbGquYuPqXKDeXX3IakSn8va/Z0c2h7qTu+u2GTyLDPwsCpVsRrbsn+kmDMydYX1zjmI4Tuseft4300iLoFEMvjognUNsGBH5D5X0W9ilsCvmisK87vP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XNBcqxcI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XNBcqxcI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFFB9C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790295033;
	bh=eoTXcaySO3q36wRd5YNEnpekJFjlJWsZkeQD1L7/sLY=;
	h=To:Subject:From:Date:From;
	b=XNBcqxcI5QUqF7OxEqxcm5xbT3+nubGvmElKgcIyRfuH0uuHJjtsWgrFNCpY3R22n
	 WkcM2NCu3CH1B7v7BgoGqfZFf6PFN17T7Ioxp5ZeFwxozhkJEffXCWh1WNpur1lNKp
	 0cgBswe+yjAf6JdBlJfRR22ACa3I6zoCjkWcpHJMFI35ornYM58XIt0Qh9vxBwKkU/
	 LtLQVYF9GQFyiMlZ7GEAC57+IvI7NQjkbvhavJ1noTbtU2n2TNAe0K/fIe1oaTd489
	 TxtPZeW3cruag9cgy0JxZDZhquSV6Rd2Nx7JzAeRbT2bgj0Q9gXwjcUcStJ48fkYqs
	 DfXZOLbVx8Iaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9094C9831E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179029503374.1250.12638012908029850079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acb96f9107c2ec92df6f474129478a96a950df6500f32a6ddceb9a02f9f981b3
Date: Fri, 25 Sep 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790295033
