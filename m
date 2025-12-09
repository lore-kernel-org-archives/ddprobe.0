Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2807C2DF13A
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 11:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765279374; cv=none; b=OVU9HeV+0eXUxvvYeMB4yybIOsX5T3+o0tG7PO1fvUE0IUZp5sOO/Mwz6mrBFympEThLSasN0tp2hqEophtfNjcIZAYcd8mETzMvjZaLbyqwfzc7rWbvBTRkq55z+HLwbGy/oBwAHRlN/AmFu9iwC4ew8JYVo1cGAgt+a0C8ByA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765279374; c=relaxed/simple;
	bh=brfNttEDvpeKugKMBoHQD4x+7e5e/V98RwCRYHD56f8=;
	h=To:Subject:From:Message-Id:Date; b=HXMjEeEfFR2j20KcgFYGfMaDVZAlCoRvbhvQO4ih8Ccwc1OTmkUfrENqFWZLFsKu/uyJ46mEOM9qW6QgF5JDOgkcuK8uBjYxctaNfaVlNkkOqoDpJPgqbv6kNFj1aP8lL9d/ZlCSrxDaWnBJlpPg+mtPuX5I0u1pNxvdFBXYFcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=czugqqzG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="czugqqzG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB6DC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 11:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765279373;
	bh=brfNttEDvpeKugKMBoHQD4x+7e5e/V98RwCRYHD56f8=;
	h=To:Subject:From:Date:From;
	b=czugqqzGgelKIPXLtMrpHij2KZACV2Xy0IIrLXzFDfto/Ef8OOxeKNrC4lHT+9KJ3
	 fQmsBJdX4/Flxt0Xo2P7w9IdEGuPjT9NuO7WSSRmjGl1vWUcdFzUJxsPOIKKzmKww+
	 yIDDVDpHQZPVwf0MAVWwWRIsXY2HCVCFPPhqtQfQrf5PHP3W5NKGCIUZ2k5WLnlGTP
	 zgiup5lUSwWluG75gCD24N/c998wy2zW0b5RwXUC/jW1VwgymE+U1U9G0d13RUuTKv
	 J3b8qmzAgsyOdmvzmdZZjgSNhHy2DIdYlL3PYxScvohmiTpHn4g4SFNWTXUnqLgPHD
	 6UaojOXBU2Vmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99081D1CDC6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 11:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176527937358.7973.17682792181022373679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1fd3d17cdc1a4500436be0c214867331cd7817828f323cf75195989adcbf5ac
Date: Tue, 09 Dec 2025 11:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765279373
