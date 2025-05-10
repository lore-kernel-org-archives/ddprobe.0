Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CAE33F6
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746850194; cv=none; b=p2qiFeYFyex7CZkY2a8as8bwPSGyxKrknen7UEkZDDEyEO1Ev7NnmhfX0163fNKJ35SNrwrMNmGDm330AxoG0cA1GO8p40VaUycseIaFSkhYIANjsgCOY7hI4+gg1Rkpy+OmYoYzf32r8H1HOTlw0BsG/k6zu7xekSiM/A+2E+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746850194; c=relaxed/simple;
	bh=rGiSSCZ0UJFf0E4VKNsjw59WJ9m4J71+roSlU2XPt4Y=;
	h=To:Subject:From:Message-Id:Date; b=dJVv21fnTFjDLByHQU6N781gFbjEVbUB8+Y+v1aFbJwvYkbLom8/9rNQ6eUONoNI/ZZvuNSgKJ7sjTurVf7EeJ2I6OrwN3I5bQj4jd60LeTqvCmYW6HcdvNUYvyDGW/bb7yqhmXxc/xyGq9x0g+A+dgVvjiBQzxvtM09q3Ljojs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VXaSYSY4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VXaSYSY4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC79EC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746850193;
	bh=rGiSSCZ0UJFf0E4VKNsjw59WJ9m4J71+roSlU2XPt4Y=;
	h=To:Subject:From:Date:From;
	b=VXaSYSY4o+NQn2c/VMAAQWBOfr1KCT9/PODEgo7P3f2Pa19jBgiVC/xsD6bFC1FQo
	 elGfDN5wDnyzBZyi78Q/Y5Ia8v9AQNkf1tVu0RpxCRGJ9XZxiQqMlFQYgn/riXryca
	 1xABPdssFtOA2qLgEu7ThyDb/JsE3BY2VYzOXuK9fcQJsKXgsi5tlFsaFmSS7a5dek
	 HhV87t9MOEuKoyOBw6IVYBrk00SspIo3eadOFVEj4kLkTRKuk+sPvr6ohht1RWfXgd
	 8ZUnRlVokN4EMeqAHqHHOEY+plXDaycQ+biE3u1+cCuo2UVK0eKLFDSfk3RCvecKIl
	 m0M308Pc/8Q2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982F1C3ABBE
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174685019358.26213.17003820587433074007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17d9e5ee3cbb950772b3928e899df82ebe493a4a013313f49d8e82ced8397be6
Date: Sat, 10 May 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746850193
