Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237673446AB
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771600494; cv=none; b=CyAkIHgc2T+MaFIKq7gCHrgRfBS2ySpggdiNY7qCL8OVdvOBGjn34hS6CVUP8glHfqydcDp++D6dPH41FaliEkF9IeXnIbq6re3j4JxOOcFa/6qsSumugmOj0orftikY+DuxGzP8wZzf5g06saQGXOK4a1VYxy8UlZS7t2nZ5J4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771600494; c=relaxed/simple;
	bh=YJXEv5BPfu+b3Rqorr4O+7vWB3m1HstMKQs5dmLL0/o=;
	h=To:Subject:From:Message-Id:Date; b=ugrtudiIkB0tfCfTNyHx0eD08zBHO6BsryVLtkpoSQi03QsHY14GrZbnN2Dswiv2oKNvO+d49zRVxVltzimIc0yNHkYewKDOs4Q/ZD4BPPr65WYt/zVGnZczh06AYxJx11URSgfvfpffGI4NDfd3cB+c1aFQPtfX0HQWEyHiAaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWHS4i4a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWHS4i4a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B05FAC116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771600493;
	bh=YJXEv5BPfu+b3Rqorr4O+7vWB3m1HstMKQs5dmLL0/o=;
	h=To:Subject:From:Date:From;
	b=fWHS4i4aMeAyDvM0y9lZA6sK6opJYsVw32BBOcEcCyGnlvqeJ09svr7jWqwnqLJ5r
	 +iu1918uEygtF9tbczYAE7VmiucnI0/KRiOBvGU4OuWqEd6NeFa8wQxvJJdW6/b05X
	 TX8djLDnqShZMYFwurJzWYrFpE//nanG7qFgCqtzuSwCgm2X7YX2OZeln5AyuAp4Dr
	 Vyo7KY3ygBrC2P9d6SDMEirT0R2tp3x2BwgtlSAG7YAAWH8hUBgqqBai6GIotwyq6C
	 Kmq7NpnyzVZzXLsXwo7NuRpWQtj4GfuVeJc0lkwWyYYXZyjr160CuWtkOedHAUCcKy
	 c6Eb18l5W03RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94514C56201
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177160049359.19408.1581522089063675589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeeff5e89cb80c5cd2f0efc94a311df6f0b4662729e26e88d47973edb8d8af27
Date: Fri, 20 Feb 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771600493
