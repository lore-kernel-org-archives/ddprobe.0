Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB303C1F
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736714754; cv=none; b=W4E4GemdRjXt3MqYsL4MUWZwrxwbMfjBkgjVFcwWQDY59FKNctuNKtcwLiCzV8mNOQ8P0sLxINIBb03i3SgIohgOCngdCSKjrAQymyX3iIDNiA4GY85gIlk8VunH2PeLCyT/I8anaB+K3c3EHSfFcnAnntfaX72MXpPasH+jqLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736714754; c=relaxed/simple;
	bh=67G9aL5WwEFonURMlKgRXX9LKW820Anr8xcXtBO8jdo=;
	h=To:Subject:From:Message-Id:Date; b=ijgd5xxCKmegG8IlQpbUj9p+Zhf7W2ex5xiTrNrpXX1u7RZ280ZIB6ZtiSiPICZB4LGEJavTgBVuDfBJFQO6ZvoO2EK9cWfkO9p86UX7OKrw0p12dx4iSOe+dd+a5bwz4UyrgAoQuHEoZvyOeIP5wMtx5rqLS/2j3oUMYYy5XjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccRJX5Fi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccRJX5Fi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC1C0C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736714753;
	bh=67G9aL5WwEFonURMlKgRXX9LKW820Anr8xcXtBO8jdo=;
	h=To:Subject:From:Date:From;
	b=ccRJX5FiDgBRVS6vQDzFSpuCvjA3eo0YiCUeu5PzneULLf5CnOexBJ38Gyc58dkJf
	 wp+NWlO8sbSVTp5mjBLZUeV3qgeuEg7MhYWXI2w5dnwquR+TH1bcfJ/onWyYcVsGXi
	 ca46LuLvtvTcxjiz6Jw4Xw28t25rqL3YmOgTTf76AddIZEo75eNDBWFjRXXnLnKVpe
	 b6Rgk0ZV0O7LJ03c6O+4yO6txriNshsiHrjGe89w+WrQZlH+OKxhDNJh2lMMmtNEYA
	 LBtJxgv+vviWrVWXvAs6V9xt5cBdV/DtI6jlH1UyYNBcGUBhYenNuiL8wJCbZ0aKTO
	 5CVPa+rGEKBkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB287E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173671475368.28270.13240355424709335350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a540bc1b789c2c5c51080113bc3761da2c2d236b54e261bae604fa978ba880d8
Date: Sun, 12 Jan 2025 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736714753
