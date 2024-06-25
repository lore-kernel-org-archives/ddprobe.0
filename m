Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD02DDC3
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 00:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719274403; cv=none; b=V+9GQe2urTfOorgWXtnXN1+XFNDKQZeBShqaDSD6yAQyADp3xkaCyrLvlK5K2nU531tmH+WVO1isJGkDmlrn7HuBYPb5Z9lcj8HUI7ANRh7oTrRVZj6sZ/p2b39rJPUEBqNIk+Udyh+hdkEOFXlGtMt3f2VgWmud9M4xe6+hGBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719274403; c=relaxed/simple;
	bh=52sff7hQR65Qwf+4LSa7wg8ptEI8sIXh2Cayq8z38cg=;
	h=To:Subject:From:Message-Id:Date; b=jHlS+sbGt+4ozq14KxlfahJGxu+9Pp3LeE9/APljvVZHPdFDptpkI6WCRgbKuON/BtNu++36OLxp0ylYmqZGWW3xPNR+kJEo7cvYjBE8CA4P3ZP34TocIg5AuPr10fir4d0P+175ZzDD7ozrdGhfRMfPgbSDVrj9hgrzus3b6GI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h4O7DhPE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4O7DhPE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0A22C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 00:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719274402;
	bh=52sff7hQR65Qwf+4LSa7wg8ptEI8sIXh2Cayq8z38cg=;
	h=To:Subject:From:Date:From;
	b=h4O7DhPEmLDVtT01/wg2ljVwyfYnjsI3VMJKtEOe+Fi6NaXdJxXqBmavy1PUtc0dE
	 K8rEHixbQOPVTDpRUDzH+eCeh5hNf8ggK3AuL80QFclHnzmvUB/rYkMLWv1KoK54pM
	 BVgU7l2S+4X+O2ICL0Q1mGyZYZCCzSWFy8NA70uAk/6NZJiC+WDY90VhAUWiufZ+iS
	 TnHQmZw17J7xLoUwICIJHKLNjE165lGr0kQtPkcFUTBalIlKayE2S+SwWpE4I8EnGB
	 ui9kxnL04evkUJQ7W735Ll7ahM/k++sJ+QegVuY/eHLWBMVFzATL6jpdfyEQbDwCF2
	 4yh4rGVs3V0AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C686BC30653
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 00:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171927440279.20264.7640026000452155328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73a955d95623500bffced8d296df445098776813fc419893b2800868eedb34fe
Date: Tue, 25 Jun 2024 00:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719274402
