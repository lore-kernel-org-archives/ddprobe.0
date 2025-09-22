Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED912D838B
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758567594; cv=none; b=Ez8RncVcqFDjcMEtpqBJzR1at0oVda2b6kwg1UFYSB+fVboRqriD4xe1J5ydZjW1Dgje0Wg2MeYoV3XhyfHrMo1+8YdehgKtSyxHOZ6YTM+99IcXOsQWsUiD+phTvatBanEQ811fMpSvw2GKC3RtF9IYV2JAA/pWqbsxZ8YXCWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758567594; c=relaxed/simple;
	bh=l/2pbnrVcsWUdIPNsZ8Uu/1wjydL87GvNUE3V3oHhEI=;
	h=To:Subject:From:Message-Id:Date; b=aKcdMW/Il+1F3vET7xAZSgxna2d/wr8G9ZSq5MiYAG0DI++Z2B9vfdZgBeNVPN8Q+8Kek1bnIw1Ik9O5Ts5JWujzoXUvbKsDRLy7h6sUtI7ujrvKfL1GkppWCH9DEl35KqhWst+SfRzwPowoLjQeX9zuelpe9JbjsBSRPHyOD5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gdyf57nd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gdyf57nd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40B4C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758567593;
	bh=l/2pbnrVcsWUdIPNsZ8Uu/1wjydL87GvNUE3V3oHhEI=;
	h=To:Subject:From:Date:From;
	b=gdyf57ndhZsMznxXlR5GhZJJYpurPBmUe46qIRSG8UFMC6sJf6P9duMswmkNHqvJn
	 mDcoO+tM1bmO41NtRKPDGt5S69i4ms3I61Yk4kXUQ5plDhAVOFq9gPv9Ql5LjQQIsV
	 UP4fq0dDkM9Kn8pf3gLeuCgeyZl/1O1zJY8/hm2eNIcktwV4nVDmYbYNqlsPTfOToN
	 eX+TlWRkrx46IVDq/KZKWaL6YMFO5vyZDWqGoSoFk3rIY2cFpLnCRAljsRfAYa1gQH
	 bI21c/qGz403XZAA7TrEdqB5ZDc15etBYRBkCsBIvh8b23t9JaF0nm4fxhEq5M+wl5
	 D1AtFE7HnkFVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE85CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175856759358.4984.12952032433878235731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20ce2583d0c94d4f7def6ee2555ff6e6c9836367fa03f64950206cf831f04ec6
Date: Mon, 22 Sep 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758567593
