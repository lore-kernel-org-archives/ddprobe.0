Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3618719ABC3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752611994; cv=none; b=UVOTdCFbaHIkWFKbJGVDh8yUszV/mO+m0GuQ0Fvfko1Yl+L7tawS1lva1sJh96pT63g3cUcue40V4OjzBFlV4/4cOIngW+hisS0jBYKd6usBgaEjfGxehajyDlO91g6yt9G5YDzNIHDXzKMqINrcgpdaWp6NSrPjE5s4gssRJGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752611994; c=relaxed/simple;
	bh=5bxUSw5PX7uANBcTIuHSnfLaaDCkOza3LH/gqt/pots=;
	h=To:Subject:From:Message-Id:Date; b=Tc5ZEgkh5KFz8zfKJu4SurmplaDEjEIqDzim/mM69k/a5vIalUlSsKJQ1INLC/+swYomeEIoDVTtN2gCKyoKPJd8lHeKOM5xqcCjCC+9zBmJ2RxgZSnatXCsrUWViyh5y4bio9Spy32hT284bmzWktf0/fvFYKWygdMthZYjqKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XzUD+u92; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XzUD+u92"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4537C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752611993;
	bh=5bxUSw5PX7uANBcTIuHSnfLaaDCkOza3LH/gqt/pots=;
	h=To:Subject:From:Date:From;
	b=XzUD+u92oyRsvcN28ATOji4r5jXJj/1Rc/ndNHElpO9lN5nQ5q8X8H9g4QbjoGCyM
	 zomY2VD+wu6lxkSAUGeYsCG7lHox7lAPRqXWwcJ8SJ2jqL5VEqkq52H4LPNnDDOfNC
	 48Mc8RVuAsLv9ap7WtqmKJj3hyARet2X9rb6/kzXbXor3+am6BycavVa951I+4AfKo
	 7HIlhOvNqdoNnXy2Uenu7hIE7hxoQrP6olZXLaxiqn6VjqgIMBQCdOMgpHOmBSaQlC
	 j6ygg5xYaUfvmpZZLw4sDfTZRyCUkc1zQQaJMapArQMRCVfyAUi9XI2hkCfBzx4OAB
	 ByZcSZehv0e2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91184C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175261199358.32045.2890457150241788334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 586908a5d4e488569a2407b172b849a1af5559d1ef37a406301b05900bb25356
Date: Tue, 15 Jul 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752611993
