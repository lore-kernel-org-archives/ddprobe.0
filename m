Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1B41F893D
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736333154; cv=none; b=H+1a+Xe/FlSXAzd4+f6745rHrEgZfO3PHNb66O/Fhv3b/xAHJp8hpVcy2hzU8vWvQuZCNMeiv3/ZLogqu0LyUnWXWvKOHhgcmyZEm7T2+CQsLAgb53++cDA0o7Sq5jW/E51STM6RfBJiC4l3Gyq5rYb1uFQ7FoOKDFcFI3yUeBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736333154; c=relaxed/simple;
	bh=sN51lOFrxcqMzO7jERKa77cAzPkoTLL0e6+bsNsQ4yw=;
	h=To:Subject:From:Message-Id:Date; b=PW/kZnhU7B+TaJOz9o4nXpmGeHTaYR8lA6zmM7LbmS0gqp0153q0IdInZxjaYaZ7a1m0WGtEXjcX62C9lMSBf35h9rtz9zqnzl5i9JKTwWRuuoRB3bHl+IzpbsV7hAtu77l35K5HioUelotd6wKW2aWmg9QuhuHEkbv14EXYcGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UvSWh0c/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UvSWh0c/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF68FC4CEDF
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736333153;
	bh=sN51lOFrxcqMzO7jERKa77cAzPkoTLL0e6+bsNsQ4yw=;
	h=To:Subject:From:Date:From;
	b=UvSWh0c/urz94jMR1aQPWRWGFbOAsjymFvLfoFj44OGXySV4QSRv/CZG9yi6lG7z4
	 MoH8FOhN7sPfKsxBkqYCeqPN8uQcDlJVe2OjWyEIlNePVtc8oIsZpFBZfghSocLB7u
	 dIrfV4JTeSxS+Pwptu1fvW9Zs2qczkxBbF8hrDSObFavUXBD6DCluNmhwc9y1QMhL4
	 c9Tw6EAZI6kmCpCxvMlRupaR88a6N+McJJll6+6A7soPzIuuSBwr3trlZnzYm8HNMD
	 npGI6ohcthhC8ILZk5/OK2DvmYwjt1ylqyrvoQjV1528Ny9LP5MSMyyBIEtEE5bSwp
	 2q1DaW3t7Kt4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A50DE77199
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173633315362.13856.7950167879551836194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45bae79cb5b366522fec69519e7848a2f72aa2b0e99a3eeb0473cdf7ee62107c
Date: Wed, 08 Jan 2025 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736333153
