Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ACC41C2AF
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 22:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718576903; cv=none; b=XWGaQuM2SpKDWPnu1ao0Hxoa4X6jJ5OaF4Zf0teXz2ELQJBmKv2G6qlzQ34neZylVQailgFzztxvCJQIvofDgXQXwAkSl3ZykwCLMGZEWpN6sESVuSJwq5j0pvStZGwI3wR1lbz904f88HUnUIwb1IexZTGGyUrg0IeeO7sepNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718576903; c=relaxed/simple;
	bh=yPCeArLPJueALXg6W5n1ydpgbMQNCDWvLxf1gY5n1M0=;
	h=To:Subject:From:Message-Id:Date; b=Y4KoccmY3V0BnogOxNyyOKdl0Efqio//D8KkpMAeywObOlIIGxBvxj1Ol8oJ4fwRoRlz3qsFUqfEbTngyiOMcfUq99Skjj7jR4kfAuBF1/wAZwo8A+9wXRGTkLhWq1vC/OimSk9r5XQ2gW/0mowrY/GLYS5ujyKwmlnt4CxY4ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n7IE8o/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n7IE8o/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0247C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 22:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718576902;
	bh=yPCeArLPJueALXg6W5n1ydpgbMQNCDWvLxf1gY5n1M0=;
	h=To:Subject:From:Date:From;
	b=n7IE8o/8FfazvP6HpsEarg260skDRoWxgLa2FQd3BoGZXI7FsUcYlONEGhnmanvTh
	 Qq4OhO1UJ+lQGDku+6hYml7jPXwdrzA8NKwQIA65vPi7DP8tPA3kBOpvKPyCz9WE4G
	 lDCebYGwjMFmUgs5jWOCSaFs5qXo0Y5E5ygp15fvUe7bLCTF/VaGQQ4F2dX1VMXkJq
	 vQYIpbv3S3BEs3WO1ndhp0T8/fcV36eae5lUpdVZ67Agb6Z2Wpahp7mddTeXnPUXho
	 00KvGwsOnatWV1p+9B/uw/Z5a7mSesG72nq6bm69NKxw1QAy2+xSQQcRlxJb4vm6BO
	 2sigC1tmxRHpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C743BC27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 22:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171857690280.8119.522403442000263103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc2f7c722a35d3d555b98b457ab04ee7d49a7c663674f22ce0772d1e74a31c7b
Date: Sun, 16 Jun 2024 22:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718576902
