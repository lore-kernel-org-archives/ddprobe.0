Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225042E8E01
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756936794; cv=none; b=dqMUz+WwtYU8Rf0vXQwOH3kRQXt90Kf9uK1Y9HRsqaksC7Doe0RvfendjijxNTyP8JJUd9qsCyaUis/GSBG8Jbd5Sw56HzaB7uXckYNnP8usrsowsWy/qIUPg8KGcr3rduImtxLcI6Z8jm+qvzfdQaL4T4VA2q4MXH8FwJCOzqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756936794; c=relaxed/simple;
	bh=Z/j85vJJQ48WjDHFOCSdFExjTUMt+RVILCqFYqxIsrU=;
	h=To:Subject:From:Message-Id:Date; b=fsUpCqQ3mIHOSq3Lzb0awAGvIcgISUviMhP+tSIYXQJKdIxIpDQZth4qwdCxTyRM90+QfC9bAm7RX49rCR7tDx6i54QKmrkEZoig1toA3+JAKR3jAThFy5X8yiyyqnqjR//hcb+qFl/4bGQdtor+gN5nTBaHgyZQlDqTBgQCFdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PHn+2F+S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PHn+2F+S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4183C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756936793;
	bh=Z/j85vJJQ48WjDHFOCSdFExjTUMt+RVILCqFYqxIsrU=;
	h=To:Subject:From:Date:From;
	b=PHn+2F+SPbFpJo9gW31d7wN9ntFRr7jixAyBP/JuLIhaNs4SM73SmMbaSgAagidgW
	 nIE70CVxqQxosn0pp088HJtBZG5wV23QJOGRcEiaahLbeyERh81YkPn9CMRiYFh5TH
	 cZe9t18ssRAqRH8y6ntsnhrnDFe7yDavri3aqqYm8n3rLTr4T5wm72slJk4xPcErYu
	 /NAHMwbL6CDSe6Qq1ivOfWLg5ZvvyniXSRufOh7QmvqMR89Skj7bWiAYtfyxlCozIv
	 xdGnbnkLP21Pi3y6u2x/eJM6Y/wmjwZYcy0AOnurxlixlNC8zhzdnCDAF+9748nBy3
	 cAi/pqhN3ndNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904E3CA1012
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175693679358.3237.18419135691571948634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7a05318d75037edfc0d135a19c9c57f7d88db21b6e2c0b6fae7244db28c621b
Date: Wed, 03 Sep 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756936793
