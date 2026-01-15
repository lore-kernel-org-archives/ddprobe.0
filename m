Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC5133ADA4
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768469034; cv=none; b=Hf1vuNQDCl8CA55fvd2E9Is/T/RghAfpwDSUXQU5njrQcP2Dl1ABXnRyQDrgVVD/UWxvaOXx68XPWUVxcUHb717mV/9nFob8skN6mCaNxGlItwBD2qzbakPTFgHKFeJpo/WHDFep3X96bXDDGmCRCdyEoyW488uvggN6RIhZZHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768469034; c=relaxed/simple;
	bh=mmxnnFb7VBiUqdcyQSXsNvNNvN9/dlI9vjViCF7qG/0=;
	h=To:Subject:From:Message-Id:Date; b=q7bVTwKc2SjC7pmtB5pxRT6WUlCRkxEL2QHlgZWg/T0Be+1xxTR3y6q4LtsNPEMdrqLvNntVWwCFWRPuuhVTPcKXgJieikBbZ7CCjHaKFljsLq1fALC/42oJyRvzyL9U6ynp13CI07pbfmdCRvrbF2ef+HFzI3khvxMd/yXXN9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDe1rvgg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDe1rvgg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D718C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768469033;
	bh=mmxnnFb7VBiUqdcyQSXsNvNNvN9/dlI9vjViCF7qG/0=;
	h=To:Subject:From:Date:From;
	b=tDe1rvggXLfacWVlFqCFxx0dKUCCvkSccEYMX0HLxI1XHRbugCNHDs8o2ACdXhKh+
	 crVncL2+ypHyjlXSNMGlajO8BoPCoUjUK8ngrCgtB0EwP0tLh2qlN6w11YeaXqLVq4
	 51YP4lFWFfDlZg7AQkh3UE6D6kbdbk3r6wDsbCE+g6IuMSBccjk5Qiw5T0acxCicnq
	 V2n6ZLG2FlJLWT9xPN61fCfCaFSjRQjxK1o1uAMbu3TvzdVpjBQ7sIydW+9NIJsqCM
	 U+T1D/z+jnMz69RKrfRwwfLvSN5nQdS0mDA/5QmLRlGiE+7qTgQpcj0gRaKkOx8hB1
	 ABvyL1INqfp8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F667D41149
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176846903357.23006.4438993972791635715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c2a2350f99c732c8d0cc94ec337633ebc255414837e61b2757383a8e9645ace
Date: Thu, 15 Jan 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768469033
