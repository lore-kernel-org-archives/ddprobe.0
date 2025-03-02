Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6910BF9E6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 02:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740884334; cv=none; b=K8cusf+fvEGLfmIsAxWjNMofBWtdaghjrNsFgW8fn4iDzOJH6qyj758Yk/8XRVi4rvptbNaAN1aRzDBqHz2r18GHraBc00I8Ym3TwQFmuTOJnBBHbRhUH6/Dc+grMZ+YVK+lxmjnWQlqUrFmRd1E5FmrxGwnFjLGd29Qm3Kd1xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740884334; c=relaxed/simple;
	bh=BrKO36IJhwlX5dvSgAl+SSx7bJDglUvw+mUSyOs2TX4=;
	h=To:Subject:From:Message-Id:Date; b=FSUE50EaJ1VxcifEZP8M8/QRA+fhvff3h3v/FKZcn8Z7cckpyyHdcdTSI5iMPF72ZVr1b53vMw5Us06TArKW9+3eep5BPDPO7jDV0IRQFhYJsI+HJGEU418vCTbHfBe/e4SVCojdHPl/eFMRpTJeTgJ/F875E6Flwbwnr50riKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+vAVmbi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+vAVmbi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C14BCC4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 02:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740884333;
	bh=BrKO36IJhwlX5dvSgAl+SSx7bJDglUvw+mUSyOs2TX4=;
	h=To:Subject:From:Date:From;
	b=W+vAVmbie4iF4VIGRiPkw4tefge0ORliNMi+yfGm47o+LfYoQ0s+KN8RgJ1uHvgmm
	 bH8DWdmjG9Ik3e0eShmLniAoqnt54WIT0jJz19mKtgKXPqzuspE+vteESPQTcSU1T0
	 AVdhzKOnEaL8nAa+GzHSnBiqs5833jnrHcl1E5r6UhACdPxkfNgFt8YyYq2qpKawL9
	 ifyZYIAnz7sWpMSzuQULAqlXhkO1xxgfHfzagRCu0v6MqYXre7hAg6Jvt3oGMiMY8v
	 mZ5Mmc5ACQrrjXM64htZ84bjQpoHIuZK2lEHqzJVqhpbC6S1DrQMWR82RxANbuZkGJ
	 kEIEqKHkz49vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3D71C021B8
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 02:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174088433364.5648.14606343714918241930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eca888266dd8987009358212720e9517dcd86b050e287968ee976bac2f72a5a8
Date: Sun, 02 Mar 2025 02:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740884333
