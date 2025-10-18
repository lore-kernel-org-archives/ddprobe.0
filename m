Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1371F4606
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760812194; cv=none; b=MpV6vcHBlaXQb7RZZLj6FNlyKKidakSt7sCZc3yI51j0ZBNPVjBLd8Z9nFkMHyhz0yjdumZ8j1RPc4ZhDkG7s4SAiCh7Ll6gEBtM24f4Wpokq3lfEteV/G4ivhb4VGo27lys0tGAP5ARFyOumoXZDPZtgdtwaO6N8KyULVW7W7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760812194; c=relaxed/simple;
	bh=ePNNBJoXYApxBleGWk8LRIIxB1RledPMJFZfOu/JBDc=;
	h=To:Subject:From:Message-Id:Date; b=C4gke8F9fvf6B7nLsMvh/kmsFGg/mUdNLL1C73FGCfGFae/EzJIMqCMQIUsjcfSDISnb7Gr8iAMxaP3NZPFog8kVKESfA/3pzQRaAnjo6XT9Ik/w+gV2UfeSfbSirM3LpDMzkqBkadGvgJQLMVTzlRJNVmaF2Cp8mlMnuhd/Ww8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DehCeLHV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DehCeLHV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA803C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760812193;
	bh=ePNNBJoXYApxBleGWk8LRIIxB1RledPMJFZfOu/JBDc=;
	h=To:Subject:From:Date:From;
	b=DehCeLHVycaer8YrvqUUsbVmzCZKEW65O90R8q5zOWXqFRQCTSFo4BzGXuIDB10D4
	 EWYN8epNqcv+h7BrcLEScgxJQpJuCsSuuNPtN9wokOBjJU2a3655R7WYghatWQu9n6
	 jibWfVdKYw5BWmxcBVfm4hbtAe/N4iM4H36rktHlYiLIcLHZH1P44n2BJGmdctQZEr
	 fHFokE+uvy3YODNUzpH0OZf0/VWdtKL/tO/fDzCAZ7i3gLg4s3XhVb0CTl+SJDGC/d
	 uiGxWYqZ9YRceXk8mHSeocRiBIg0S9xLfe4ksn7VFU7x/6OoWHX3/vOJJ9swV4Cd5a
	 3N7x65J3KQVHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936AFCCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176081219358.16953.11689940683934337252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c495606cbf44d97e9d748aa4b3c3fc8b2976f45f650e55c6a6aac3834bfbd40f
Date: Sat, 18 Oct 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760812193
