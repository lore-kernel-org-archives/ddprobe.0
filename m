Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38EA433E35C
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790590834; cv=none; b=YtmkmodBI+jD9WMYHCp3yMyY67M+dLoHS+v6PfOINqHXRbeKSp7eRJt7Vk1jht5X3JIQYcblzQZ/h0c6qDZOi4gdaZCVfHlHQeb3gQMSMMOXYOZdvT3vRXu0MLbhesCIiwJGH1YJyaVxDzECX6hLIt01WuSlWOFGC2UdeBgJsgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790590834; c=relaxed/simple;
	bh=78lVdIS64Q9m7k74CgUL2bbaSndFaw/45/s9pkCnV0Q=;
	h=To:Subject:From:Message-Id:Date; b=TF//Vofpd0LbW7cDxoKtEIKwT9teX9jytHNM820+HKiEX57s5rYTkNyx/1d+jlGeQYMFC1crqUSd2//0AC6ANeTAIF/GRHt8cV9ViOUxeTbnNJ/SkhOIOe4WpJjBhFzIC0oydA8VxK72VYnWVeaJCTyS5aJhCwuORWPImrXVQU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s/OPk4AR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s/OPk4AR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4175C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790590833;
	bh=78lVdIS64Q9m7k74CgUL2bbaSndFaw/45/s9pkCnV0Q=;
	h=To:Subject:From:Date:From;
	b=s/OPk4ARczXRabprHWlc3kQLIFVS30S+MtAqIHDvYWUDgW88dFdJ8myUsU8OT1P9b
	 c/vmkwt/J/YuJCs6Lk12owfy5vjGIa4gYW9encR3lUK1z5mmg0EE4ihbl82gZmqPbE
	 87ea30EncvPxhL95z2XomZRVbOVh6KFXyJ4K8xowFA2vvokEdnV9b/Ex7Zu+/oT4nx
	 r2xFVEOnje2u53W7sBeNZ1oy961K/tH0HxpKuN0pV1EEh9GtRtAhmo6P+h5AakiMly
	 Yw6i6VRb5MDnsH1FDyjDqzkjSbiwaVIjE9UOwYssvpXNAqwHCKjNidvmna1T68fAFl
	 xuQ1kTFRplTaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0554C9833E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179059083371.30420.9820512638765127309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb7cd45f71fd0fd2f394984e1e40a4b96d4053658edcb784bcd953a2126a1093
Date: Mon, 28 Sep 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790590833
