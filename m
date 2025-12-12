Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49198219EB
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 05:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765517574; cv=none; b=a3YR6tWbDLR8Hbps+HkUEc/Mog3/4rhGqJ9Tv5mzD61/bXgsQnObXUqNN9KYtZ3GG3hDlGJlGOyCCGNAbRaW8TLAIb2opfvqZH+GliTT61sqjcy7TlopRApOjp085JLyC9tgFQRazqh634ODNqIK0FbAzu8AvD13/+n2o0Ot+u0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765517574; c=relaxed/simple;
	bh=nUSZmsL/rEzsLvrCYsr+EnK/G5YlNfoKYKE2M2dpzU0=;
	h=To:Subject:From:Message-Id:Date; b=uoHNUsR+aSJ+AHmHwtWqDgkz6ukk0ai3GJBP/tb1FO9XKDdf9UnuDEyNvyB1GGOyfDR+59OScpi8HmtfrzwZ+niBUUw77RTHun5OslYOJ1mQxw3sDEXTkrEtKNy0FTGE+02uU3Z8C0YXy2svtT0/KZ6I5P2XfeH7vobyNc9lssU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e2ok006M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e2ok006M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E79C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 05:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765517573;
	bh=nUSZmsL/rEzsLvrCYsr+EnK/G5YlNfoKYKE2M2dpzU0=;
	h=To:Subject:From:Date:From;
	b=e2ok006MySqjcEXP43NXj6Oj2zqkbb5hXwPs/ZAuCPcUJSGLAvgBbR552mSatxELE
	 zQLFNvITt453hkr8FXXF2uU0K4GMoNw6r6pdv58XFpvsqoHvJkTRN3HvsM+jvZC0Hj
	 0DFiMQpB0S8ThvT1TIj7nW/mFZbIDzX3yUcqnXKGTJIO5/rUrP24jDinCzyRgI9KM6
	 YPWXmPjLnxnalSK/WYi3XUVFVDPVj/QgZ0PW3Mt9ljRRyzmadHHCWbZYMT5M3pVbfD
	 QdU1f+FxcaM7SgK+csd63aMhtuUveKkVjom1vEgau5vXB4TGmKAl34b67meEZ720Mr
	 wggf0Cc6jf2wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1E92D43369
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 05:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176551757363.15593.3810165793736427177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28e73cbe4ecfb77bd61c07e0b1d30d827e3d3b1172c9059abe5d1bd86cacf9cf
Date: Fri, 12 Dec 2025 05:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765517573
