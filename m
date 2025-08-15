Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193381A9F86
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755249594; cv=none; b=kEPvBnpKhICVUSSUkNFF8b8UhdDvVagRQyjv93S+CsLDLmZn9Xz7b6J1pGmJVNxOTFyjSm64/JyUrmWzj2zXLkO/5emuxli24djQvuP3wGXZ5n/G+8i2OrdSclsnPWIyLM7DiE2gvkd0A+ZHyDLff/Opm/gPP9aTGq3At9tKv1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755249594; c=relaxed/simple;
	bh=EjI4qC/CZC9cbaA9p0PYI2AdYLiSortIRcTV3pbHhB8=;
	h=To:Subject:From:Message-Id:Date; b=ayC/9hpjhdUH6Pa0BDqKPbWTzNlyS3gZOUSk9CNNIACXz7qyzRb8zTJScFHoL3U6/PP9w4a08tocf0y/4NzLyQNUuG96KkvowefDzsrbc16DMBejvojZi0opL3PbSPrFylHtaYCOZsd/DN0KX7YndSnoDDptJk2T4Ug5bMGE2nQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZKUzZ7a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZKUzZ7a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5FEC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755249593;
	bh=EjI4qC/CZC9cbaA9p0PYI2AdYLiSortIRcTV3pbHhB8=;
	h=To:Subject:From:Date:From;
	b=fZKUzZ7avPLxWlUwPhQAVaCLT0VtJ4jbsr4zAi4h2OmxGeWT6WcE565NbIl4B7oKX
	 Gv4brtLiR9OUtXx6rZGXSEIdNxik63nGc32cdc+29mzrEQPI8PYa9LQFuwdvTbsNo1
	 f7mKo6Hzb+s3P8MCLSXSWgE6Hhz5LOLJpPwrZcgGXpiACAUwwuDUFpPw2aucOzSKyh
	 xmpRoBKlxx5lU4Gnogp4FoSFJn1UYB2rSi0KPWZS7BICd5cqEi05kDvA2/rZ3N7ksn
	 VY53vSh0nJe9EDZI8OZPfH5kuK6AutXwP4JGqBa53astEyIVDal4VTQuarHlaWzC5o
	 gM5rz/Rffzk1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90056CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175524959358.9604.7677735472699956716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c3e2d0e4f3e34af089e05260561438bb70865bf40d2549dc43682086eb95569
Date: Fri, 15 Aug 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755249593
