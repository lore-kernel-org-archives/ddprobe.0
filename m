Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5402101B4
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728048354; cv=none; b=hvPhq8CusU9lWM4WH3R1NRl5ATvUff+FIUyfx5ClbY4/wfA8PVZxSLgxxV7ayfaVHPxyU/mQAsG114F3pH8MJQfO4JJf2yy3Cm+cvE9lBbOmXkIt+zoapLzk3fJUFglUbtbjyJ69trWx/j4md5VYAD92WRori9LLECm0XHy5iOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728048354; c=relaxed/simple;
	bh=guh8tDvTSh2GKEqbB/YBWNb9Hj7qHSovcJBnJV2RVvU=;
	h=To:Subject:From:Message-Id:Date; b=KtRE/6T7SZTsjuWmNjfk9PHu9csvFdJs4UvddTNiBlYUD9PfBSSKSb67mDxS757lbCusxOgkH0EflS2UpDVpmCpKAOc5/IDLAzDNbFX3y1cnOZlnL5+WRuA8FMotvx0B0IxSTiZ/KtdvJf7poL17l/1Z05WkFpY0QLxGjYA+Kb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qIyudA1X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qIyudA1X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BACE8C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728048353;
	bh=guh8tDvTSh2GKEqbB/YBWNb9Hj7qHSovcJBnJV2RVvU=;
	h=To:Subject:From:Date:From;
	b=qIyudA1XIC9RK0/kZVtLneaHAuvKUboeKlcA+NEncBmRWzRTbbd4SiziA5nk1c48q
	 bscRNKePtA/S1s8U3yOx9vHBAjPpUPak08+6fLlvJkcpjYx2mPtqm0U/tK/7Z7Ckqk
	 fXyuP6/OMoyggEvdmpl1r4LG6AMsKgAp3PF6fm8YrVUE/loRwWfwR8gVtISah9Ke0c
	 1FypA0f8i1APpMJEn20vTVK+PIo0lEHwGKIf5pkgs7bt094dQ2DihqzHy8lRm/M6E3
	 xWRqmNNJvYiNgZsg2NFsAghbb+dBceNo9nf372aeZqi3LkF6Q2kZv9mlOiBcbfxAds
	 h2uq18lSWHe0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB39CFA77A
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172804835368.23080.6591448695111942093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a3a5be5ad74a351b542f157fb1a909c39176419a7fbce7140ba9f6b7da29e66
Date: Fri, 04 Oct 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728048353
