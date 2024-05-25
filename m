Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B337381B0
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 11:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716637463; cv=none; b=nZ8k0mm/P9cAqr4UW6DcUMMBnM/tk3usDo20yxx2AtW+Gqq45lkHiQ5M/LwAjSKsaWTjjoXg9c7IcI94x/dYJ20MsCmCJ8hGqx3OreUqfPA631/k4zFKhuaaeB2n1zTgVlpebvNZGyRosclorprlfvr/SLpB4gQjDhcQzdDZHE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716637463; c=relaxed/simple;
	bh=3ayH2H47FpCJ5ix3+HkKZkz+hdOZRHDiLq3WYILH2tA=;
	h=To:Subject:From:Message-Id:Date; b=nBk0PK5t5wSnusz/0gnVCcWwgx1RAHlkaFOM3cBpkLc5ZUVOOaXnSlFcaCPnrnLROm7sk931+SIl5mhhljTlg4SWHMgO46FocxOEI6pI4U9mQZvVt9qALXhLmnAhBIaWpSXZbQxqZoNAD7L7IqXhCCAQRXr7mIOj8sQ8tkDlSAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c40fq6wg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c40fq6wg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBF6FC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 11:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716637462;
	bh=3ayH2H47FpCJ5ix3+HkKZkz+hdOZRHDiLq3WYILH2tA=;
	h=To:Subject:From:Date:From;
	b=c40fq6wgBUusD0xG/YBacUZxZzwCXAqDYLk1T1hmCK7K7SoMPkpHY77597w+5DIci
	 AkjwL844uDbaP/XeZpcIepNrhm15xTltwg8K0twGT68ikFKHvGmg5a3bhpafP6V4vn
	 QQh5+LwQKRZ7p5bptj/CGPCKAW6kREqqZVXizJM9PzXOkJyvGGpdjvXQubTJebNZsm
	 8P8h/9xxOHKbKlmHNV5n0e/SjgvnznxGMRrvrlJv1bQUh1zoZvn/SOC1zLAuEHnyr4
	 t6EkPDkdcsUjhqKyrZ7B+qeZF1dGFJPF1u8FSncUktMXH9NVWj0RLArU/bi+zjXkGF
	 eVdoJIvhl3mBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBE54C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 11:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171663746278.1230.5397092547249363267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 171dd2a6ff46033aa625341644b588fbe5ba0076f27e704829293839b7031264
Date: Sat, 25 May 2024 11:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716637462
