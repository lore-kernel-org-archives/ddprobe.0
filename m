Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354281B87FA
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737494754; cv=none; b=cQ2aApVEMCAMwikUF+4+Nv5SmdcnxmDilj1eKLDcT34vEAHX1P3ZKiIu7UjCzaqj+TNT2gxN/tdkh5U7XSt4J10xxA59DKrR8pGCwOjoOxgzpXqGNun+qNzu0tO2G4rxWHj/IeFWR02CvoVpT30piJhlUUZdSiuI3ei71LVCH5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737494754; c=relaxed/simple;
	bh=rXiFmYsRWCmbuFHo2j+RTJs6CwLxpmyeFHXGM5o3VCM=;
	h=To:Subject:From:Message-Id:Date; b=dtH6PRTmAqB7dwN/f3DXgkF64qx1ko3iuwaz0XBJ3NcVjJidS9g2Kn7W/NOQ0aWYqDgl++a1KFHu0DDjaRClZNJ9GQHmfjDGzvPqeGiFrBmatuO/APF5ZiYgLneMcuc6WIqxx6CJkVbBZEng0An4+fDAGgocy/rWkSsmgwx16ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iM3J1GL3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iM3J1GL3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AD2C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737494753;
	bh=rXiFmYsRWCmbuFHo2j+RTJs6CwLxpmyeFHXGM5o3VCM=;
	h=To:Subject:From:Date:From;
	b=iM3J1GL3ano+D1gWe5B9/H0hO+QEuR7l8HT1+jH/g13foWt8g0kHTUrCr9ms2G0BB
	 LQlUQVC5myviLNK2FibMjh0ArVX+yEl+ug4LACF97itU5/coE3jJP9VSVxvdteB4rk
	 d6/+9mKog3WlPwjlRBywCGRB8VaU7GZhfB7f9wF62nOEQ8lS2duwPjPcZsLAlzCmO8
	 835iOE5zPmIyPXflUHi+dBKfArhRj/DKf702bJrNYWy5eJBB+tODQOp0Lrdth59J08
	 6COLAHlGOu/jiiL8S/uztPhqJFetrx344XRUc/G6vpRGzcb6jEkME5QDol/u8LSNAq
	 FTwLI6K0yaOYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956B0C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173749475359.20422.15331839133315204347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26b3410fd16595cfbebdae4e97ddf04de291cb9c454b7bfa85a3a3b354a56279
Date: Tue, 21 Jan 2025 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737494753
