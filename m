Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370352F85B
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 21:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763241654; cv=none; b=ajElPUs2y+cV6MMcSrqP0ocPshX/MepX5rouRbWF1/tbcI/jQAz7yPSBrW0o2YPSCJUMZ8aQzxy/gqV5b1GxnFo11ob1DpcolAIq+Ma1Q3JLJU9j1vjhk7F9oV3HO0iiBbjf0qbJjhph7H44mjVrOlSjW357vSeD88bcdkiW2Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763241654; c=relaxed/simple;
	bh=nhDALcEB8Z1JKzYlHi4Tkl1pXOVWYlepbjI7z34uQJg=;
	h=To:Subject:From:Message-Id:Date; b=gsTDU/oiDrDwjMD4gNwJVIesz4eOGYH+FMXXza1ZDprGu6c9ecTzO5XN4ckd11K/iLDpQCi0PzE8eHAVk9UAcUOJYk9FAY5/tDBZz65eUCmcY9VuTEu0qkDcQWLCsLmPvjuE6BLz/xQHk3rDVD4rjG8QwpbWcXSMIjgwSTTN86g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfueoJyN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfueoJyN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F99C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763241653;
	bh=nhDALcEB8Z1JKzYlHi4Tkl1pXOVWYlepbjI7z34uQJg=;
	h=To:Subject:From:Date:From;
	b=bfueoJyNIBo0d0ooVlSoO1wAwIDmWiAYyJWbe4TUmCCtuCO+nhlKyZ179JOTMcIA+
	 0DSoASWWIUdZsWJU5G2A9N4eNQEPkpl9CuqeORti3/70rGlRWDvJe6fHGIuwNQQUY7
	 wOd1Tb3EIULZ8YUR+awhkfgDTjJwxXheAOcy/WwpCwzY7xs3dUWNPleeoP2aDaR+6U
	 zBJACqQAAydMCatdd41nnjhmTawEm4lYGuiciyUR/PgSijn/wH2SS5k60n4cUPl7ba
	 xtsgTsdXF/qkX6GS61K6DqT9VPJkUW9qrREch/0Bb77a8S8ff0+ayqnQH1XOidi1eN
	 Whdpk+BV/32Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B3BCEB2D2
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 21:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176324165359.9972.4081303400381450035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73628405abdff036c345371b37b466d989b32b884dc1ff56094bdf6ef43e8ee8
Date: Sat, 15 Nov 2025 21:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763241653
