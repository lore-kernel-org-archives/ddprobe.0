Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1130A202F7B
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756083594; cv=none; b=XJVkfjh/mKd9ue8y/UZBAc9Hv4JOjrjfe5GcTaUbIfiHTkbEtp3je9AOcA73JaJyYz7VwVbkrpUqXWQFkDppA1zt+Mh6r+DwZZBKaz016wIKRqqR1HbAWciNmCNxGjuTRwaHTuYOosl7RoAtoEpCEYfYDN0OW3wco2/rqvjglgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756083594; c=relaxed/simple;
	bh=Nfav6vG9HIhCzElvdVaGN34sRVPyYkaOEUlL/WYxYkw=;
	h=To:Subject:From:Message-Id:Date; b=gFzvAEkxn80aADr8ywlG3XQKD0wm3MT0On+/byqq9LmZO+/0p0fCyj6XD8m3DFgaZw+5Hn4m784mlZouYp8mNs0u15Z20ALd0GrAJMY5uvO1E72gGNJXd3r8fCjPTPURFjEKI9JyzZENxqs6vXcqYg/sm8AnJcXtCnhzDo1GNJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oAJv49El; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oAJv49El"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C70AC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756083593;
	bh=Nfav6vG9HIhCzElvdVaGN34sRVPyYkaOEUlL/WYxYkw=;
	h=To:Subject:From:Date:From;
	b=oAJv49ElFxO9IG+oOpFxnxawMspj7LuhFkq9RpZ/phDJiNBsoqbXP04RAQmQmUOtE
	 3UE6gwr2m6qDC79Q1/buxc70+UeBEKR8BrstXfd+cS5JHhSWVZzP81Kc/xezfh98AY
	 asdg7Ng5hIsqMNEjLIIILKfB7yFkDtcxB9eCDdRxyvgWcLWW4WiugmLIUWnMy4XYFY
	 tlxF4zO3t8LkIfsc3y3fkoZLib/xvEHmnuABgzqpu9LuZ0flCUbItJXo1DCAJlrU8R
	 VmO/T4egsq6UcqaoG6XLkxgnBq8SuArjmVSWWlO/AvQg01a0vKaSAPaw2gqMVwUDzN
	 uq3y+oa+YSkGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECA8CA0EED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175608359357.19448.17157065153409195113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e31e4fdc606404b3e941ea2c7d810447ca35dd09c7fa2f02d3f497964ee13d49
Date: Mon, 25 Aug 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756083593
