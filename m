Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9062B79C5
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710292096; cv=none; b=q6Hk6ER23y+x5zianLrF5LP/Ew21zNfMr8p71s9VFD9pwXGMMthsNBtwYcs3NivOSbgA6JYLoeCgYNx4J+rXJhchRS1b4yabkIS8W65zHTrH8FhXCgdBbKN6ESYhJ/MhKDQswDQ9WAyRsrsH0tCoWrbw3uHSIQWOhA5EavaRBC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710292096; c=relaxed/simple;
	bh=K/ThCrD8cv1ktOlHP9HANohX8ApGnpZdWmdviiCooJk=;
	h=To:Subject:From:Message-Id:Date; b=M5760vxVVfkk6ZNjhcbL0odW95rYt1KFXg3vBBuhdF1B9zc5UNIuEghxwq9OI4SdiSBeUnXIyFBz7s8uvYjF/IPl5ezdRoO2cNd15xnK5tra8F3TQGk1JEMZw1mrTNZGFBC82dJaHp9wgBqthId/yjEl0ueDsDuS8avkgzFXM6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VKxWeb3r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKxWeb3r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75F23C433F1
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710292096;
	bh=K/ThCrD8cv1ktOlHP9HANohX8ApGnpZdWmdviiCooJk=;
	h=To:Subject:From:Date:From;
	b=VKxWeb3rcJXnmgeYDhKQuxRqoenjdz59jTSixm5mh4V12lrhL13K8cdkiJpvfCGWo
	 irkNn7sRkcW3CnYR8gpgikagj5sMOU/2n9K5AjCd+L7x6bCn1Z7cAJCKRPn0ktU39e
	 wD3dXwjazAzTA0COiP9firzNz1nty2oE1rAjwgVNOE+RMNp7CvKVeSOlngJas2z6XM
	 H6OBJpQLWw+LdOvknIZfzrRGRwf6JvOdC+xtkm3Ry8Hr0m1Tqiqg98QPwWr8HUG2Wm
	 9WRzN9yDbZQhKlnY/SBvqcoiqGFmcMLJvmTAQDLpVufdGCM6gWgZjHV2LzAk0wR/Rz
	 6JTP9djrvFESA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 606E5C54E58
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171029209638.14732.15510024248392211095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab72161efe65ce289803eceffc36f3fd25d489ec92f72d06f82558abea06e9de
Date: Wed, 13 Mar 2024 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710292096
