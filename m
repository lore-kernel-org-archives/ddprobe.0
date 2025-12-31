Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDF030BB85
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767209634; cv=none; b=ZCKh0QNGN5GMhEmyI8jZQ499gJmbYWRZkkTqsd9Zngd4nG+ctEDBqmL/ZN7uSfUdzEyWQuftahlUJqTscnFXK/VpAUTuuaxlq4dHh4Di/TjwDtndDzklfx8IpTBek/6yB4aaWBMIXZT1GzxCYMd1upJDGiSIxlm/wHYMRIcngGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767209634; c=relaxed/simple;
	bh=KPA74zxTTZW1a2ZJMJ5ei4942xIE5qICbKfuNXHo2Wo=;
	h=To:Subject:From:Message-Id:Date; b=n5SgYfjYtMP2894avXTO6L0NnFOOdKD1m3KAA4Dd7UqnJcL0D/fbRVia1zB0zJ+Il+/oufVv8shdz3yEWUiui2MFjBSAXf624gt1nL9NdkWXOO+CEUzmTsUwMHahIXGEdaYf0xKIVHA5FEHxP/qZ3QnTwdXLV0h21qXz5D0vj/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QvuwOVfU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QvuwOVfU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73E7C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767209633;
	bh=KPA74zxTTZW1a2ZJMJ5ei4942xIE5qICbKfuNXHo2Wo=;
	h=To:Subject:From:Date:From;
	b=QvuwOVfUn30glXBHowUFHrdn+DYnHMrsFPxgmTw6wDp1AVMIufl20inaRs0ZsMMnJ
	 +j9qI02bApPjf1asapZSeOkgYgEWr+Rd75EfPqoddY76+zoo7dzoDb7/FNd/07cBeQ
	 8WwpEnqywtkmK7Hdznmia2jojeDjZwT2GVrNza5uQM7x/tnDY0i2Nn864iwlQ7USgZ
	 aKlVtWE6yj1W2Z+GM1SJ1HU/c+NtAmOPS+fIv/wZFEg0Sjf58F+MneMVgr0QrFiZNk
	 RrXSvIWH2TqPgEZBBvh0P4fYvOpyODKDAVZHMEVv5jnXw22dWfdNnZYp9tNvvB3KFt
	 uJ67LfZKWbyXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DD5EE645E
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176720963358.8897.4164245883776959989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5110fc3ec0a359de9b282e3f0a2fa0d47e558f975b5cfcff061ce97a72ed0142
Date: Wed, 31 Dec 2025 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767209633
