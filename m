Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92DD138886C
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791379834; cv=none; b=U+c/Ha8nPab/u6J8PHpoNDZczwWMGvRCNeYMpqovtAvzzwhunSY+efoqzANgsKvG3uN7NpMvEin0IH1XbuU+qWeOlXAF1Yo2AlR01TAHAzETB7z8gwVCltVaJ8dNCjNqF50GeS9zNzCHplR36+6Lrxnn4t9CSXZoLqQ7TdGc5zY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791379834; c=relaxed/simple;
	bh=OknieqlfJ17QGn1jaiaDWmrtORQh8J7MuarrBJu8pnA=;
	h=To:Subject:From:Message-Id:Date; b=eAVfCKCcSxWBmP8ikkUz7TSFWT7p17yY7DDurRAAcP7LzeJg4bqEWpevPTknPQ6/nccqydjFPUlmSTvrWJ2XmGIpJQMjIF+7O4z6hHb0m2BoUNmUBKje4d+fCvByXb906QUxl71HDWoncuGtG3+dOqUOKnqHafkCLnTcuNR01Mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c4sTjtyb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c4sTjtyb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBB60C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791379833;
	bh=OknieqlfJ17QGn1jaiaDWmrtORQh8J7MuarrBJu8pnA=;
	h=To:Subject:From:Date:From;
	b=c4sTjtybr745AAdk1oqM2eLFPrCG6fVXvrULr0oFFXMGu8W7yw71/coMADINI6oW7
	 JSFSDHeEhpvHjJS46nDPawaeM1jZJCYT4NUmtcMEVU1ZEAjZu0510iCsU/enkwkuGR
	 mnN+NnB+UdPt4kK5atntpusGF6kMW56CafyfL9l/HggYNTNIFku9OzUielpsRTiYY3
	 h6fY50uxIj2hlShsHKhq8fiTkdqD6X75zcfkHscmV4z6wsn3sNJBgAAB8z7IAfPFL+
	 3yZ5A/Yck0FsILenYtP4KEp9qfuwjep1NYhyem6BE5hPnE5k9eaXiLghgy/B7vzJ4O
	 BJugiw1lxyYLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B226BCA5FF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179137983369.22451.15774192550780226019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10c531ad5532d1b776b53f08b33c2e3c4986801ac21630b32bade4ea4cadf1de
Date: Wed, 07 Oct 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791379833
