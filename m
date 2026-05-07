Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F76E224234
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 02:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778121454; cv=none; b=cdo2xKRJhreoSi3LdDg+io7THn/Qwi6kuE+yWjE9CB/VVnLXctQ74zvUhRQSPia6C2MRzCYRNLqSDdsxWbWUQdT7CuGW3kgLm/DZP8elYKoQusy6Uro1JsfhRnB1NVuGwVgmyF47zU6ZmoB9LI9rc99a0VS1oUYnVQm3aQf4drk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778121454; c=relaxed/simple;
	bh=C/nFbCUnU4+xLiN2UqrYjp5Kqj4oOIZujJn4we/hNXM=;
	h=To:Subject:From:Message-Id:Date; b=Lb4oVMzcTGxTA7unHBFFGg3PCODYjti8O+CR8az997Jrsq9fD7/RwfiMzg68Eb7zJ/9pltBUc1Cz+ABcu+3TPDOvELhbhOxd+b6inRAgyiCbq+wf+QBS9nguf4PmAA210sBL0aI9EYon18egg+qG4AmLyKkhiyyikseMnatsS3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sf3TAWOx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sf3TAWOx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C02E7C2BCB0
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 02:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778121453;
	bh=C/nFbCUnU4+xLiN2UqrYjp5Kqj4oOIZujJn4we/hNXM=;
	h=To:Subject:From:Date:From;
	b=sf3TAWOxyqQV3CT1OG3Cc9HUZNEAvLzdd7uhjwGtx6uT5YDZW+i0TEKxLbeB338eg
	 Xh6lfmoUXTsATifxE3TJgiKgHbUBvSUiO/wwTfWTmJkMN2dvMXrpEBbVocHpXBcjrg
	 +KhFrj1QfUBfNvYheXa2HD2Uab0yt1zIQVF/bieyAaVr9QWQT9VQOleUtK01PgAKxX
	 SWQzyRpS1gkda6yBnh29Ypj8C2esklqjtLPx+Q0Z8Az1X8+MD9hI/P1eHkFAkXI2gS
	 3u5wo074ArAEt+svkiqz2TjQJz5BdbmBrJv6BHOmYDNnYO6Mr5oMR2cvamzsGgpCh+
	 82NL0EmlXN1LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC973CD342C
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 02:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177812145369.30951.6175663485710462383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a887c1aff70bab9bc89fe6c7fc5ed2f83b0a67f5a87aecf790cae89835b4b6c
Date: Thu, 07 May 2026 02:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778121453
