Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5A8C2C181
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 02:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763865713; cv=none; b=tDEvh+vEAs0RLTQUoG9nhrsey6eP1zYYGTsOSO56afQ2oLX8KhuztLr6Ua68bEZkM1MjXQ5JtiS2LJ+PT1lOwKWdacKTIAkARVvDByi69vV/RJd4P22e9GYht5g5SVws/bJpx58jetlYNwWqUiu648OqIBvU5dI6t1+28JHcD2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763865713; c=relaxed/simple;
	bh=yIZyShgSfnGwmAO8yO3nsCtAspIg4eEdFXTOkCl0E04=;
	h=To:Subject:From:Message-Id:Date; b=WTtge/sf2eu8nlSxZp9ETb+UPxBRMepsau08uVJUYl4xH96ffbFyq5BPPhcZL1m/yWrUoD0sGITouK//eAzmrQGehHTr6y71Jr9TPY3gFegit+8+7rzlb04lQ2R4AFyOhx/mmFmXwCiXU2wtrN+oK5wiRnKMstO9JX8mMpTK3Lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sMhbNC2w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sMhbNC2w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE06C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 02:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763865713;
	bh=yIZyShgSfnGwmAO8yO3nsCtAspIg4eEdFXTOkCl0E04=;
	h=To:Subject:From:Date:From;
	b=sMhbNC2wcDwjynZSgbCu7JoQmMfbRvF/Bq+vHAqzrVZlUc0O4CE2iMbDJTO4s19Zs
	 aqWO8EvIdHnA6Y27p/UUgE8/TYrp40GsdJmfD49z9p/k+VKRUg6BuTCzF/1ZvzZIxf
	 3D0BANzVYgqnnphYwnjOAqsPqEZXv1TiDN8Ik5Nne9v/1VLlGzzl9gOPWMPA5ljq0o
	 7k9MWnWDX+K96ooSDUU3Ijo5EfJO8au5+vle5E87UUKby4SqDZH/9Pvbw2mBprtdEf
	 awuXdyKKGovkp2Qk3qG5CqtLvH9FVy5mJ/roJ/Ygyzm4fI3PdaOze5EPVHrwz1EN3h
	 YgJHZZncJLYuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F10CFD315
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 02:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176386571358.15946.12498757382210710975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39d1fd73a4e055c237e91c29ad45f63435c9470d9a3a73c6d8c49b95869f0349
Date: Sun, 23 Nov 2025 02:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763865713
