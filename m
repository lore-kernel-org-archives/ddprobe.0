Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E02E27E1D5
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 23:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763509314; cv=none; b=GgctykfawnRoKP+LuxknIfQ07MeMyUJL9RsSqwROM8zOseHRvo22u+u6s3eFflvkEOYA26byVrBpL2cORzTf9krdCw5QckMdkY/wBiKOUuBPZXk2iHlOUDaE/TTSQ8WxfGRVmNw+FP8AUav3eOKPxdK3pOpaCCl52Yzzs5p3VK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763509314; c=relaxed/simple;
	bh=LYspr1/TUIIzhGwnC9SO3t158LDgDvJvuQ1qYzNOlX8=;
	h=To:Subject:From:Message-Id:Date; b=oPEiRwHNG/3O+a/hJhFH/AqojTHVLHw5Lv33dwJ4lb1mP54w4tFSAPcmi1YAW23TzbhnFZiF0Iz0F87jJz1g1lUtFFkX7QqlwJ0qKA3gvfpZKMFqD7gaIvcYtG9y+hQFsowqSuBk4u63S32VQEGk37fuh18upf2fADwcZaA+xAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujba58Lg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujba58Lg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C86E3C19423
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 23:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763509313;
	bh=LYspr1/TUIIzhGwnC9SO3t158LDgDvJvuQ1qYzNOlX8=;
	h=To:Subject:From:Date:From;
	b=ujba58LgW+O2F8pIxE/lg/oHUrU2EvTQSbBxqi0ynXDZmIfEiu7+g3mBUO285Uz6G
	 KVEwp4mMlQI+DBryw7th8SqD0JvhOYNZteBQOArpUXf+7dO51zYymM0XwfuFQiBpXb
	 zpUYy6BHSSwts11F6OKd2xoWmcRGQ468abe7SW5TcSC1Cy/u3d5GQWEpklEkqgoJSf
	 FKwlJmJLYZFosqYT+kUo8HO0wfxNkhyzlc1fUbVea5FHcyjl4725GnQCXl+FlfNgb3
	 r6YuImfHPreb2rTKkU7Akb/dVyR30YgbBIvBaeTHUr02eYNfQomeNrI1qnc68uWg5P
	 UOFaSGIwMawKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959F3CF2560
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 23:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176350931358.15804.864086209359029682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2777a1cb97e0dfda192922c0f3c1407bcd075d36b87d5ec597283cd0d8abce0
Date: Tue, 18 Nov 2025 23:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763509313
