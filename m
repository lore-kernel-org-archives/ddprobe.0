Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EDBD38C
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727137554; cv=none; b=Btlkw+PL/sBbgiT2rPXahquP/05QPmsmjgZmMtaJBE2jg/jS/rEXutW1mLRPIgvZFdnCPM09uCb/oa218GV0mRlWnlxB7U43VdjzO8NPB+GCWq/p9v77dhOoUoKXa/5TvscpND5Fu7mrsrBrSi4madWlMvZd6UUaf0ymNc0WKTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727137554; c=relaxed/simple;
	bh=aUQtKXlTaPnQPkuKdy8zQpnKVD2I7Ei2sxNGiesiKGk=;
	h=To:Subject:From:Message-Id:Date; b=XpcwiVteNs62crvjoyUHMd94mkiIih1PaZSwS7uNbmHm1WIzIcwKm30O4yLefdsp+oIJsay6xWgAxvv7E6C60YyqvN5zElYKnBujpUhYD5EuYyHcLYk4ak+xI7q3TNRUhLhoCH4+t0cFS90UcS1icKSqU6z+7IwxKy0nXI5dhzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TgQamhjM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TgQamhjM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFB3C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727137553;
	bh=aUQtKXlTaPnQPkuKdy8zQpnKVD2I7Ei2sxNGiesiKGk=;
	h=To:Subject:From:Date:From;
	b=TgQamhjMrglKpisV1OTqwv776TGN1cTZy8GliG1P7l65cR4ITbGMGlDHxXWLlsEmd
	 2LVR/ylJR+ckYOZakFsota0QfvXgLMFBAWxot/qkATLKEAz1J8ipWhq9KYS9gYU0Pq
	 ZEKdg+pkiz5qdaHnapzISxUW8wOTQAJYQCd+90tn1YsxsexUUzOJkx0ARrLxysaWHl
	 fNurdtWhouPttigpE7YzHp7aqLOlGVhS0NOGfrBtpr6AzKB970E3BcTNl3QbtbaMw3
	 Mqkd8zxVAbiEHpnj0XC+5R5tGXbfwQvVK1Z+FDNexrQlY4UL23IXfsDjId2x5DyPaI
	 BeMzwGlSO8pQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97776CF9C5B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172713755358.23425.9699456484865511404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1439bbe49668e0021ac9917fb8d051541cc3d35c6559f46720f098809f49ba8
Date: Tue, 24 Sep 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727137553
