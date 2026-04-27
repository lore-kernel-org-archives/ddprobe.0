Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219812EDD62
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 04:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777265854; cv=none; b=ROFAHqfLW6gf0w2ubdun09ZU9lNY4EL5okym3vyejO3EEu8N5xOAa7FmvfAw4Hyyeqa9Arv6mICoV+coAZYCCt2cdKEmve3lkZ0AdWZqZYBiIMtBR8PjE9sF0bpWZm4lMYEFICpxXlooewenaoNYo9NjPVHuTkmyXygXGjujjts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777265854; c=relaxed/simple;
	bh=KPqW5C35PcpxXVa+xglvUUuME1egGW1WbVjrj6FfQzA=;
	h=To:Subject:From:Message-Id:Date; b=KWllGJ1htMRdTKwi0LzuYGq5jT7tJUkUZwlW2NdEPe7QBWWfiy+hItYgwcMRK+hsAq8HJzXVhxvBbqQca2SWzANokcDNmOe7SXoKqJ/d0fOvgJ2NPnV9NXucpzR95F14yHNYxS5Fxp3h2QgFVaV6/OUjnaGdqq7D6+9IYPBN4rY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WcmmUzTX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WcmmUzTX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9BF6C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 04:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777265853;
	bh=KPqW5C35PcpxXVa+xglvUUuME1egGW1WbVjrj6FfQzA=;
	h=To:Subject:From:Date:From;
	b=WcmmUzTX841wg1DWpw29YgIjWM9O9MVy5WQ8A5Ob1AOvvgUv3X/EwO+BLhy5oHJuM
	 a/ER/CQ2iHzbret6U73fyvxZsHEBfhJxr8UrcVB/nkqhDgIdFbg6dhjdEO8Z3JWLug
	 tdftmK4tJGeCT+NNoWrxCX57zf0nZjlTxCMUzTpBfjDNrM1PBvydTm/5dOnkt1dVsG
	 QyRY8KfjvQnlW7CjzHYxElHdBobKAWiv94cHcUTyKKtiAHEaUlW11w7E4yAvG0NUJk
	 Hh6kdZDgvi+4XB2IlKoIns8cbIlU4h6iRO3kdcCJrol9P3Fkxk9AUxjvRYbg5mCX7g
	 +O/kKm7AceH5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA753FF8850
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 04:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177726585368.3865.8068919744587875524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bbb532a13700db40531e8eb6ec35840a5c89a3e9cfdf8f9fd186ec7292f2475
Date: Mon, 27 Apr 2026 04:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777265853
