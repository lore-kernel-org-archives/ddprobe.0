Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E08143748
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747999794; cv=none; b=r6/9DgcdJADHfR0oG8IFK9HETT4Xd5J1BGgEanpyqd7/WrFCTNW3GK6Ei9EY9UTAkRYc+cZuEVghxJNkVfoawQ4VRfowT0lNUBqhGFSF/70GszSZWNJQn7ylFKW/SJ7OWMHGRc1MjlMWLFJdoAYJbMsacSY0cESY2Ti1sj/632Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747999794; c=relaxed/simple;
	bh=GKW5zf1XHRvlorHsY/AaK6hwpyr7VTLqqwc8RWZDVII=;
	h=To:Subject:From:Message-Id:Date; b=oNfNdGDmjTnq+fW59vtyvUWSlj1XS+hR8oyNeRz67oGPLtJcy+BAqi3cVStAISyjYKUh8V80LUwyLm0RZVinQVb2ywUsNknASCgn0DEDeGLa+5GAllVrkYZ4hrT8ny1HKYy/fOGq6TWEl1FdybZd42hI62hkuP4YnFiKWQtpyNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tt5vhW3S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tt5vhW3S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A649CC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747999793;
	bh=GKW5zf1XHRvlorHsY/AaK6hwpyr7VTLqqwc8RWZDVII=;
	h=To:Subject:From:Date:From;
	b=tt5vhW3SGcdDA0qMYl3Ameogbfmz4IgyjfZrjV7ZkkDiDsSc0XVXTUmt4eP+5iHwp
	 aAUUxkne2a4J2hzYp2iO2meO3WjatILfIUK4t/uyzc1G7FM3BvzUug9jwRjBwTb52+
	 dJl9yVSxXE72LXZOnvtMD43v4Hl6uEyQcRS1R8bD+Rp1O/0whEUmt5apuLH5sSW9+8
	 V5kGf4c4rt7cLIK7UGCnLBPBz+1LRGm+LzJGDL0ijmwoG8sYWuNa2+1FM17a2rj5gQ
	 f1JVu+IZAP/ynQP6FCzGyFKMakzp7xpKXMy84BpRP19cTgSWSJxwG43J1fR65AU+Ou
	 WG0jNvUV3dFfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9201EC3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174799979359.2423.2558121885051087830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67438d3a969199439ea9a779111bb8aaf6d2122ccc1b2cb9cb5677de8c5456a6
Date: Fri, 23 May 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747999793
