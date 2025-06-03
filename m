Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31061221DBD
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748989194; cv=none; b=qm21BkK88XuhZbrlGJbxx8iIvRBqlt2GwPYujbxsbNc0bLDZOlbYECElChSGFf6bL+BF5brQOHYSla0zl2mnOgY4cyxCq1rP55j2U04gX6mGhQ9uWj0q3MB7BwvpinecQCitlaawKkYZ6iV5L/ADV3mUQbCUTqeA3vfg5VSyb2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748989194; c=relaxed/simple;
	bh=XlutJmZ9OXHxrZgdRLyGgKWODfJvGGuGVxCvc3KZv4Y=;
	h=To:Subject:From:Message-Id:Date; b=QLgkHMMQfhPwxRLCuzcrSShF3emTMq/mHbU6paBX5IJoGz+jkzzl22WG81oNf4zjiXSCUMIqyqmrPhaRUvxaIOl1VCq+irhzPkh8cDfFowvX0hWR/d643WOU7JzI5bt6rfbtG6nlLV027uMJxvoyl3lM743LkGk9429zSyeeIEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n6ov8gUd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n6ov8gUd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4865C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748989193;
	bh=XlutJmZ9OXHxrZgdRLyGgKWODfJvGGuGVxCvc3KZv4Y=;
	h=To:Subject:From:Date:From;
	b=n6ov8gUdrXngMC0ZyjWTXlCNfKodehNTu68Q/k6COpC6jvE3DkAb8A4lZarztDdQ1
	 poHrKX3EqDrIfCGfou1DWK0p/UEVEAgCAjwLeNWkjD9VrjNnkx3K0dE5C0ZOzDaiAl
	 UsaT11eh9F/1yJyU9+5vjO3i4k7rZpSOQV/kCFnPIb+BBMoPhCpItavOBn1c54LnZl
	 hyRluuVVae6COiiHqULzbDPQnU3wjQsjXhFQZ+iiz0O+H5sQDC54biFGahDjPDE0Qm
	 aE+Xu234TYkclidsICZtuMa19lg7ZYVNX1dvqEdXGmlxDqMZfUchoE4350HkVVOtFR
	 R85jKuqbdYdsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913D3C5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174898919358.7502.16412261069504632733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bfdbc01766d0eca1b87169510a867dab85cfcdeb539472bdb70dbd835daa828
Date: Tue, 03 Jun 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748989193
