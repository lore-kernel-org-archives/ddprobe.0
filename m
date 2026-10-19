Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=10.30.226.211
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1792422634;
	b=OUB1PdVwkpzfN+dINV4ZmbMO1N7HCpMM1vts+XH0e5n/f3U0TCgVCyIwm3AAlXdddlHD
	 j/1pfddLDEWiGF66hXq3XuhOAaWV2KCkqKSSyq2WDt+tss9gSjCbwLNPqGuUzyBs/uFGZ
	 GuGUhFO61QibH4+GY1N3qahKRZCJ8xbMeP5WzwgMGYL9Oqi39SfzFCxUJlWUg7qfEsF9R
	 XRu1CoiYvl0YUMRCw5Fm/52htBQtcpz8P5S0qyaeW/twmE6JVtoOou0VVzzZ82wGMF7yP
	 iMBOUU/DdV/g/M0K5hfZgzGCAkCn04JRntTeKd5JvbnHEOeOc7wNzAzCY14BGaHmd9g==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792422634;
	h=Received:Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date;
	bh=Ud2So8zKhAVq3gLCp3vY9C7a5xScod8NnJ0/vb3txfc=;
	b=CqjxKP63hT/eX0QWlaZKiwj+85diq1cq6yvOEed+5rGm4WeHV8o3DDGAPrtV/mOOqrbh
	 fWFjd3uX29vcJlRlMtqFmYQdVGI1DpXO1dZ0gLiSSALau7xR0iBy07JdiW3P/NJoWWWyI
	 a0M2jzwMoxGmV+B3OFZ62uJGBK+ePniBcwjE87RphTF8Lf1+JiIJ4nQM/boNuZcE5DFcR
	 8VbFKrjdbk8EBgGx9iAbDx780uLOqM/R+Huut+S5v4QkYkQlPtD2JxWkW+P8PFJKq9lfv
	 lAyYvhuvEr2ktdZFHgiWc2PA01ycKT8qGguKZFqC/0/V0tveR3bEgqCPmR2tq857sjw==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dkim=pass header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b="sO/gCP8K";
	arc=pass header.oldest-pass=0 smtp.remote-ip=10.30.226.211
Received: from aws-us-west-2-korg-listserv-1.web.codeaurora.org (ip-10-30-226-211.us-west-2.compute.internal [10.30.226.211])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9751F60882B6
	for <ddprobe.lists.linux.dev@localhost.mlmmj>; Mon, 19 Oct 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=sO/gCP8K
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73D236513C3
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792422634; cv=none; b=brMwZH+kuyopvxJkU5MS4vg9u37EN5GYeMV0T9bLPWIwAjuLYV3KW1CBKy2Mp3mmMj+mkSrWbMrw48lyslSh8P5Lk3pvbTiqTrFSvIQcFgxyI0Jjek8cfKoZjm9o0fUXTjAyLrY/kqe2w7of6AUNfd5qQFnvUssXItHhuA5+MS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792422634; c=relaxed/simple;
	bh=Ud2So8zKhAVq3gLCp3vY9C7a5xScod8NnJ0/vb3txfc=;
	h=To:Subject:From:Message-Id:Date; b=kuc1MpPiErMTtC+QmrF3yEg0GLyjDitaeQ4pgyQ7OhkrKUjmn4BYIpGK4qsz9HVyxNEkPOwUEqionj0k5KFYtNV2RxbnmV3eW5wpH9cQQdxKpUb24DSPCxeNFWVqLnxOKrp4E1DOSBDS2/gi3YtZeoQ30vIYRcrvYQUboW6Xk1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sO/gCP8K; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7DA5C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792422633;
	bh=Ud2So8zKhAVq3gLCp3vY9C7a5xScod8NnJ0/vb3txfc=;
	h=To:Subject:From:Date:From;
	b=sO/gCP8KRGRpo7Q3JWh1n071CN51mFUMwZxNsrt57merCv8aNcPAJDDsb3dp7LG83
	 oTTNbecYNBBV1pO2x1eky26qzeQiFJ8OPgRTPXLoX14tEzPhZcocagkbvMO3kxmaGZ
	 cur2XnGUG8+COGPqWEIX08vGw0ECpkCTu06i2PC+mIFRUaBN/wd7zX8fmQg8ds4lbV
	 85+OcD520fXv2IZxPYjG44UO37P2Klh6AowplXgniGELegD9je0CBGPP6/LhBjMW+g
	 ePdQsvyGhX2VGkKV+6Xf0e+xGy6wUvlk+gSfy1KwMUVpY3VXnXjmGSgIKXq1WXMkmm
	 yg9+a8kXSd6Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9178CCF2E6
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179242263373.15915.9338521541481543345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29fbe069d20ef3b34dfc997a2c22b6b271723b8efac9cf45263a16df7f74d219
Date: Mon, 19 Oct 2026 15:10:33 +0000
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Post: <mailto:ddprobe@lists.linux.dev>
List-Help: <mailto:ddprobe+help@lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>
List-Owner: <mailto:ddprobe+owner@lists.linux.dev>
Precedence: list

rtt-probe:lore-subspace-rtt:1792422633
