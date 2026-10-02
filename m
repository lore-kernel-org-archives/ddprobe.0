Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 685E32D2487
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790901634; cv=none; b=JyWJIf2mdCD42BWzOysgpK5SuwgvtShW1YhJFEX+DeI2I8QMp/Jyc9uY19rgcehsWrQn4N2mUM0DSMQNSCgEX2+rrkSWh5wOiF1rnQ6ux2cu64Sd78o0tSp3Iu+zfSmVGhtq7PKvVIdni1MfFP+1TWFJUl1zh+NFQ//AhSviyy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790901634; c=relaxed/simple;
	bh=gESC04goy/KHRR7PLBJ4oRgeGmLDPuz3z3AbgamCLp0=;
	h=To:Subject:From:Message-Id:Date; b=T7ZlJp2YYQ1pbeF8E8QidodGoMwKmVqTe26MMvHol4m3+6e5dZ11YEX4YYT8tSZCemr/r9wWCi0lSY+VJzUB4loMzwiERpUKm65lk6D3uiAK/jz+Ys+98P5G9SkB50eJ7mKN7lV35pj0KSZJk+7u19rarpo0Dg9LZ7AYL6tCnaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eoPX7YWP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eoPX7YWP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5811C4AF12
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790901633;
	bh=gESC04goy/KHRR7PLBJ4oRgeGmLDPuz3z3AbgamCLp0=;
	h=To:Subject:From:Date:From;
	b=eoPX7YWP/MukAWrZ5XO20L1iiWlorzR06VYGkegRur3Mul9sRORsoAq6L4mSB1MVd
	 x2qw1z7HiAfBqfjXLb0T5nfZ9v7RcG0CxJDcIvuyFOwHkew057tTa5rqHW3IxbjWYL
	 M41nvNCvCWhx4/xV60akaymWmH8huVjvrbSqfu+YbI2yGvYCtA+FxykXp4zu5piLn6
	 +ONfPK9pX76EXpOTn7Ov/Ze4q+xCE+ubYw6OXs28/Ku4l3mpa/KXIAubeFDzTb4RQM
	 eWpt4RcWAav3ch5Qp7aDfpK5F2MLh+uE8Icuq3llQ3ShbFRlS3U3+sNEHQA249y+yw
	 5PQ6XyZItzdKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B28CECA5FCE
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179090163369.13376.10007438123257080721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d0b3fda7de408cdb0cb4e18c4cf2bdeb177f44dce8cbf4777e2caa773ce1c83
Date: Fri, 02 Oct 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790901633
