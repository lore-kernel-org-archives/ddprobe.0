Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F40D50280
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 17:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716397403; cv=none; b=Zf0uUHDm/dL3nhnMsv3N7M0V9Wk8ACBI0+Q26pI4SKtaeevXx31XqwmxqffqICSi3TJSox9N/YTjvAbz3oFAglw2qOgwbJ3bV9PLar1JTmsCQNUoO0S1snOVsfyrw15rAapjRSVoAyMdyTHLDswPRPTeORdrHgvzCVkLP+tbo2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716397403; c=relaxed/simple;
	bh=dfGTAyFSiboU+pDu7n1f0BBEXNkTKj4u3+lOK+G0AWs=;
	h=To:Subject:From:Message-Id:Date; b=Yt6Zuo6WtfWoqesF5TTd66DNl3HnRRql8uLssqQ/QGygZPQfnn/jC7F+gOXcCcTGUj6FHaw5CnKBjwR23WfydndLilyFMrLNS1fFDEeZyU6Vgh9DJ++xUR+dy3towZdpY+4rfLJxw9w1XiUQnrOkufM4oJnRMaltLVxGDSv6i8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=njpbYc+D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="njpbYc+D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF34BC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 17:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716397402;
	bh=dfGTAyFSiboU+pDu7n1f0BBEXNkTKj4u3+lOK+G0AWs=;
	h=To:Subject:From:Date:From;
	b=njpbYc+DUdmANfaoMS0m9s1OKHKx7L3HWN+woXebFehb5DuIlMlWJljWiB4CjN4I3
	 P28oXtcZzxGUiXm/Hm2PqJ17s2VbJ1syPoIyYKwe1/vV9151tn0yzcbLuQ0ZGfVbqz
	 4Miz9Se2dvFKxbr8tGvdhWOo4J9IxswgZO6GisRik9AZuGw0pdQJwp3R6BTVfErTCn
	 nM+LD2CrM/MrozMIeu1mFsm+qZ24TUQVD+qz8RQHYV2ZQ5Yiu2X0JlJNIraUi0ctft
	 OmARlPcHLO3uTsa6UjLrCicLNN/fQvh4biG4uTqr9XVgTpY9W4YbldDBfphVZIbv+F
	 Mhdt95NZ7HESA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9F9AC25B78
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 17:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171639740280.12925.356182442933042127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 200d6c1a241720d48d87e380c63e9025b492a0c53f67dfb13ef99bef656dd1bd
Date: Wed, 22 May 2024 17:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716397402
