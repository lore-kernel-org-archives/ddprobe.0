Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3849B2581
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747217994; cv=none; b=swgQ+lPe3H+Vz9XQnOpVQegSZixO4CdDxc1+3yYlqFKBRKZsPcr20zXDRFfkMbBnzCBIojO/NORJLaX+/fRheZepsNL8nPvABFQzYTBepyFUmEwj/bJdyvIbMqQqyX2pEgpOo8tHlK9C4utwbqwuHtttw9T8Hhb0QwwjvuNoVd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747217994; c=relaxed/simple;
	bh=q8cU61S6HWSblRAaXSSto/eMLcrOgrUtwl7UFlxoSec=;
	h=To:Subject:From:Message-Id:Date; b=oXuxXgX+8QhV8nQny0BiLaP/U+KuLvdV1c/EWKCD59kaJ7pIvKfNJOVb0Tn3T6BGdQ5Z15Cnc+zieOMdZ9r3T7c4lPZ+h6UIwP4lJC2X43Xezck3LaT3C4Nq93mom0ykKZimaPNJwNRNB4Hx2QFcUxLuu+j+0WC19B2DwADyeZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NI65GNON; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NI65GNON"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A669BC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747217993;
	bh=q8cU61S6HWSblRAaXSSto/eMLcrOgrUtwl7UFlxoSec=;
	h=To:Subject:From:Date:From;
	b=NI65GNONOkGh5yX7/K63hg12TrFNAZaUd/IVQ3YHb3GHg6+pUYb0iFl2ElpIqA+PV
	 0TpHJieB7IC/4GUkqpajEQBbhljwKmjuilrkPkapCjHHkvUyZkqjnZ79wQeGIEQc9Y
	 SFrIVFCX4jReDwt2t0tHnMyfc4EtbL3+U6xR42GZ5S+Yrm06kUUWAB6hzvU5tdJIdM
	 yXB/PFZ2wgMu3lmNu+QzzZQPUhPzL8G+wUSSW30dYKJZJUuI95B8DzGs6ZYPXWlO+I
	 Zn5Erxba6O8ICcxQ0ckR6Yy2kFzCRpOt2WFSsYuR0/9p5GsTTbnoQeAl6FKk17Ijh3
	 C1Kz2sEZKeOSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95004C3ABCC
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174721799357.22288.17022361391192427022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5c9470c70b67580368ca702982c3a452fc56134749212e7fb2cdb0453a28a1e
Date: Wed, 14 May 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747217993
