Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BDD364EA6
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 13:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784640514; cv=none; b=XyLC7wgaX1dX6W9PY3Fnadu9njYYJRm+U//eJl/W1KrFNUY75aVADipg/HSkw2cPp5vbNBxZH0y78XzGfVTMKtrKlpoRU4QM1fTmt59meOvBCFcYxgGYlvfEpheV+8yQW4D+k4GN3FiQu6FcTvUPLqIwxUlRN76B3xO+MBthcZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784640514; c=relaxed/simple;
	bh=2gl1oxWDjYxkKb5vQvwjBvIJfAA5pQZTIgiSrJKv4+A=;
	h=To:Subject:From:Message-Id:Date; b=Pyo17GQSaUvHNY2vBR/hDoIS0JqyrusXDNNT3152Jaz6sYRi2+DepvE/MP79rwVAzLwx5Cj/YPtZBzQmCp+DwOdX/mWCQuB9fgdwfCw41V3vyvDghZKLukhtHHEPW+7jVVPHa+TMHccmC9gzpMmZZ+J9kX9W30FJNnk8IgCPH6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBbZaITX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iBbZaITX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68B7C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 13:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784640513;
	bh=2gl1oxWDjYxkKb5vQvwjBvIJfAA5pQZTIgiSrJKv4+A=;
	h=To:Subject:From:Date:From;
	b=iBbZaITXxa0TrGGB2D27jMzWg6gQ3pIos+7oJakqfM8mNCOZMyNcYOatpH8P+VMV2
	 7QW6OSiY0FA38iHD5OYZu/qJ6I5AP4sh8ZYcgd5ZLqZfepWJBcqjTOWtllCDWi1IeD
	 o4xZM4fIsAPMfFJJAi9SgoFAv3uDXk4izAf4be0dqyoxYHMcjqmXxfLw83tGqHlXlj
	 JbwXFpKBK1KM2ntBbxm7yT56jIMp5AGDhXb3ixiJV5j7GtmdJfd8c9fKg2HxCHoWkt
	 ofoEkJIDG7gLjmz21BQeLVOvAFrHChqwZbT9KjgatyfgysLsL4VpmwY1Er6d4JfcgF
	 dzA4pYg1rkfBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC30C44532
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 13:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178464051369.16527.861502879936210481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f741d3c66a4926e4f22f46fb79d74ebd9fedaba5a456d532e66c49d49251b76
Date: Tue, 21 Jul 2026 13:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784640513
