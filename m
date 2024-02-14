Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A58125A8
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707892697; cv=none; b=iwsuy1dC1Axuz2likm3Dc4/n5q3l+oHX7EEHx8nclw+Y4ei7w6SMXgfT+gWWRT8QLKUt28EgCX6eqq2uyW13HUnguWD5hcOP+heLnw5nSOiJqmCXR+yoG+mtMMxtj8mZ4iZU9eXv8ux9XWS/IRREKi1majd3jGPwFISeUHsXGEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707892697; c=relaxed/simple;
	bh=E1bXg9UQDfAoShWcV3UHSqkX2MZUD5dbEoQ3U8DCrrs=;
	h=To:Subject:From:Message-Id:Date; b=hsn5CAQOKaGZ67IFP6KidP1zzXFFvdb0M7De3qwso0KFcEg3ae25s69mk1nKnSIzVnxQiEWwroTmuBWhhI9v8/ep5Od9kwLikKa1Duu/fEQpybh6VKQvR+xkGO4u5xluzkb7HswVTLqiTDKCV/kCI5yZ7kC7YxHS2UDtKOuhjEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qP82bWxw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qP82bWxw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8433DC433C7
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707892696;
	bh=E1bXg9UQDfAoShWcV3UHSqkX2MZUD5dbEoQ3U8DCrrs=;
	h=To:Subject:From:Date:From;
	b=qP82bWxwzIsWGzoynV94ppsPwtiG1bqRhhxoISWKsVQgA2+5FcWmjdaXoUvxqL3J1
	 lA4ijYcP7jimcXYMhtDa/ghrZL7DOPHG+UkxvlLt1txymeU8BD36kLhn4sUvhdKfdJ
	 W+36uI2aLg453RsS/ke9MFE4v0yivolOtSk88TRkslp0ASSFE7VTf4bZxLk6ypZUvB
	 Kn1NrnJ2yO9/w1mRv5ELaFOUrbUVMdE8tLvRmbTb1rv8hof+aKO3VZPQq+s/juETIy
	 wlWKXiEySx0fW044RhTNYCqKScbFS7DKoBE4J/i3X79vhma+ughaa4vClVkcvJIzhZ
	 WDN95m3Agr7DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 697BAC4829F
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170789269641.32413.10117583896507246099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d934702ffcbd0c74fb606770d5b811826b0c2775747f3f4411cfcb2eff41a29
Date: Wed, 14 Feb 2024 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707892696
