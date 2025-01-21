Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E451E3784
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737495954; cv=none; b=lcqM7iKOvUKQCXlE3tUNAosEbb+BYeAlNIb/d3AwMC8YW7zThoNmjAcU2l3/uLw3HB2+B0EtDFyptFxGKV9CBeojuqp9fluBPCXmXH24xHJQbB0W1K03Ba6WdQGQsB/7ncdLZcZowe6k4QxLWRpTzmsKfuMKEIUigVh/I5wmtzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737495954; c=relaxed/simple;
	bh=G5beMusndF6ZFeBE6SG2ED9smXLSXuIjqFhPwudUJT8=;
	h=To:Subject:From:Message-Id:Date; b=AfjGONQjUTy8lNQT7XeLsr9ceM+168LoADeAU6XFjzADnoBQMlehDyKewdkCfnGsulOkCAz9+LYVUx/8kk5Qw9qqQImN4/hllvUER0Cjr7S6buXODjJm6HJffeoq4n++gId8e6gKy7jOX63g1DQUmyeVuwB1BYBUUvbf/xFNuGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vMyP/aOU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vMyP/aOU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5B1EC4CEE1
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737495953;
	bh=G5beMusndF6ZFeBE6SG2ED9smXLSXuIjqFhPwudUJT8=;
	h=To:Subject:From:Date:From;
	b=vMyP/aOU+r+JY42LGK9joOipmvbDmyS8R+BdtiG8sDHGbp+GWnTzY821aSbJjaLuM
	 ynbMao6JI/a1oPS1/kShZw/ibXtvJmFNeLMUiJWpcvt+YKC+7NRmxELesOzQqdXapC
	 nqg5ZtZQqyqkmRVgdrQmlajTQw8ocTKA2dVMRN/BW9KfNRXTmlukEzPqslL/TJt3c9
	 qDyCWnj1Vn+KlyWbjKLtxvEAj5SV4WjdFQG2ulyJgbpPD+OBkcxEShi2L+I88Xi/Fm
	 95+kHHElEkd5T0EtGKCAjhnAdWUKJdy3toNYEbJBjX71k36U7nmAFKdg8Qn8wfZzid
	 C6tkJMOHUg20A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF04C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173749595359.27340.16977977074242873108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8371ccb8216b7f9c41ea1ca6f739f3c146a2c8d51555f741bbc3ef18ed444898
Date: Tue, 21 Jan 2025 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737495953
