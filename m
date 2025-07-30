Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A61717BBF
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753841994; cv=none; b=RNMxRsQTVrnqacY9srHqGq9N7ReXhdBS/lv144hgw1mOwiTdT9LfaE2m9P5cFBFsARTDCPoRR+DWRDCKfIefkWIn7o+dZHrC5rJ12o1bNG/BR5aWaWLA160DZ21cr6jjhVex2sqKVN/QWOwdTfirpQOQkKFu+QCrN+JhC/rCiXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753841994; c=relaxed/simple;
	bh=FjfwrGtr78kwh+f69GKzhaWq2XssC8aRXIJ8mfvSQUc=;
	h=To:Subject:From:Message-Id:Date; b=MiJxHoG5xgXEzpy72T04xoxTjaKV+ab2XUK2AUgGNum56GQ/D/uLOdTfbcf81bwC+dyxHBqlU7ZMdHp9dzcL2T9nztZz15+ysDXkZRbTbDvkzk3tAUmJ3SI8OjBryGmQBQoBPN127FzBRannQ2kMGr/Z8MWxU2wxMSCkCXti3C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xt+AimQb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xt+AimQb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7260C4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753841993;
	bh=FjfwrGtr78kwh+f69GKzhaWq2XssC8aRXIJ8mfvSQUc=;
	h=To:Subject:From:Date:From;
	b=Xt+AimQbEYe5rm+ug8lg1zLiDkKJeyoE0LESV+953DCqGZlclyq6Zi/hiTJz4GP59
	 ZuRshrBfSwcF/x5BJv17mkXXmhTqT/D66ePt2SVSHrxa0m/Pf2sDg1nUZg1TtHeXFp
	 o9oE4VAr+8CnCQlIAHtkFWgvIGZnFWj/fgMizLEkVx6FQu8duazmGDfYXTRbJ4TFyZ
	 Opgbm8j5ZqjkS6DZBRF5CWqZ8nCnoOlOzFvuAx62OhXN4qDivcOR6FMqvfGyZdSovs
	 ybzm7R6JEcxDVYo0yuDb3LfzdFXpQWvhicoeTdkTKEOhZWyArsI0AifYO8XMh90OT/
	 mLQwkXVJi0RoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5A1C87FCA
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175384199357.18070.14125636117421264412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d50cc62bb82b37da2561770da48712c0244f26302a597cc482f5d7943ba78773
Date: Wed, 30 Jul 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753841993
