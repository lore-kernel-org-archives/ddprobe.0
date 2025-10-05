Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2339515278E
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759697395; cv=none; b=Cr2TpEw4kGD4Z0ftiFG0zdwMeEYHbBrKBqHowzmKIWhfADZeWQo0p+ZKAgCKkg4dnwNbhYE3FmGWqXiQ40nEON3gtkQavbOKG0tHv96sJAUQJDDllZnwoXeqkMeaLgPIk+ffDPQBbGh4pWK2FGwaGCW4VvDblhWx97O1pHPNpBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759697395; c=relaxed/simple;
	bh=+RKuS7Qc01Dj3n7NPx4+1CBHg72qp3vH7UoXvPJYITs=;
	h=To:Subject:From:Message-Id:Date; b=k38WlCBS/9cDq5ymqgzu768Msa8u0xBBDf2ZcubBbR6RazCCatL8KOECY01mZwPhgDk4DZlKT2Y0Paxc12x3zkKtwbocCwrAMReYuE4Yu/ttNdvXY+GaZkqYW15Pb/KbrAW6XMSvy8C9sWWciyizVjHbyuMkUx3ff4UQWxc1Tfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUzkN6jn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUzkN6jn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54BFC4CEF9
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759697393;
	bh=+RKuS7Qc01Dj3n7NPx4+1CBHg72qp3vH7UoXvPJYITs=;
	h=To:Subject:From:Date:From;
	b=jUzkN6jnONIa607mFf7tPpUlocrIDC3jE79l/Cm5GnfgcfFciNBS1Xv7GTmwXhb5H
	 76U0HGQ1LTP8CjNeWlIucOr57BP3CtGGrQyzIkVtLLdeY7i4KFN8jDpkkkWPRjI9Ta
	 g+uefjbtyeeLOFqZL6oWFTZ1B3ZqT5cGpHxH9YLjmFjlPtvE7vsPQDsxuURvHdO1G/
	 EOjg7wR1phlSEOuU4mQTAHOIPSbDfX2xQbDkfj2o309SQNph1F6yYJ4iGWLu4tLczc
	 whya7SJQXzVq4F1hN52PqU5HZEyUv9tXkQuvwbdPPtCvX46iYqhZrRYdYXBbGnwTrN
	 jJ1mCUkIa2gSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922A7CAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175969739357.3621.14587524330121862206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbb82ac98c6792beb50d03a743614da5bcd5a3cacc714c37ffcf19de7dd8c8fd
Date: Sun, 05 Oct 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759697393
