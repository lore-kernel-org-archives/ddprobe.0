Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F9C1E5B6F
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749313194; cv=none; b=lWPnzTD3Z5A7JPG+M/jCHYlE46GikdSlkVpzG+/tNQ19PQr02IC5OrCj37rFsq6X9Mc1F9nTEZ35COTfnEiZuAWdMF0TM2jvdUz4pEORnwqrZ/hqqxI9wvsqximlxEO3zfSEVir1k03zbHm+lYSJHpafS12cvO1SY5gTvDOxL7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749313194; c=relaxed/simple;
	bh=BQfWNUj7EHYqUa6GRrDFswcce6XqondpBUIHHOR+VQY=;
	h=To:Subject:From:Message-Id:Date; b=eZyhojqOUhv4qqDMvO1+fNUlOLJZcCUCO/li5t4kyJXh7wgy6gbX/3dvhoqDbADg3ukgSbwOP/jZWnOprriCl1vNGOKHyCWQMhiL4pWWhVh1yo/eJ/ejmCZ8vzwYanFOOHLPfZh/hEAFhPhSPJh+Sj8BFheecfNAqRUaGgpnc+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HdOkQLyC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HdOkQLyC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8975C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749313193;
	bh=BQfWNUj7EHYqUa6GRrDFswcce6XqondpBUIHHOR+VQY=;
	h=To:Subject:From:Date:From;
	b=HdOkQLyCGvXyLytT57ThMq9lqE1tZDoR3m0agVztyPauROoz0cq5oxoFuExOvoq1i
	 jrjxpmUu135LV4iVShBx00rKOqEf24xaU8PIKqX21V5zloywzejlJkMrnPlzQknXAm
	 Hkgf84ECRntn4TND6R65MT6OswyxxKZjCmxrfo419z4RCo+Oo3Oe4eCvgU8P7hokYr
	 j8adULm3rpKnqmfemDPksCzHZh5kxWHlD8b7t4XKFei91BkGGzob1Anb8cieiVddbk
	 9ahEHWk6AYgvqdKWV/JZ9NTZUOziEMfgBnn/xK82xGR8yOwuS8+3psLTXXGymRbapX
	 hLDF65TTdT2VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9515FC5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174931319357.997.8630438337684355789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ac7ff38eef4b4a103a9a023b94a0650899be59830eaa37d7b374b609b4bbdd2
Date: Sat, 07 Jun 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749313193
