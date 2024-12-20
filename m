Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA571C4A1C
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734702354; cv=none; b=YkUjPnNAQCRxG0HwDW3Yyb8ZWAgkOLbMT0oiEGYT5VAwXUTl07nQXdgOZOer3KP/1vO8lHVFQqFhE024JUGnhOV6ChoZYUgiJ13+l7hsidjh6hjBeVIeparUs8uFSPnUXLZs7wTKqeFKC8eUvnvG+3YYQIk/2SrzZvjV78PRvak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734702354; c=relaxed/simple;
	bh=uXarBBJo27Z+nHGIiXBXCp8sVjxGbRhIvuLX8kb8c2E=;
	h=To:Subject:From:Message-Id:Date; b=IL+UIgAcQ7IcCRfQE7aHmBi7Uk9BD1Qp2I88h0hDnviiGBbi3jxVmRUik5EyAYwF8iLc/jxtHIKrq32KOiMNUmv5nATdfIYQZD2veP05eWlGc7PWsUTWuekpMFRIvQ9BNZcew5/KArkiB+/wNPvNG+5v79s+9CoaWkA6lIAQotI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qCW7jORz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qCW7jORz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFD4C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734702353;
	bh=uXarBBJo27Z+nHGIiXBXCp8sVjxGbRhIvuLX8kb8c2E=;
	h=To:Subject:From:Date:From;
	b=qCW7jORz6GE3LPgA1rjV0WRqUxTgiKA1NhAm75m+Jl/d+zkFGY9pD/35lhZNEMkDX
	 v8RZ/+6cBxEBLcw9mSXzj5hs0TkzbFBMz19QLO5+yh2k38x3XbEufpds129nnUCLBP
	 E8NiHHX+lOggy7Y1STVSjIEp/5gSqFmn8UVgvl4JcFcp4XE6OtFcyVdx2Ef+i4zlxl
	 parZx8MuW9GGEiD/mcd352HPtwWpImtvv96+Nm3EOYygT6ePfubSkn81o86LRxD2TZ
	 MlUovQoV9p6PGZnrI5NB9oajB4HbOGUyorhsvjE5EGwCtEUWM83hRIq7fVEXoS4LXk
	 Ihw4mjwKShoDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8C9E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173470235362.20855.6733215532522847096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41fd82576fd6976c2a6c56411c9acf1811913bb1ef931360c33d6b1f39129e19
Date: Fri, 20 Dec 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734702353
