Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBA3138C
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709704697; cv=none; b=ZGiqh+LZJYkmAI6tpfi2vgP5eqQ+tTND0ZLG2CefVPLZU93XCcfjfXdzumo79JNKnk2MO/uK4vGH6mzVaWjAoBf5TmXAwoUsMylDPKl7Myel1ipXbYaqCRzK2L1S6sCr7FmBTEimjX/iz3Jn7axc0UClRNmxC//ZEhFf/0u5myk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709704697; c=relaxed/simple;
	bh=OU+ya9ftCV4T/b7C/KD7u9bu8HvTXpIEIAXZ2c4f6xs=;
	h=To:Subject:From:Message-Id:Date; b=ClhltjTLdPTEnIupjareM8G9V6ZAQVLiCp7w+ms/sbSibnkqX0/26c/P5SxPI1rvYE8W9wZUI3RMNDmdzf2n4lTYucPFCooCAQ8wg25AykIlDWvpTCrhRwd9P4QHYkQFdZ8pu4nZTw8uEt8AgQBN6HVn5NQG3/hj7RYDZXZddUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rUxeAd9I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rUxeAd9I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 806D4C433F1
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709704696;
	bh=OU+ya9ftCV4T/b7C/KD7u9bu8HvTXpIEIAXZ2c4f6xs=;
	h=To:Subject:From:Date:From;
	b=rUxeAd9I0w+mwrLbeBnMSTIMjvvT7KLn30cp44RKLf6FX/0vONCJJKhvU/l7wfbeY
	 TJWkvSRmhHJoJX123qW6XyEjOruGxTS2O427m0f5f3UBccMmJN2bqQ7/JFjkeHAZBC
	 RWodW4H+yDyCGLDeqbJmcctqKvnitk7JL5ANFDbE/5q1+4Wuwq2XB/2rNINyb5fRLi
	 TeHjnage39O6FN5NPbedku3S6mgDsylFkvEWCP1fBU+lbPmY4O/0ZvmurUJC1J9FdT
	 8eDfAW4mBPuZ22IqO7p7k0LGak+hEpg2ZdpQKkT2gg3IYyUn9AY/5/qbvp+/2v3gde
	 P8RXIbToxfRYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61C23C5475B
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170970469636.23028.14994304870054809276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e51725aa1fedf098942d45db3df146cdbf14cffcfd96c3f4e0d59116b1ba81cd
Date: Wed, 06 Mar 2024 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709704696
