Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DDF3AE6E0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772021694; cv=none; b=aho2E8AWSso+lbqJ91H8iOo0mrlmwiS7sNejfRLSikLHFbTjDE+1+PJEl3NKgO1UuDB9IzE2rGUHQo+EXI3/U/SkXV6qttZ3MJ079Dd91h/wV4VHoVGWViZ0bCJOf1yG16AJ53Qu0l19rHwxyUT0RNIIEChFD7iilD8ssQNbrSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772021694; c=relaxed/simple;
	bh=j3vuS6BrgOFirEQVoQ2+gJmoSoADxQtrQ3StiiiMNw4=;
	h=To:Subject:From:Message-Id:Date; b=ivRSZ7Aj17XN+bOiPLfSKxMPZwjMEYEut79YZgstG+MDHIdO8+PXxFJxpwnzmr15jYkhB5tv8BWjwTNDkCB7MvUwuBnpsqszsobgsuFvqKHxWm4yFuorDe4ay6RGGlLSdoSRnXZlRkBmWKUtxY61f5dff0Sz9TPbBWlW8N7k/J4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAUP/gy9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAUP/gy9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E9AC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772021693;
	bh=j3vuS6BrgOFirEQVoQ2+gJmoSoADxQtrQ3StiiiMNw4=;
	h=To:Subject:From:Date:From;
	b=HAUP/gy91Tri3CoQL1nMNQTupGu6lQwdSuABTEG9RM87Q/hvdSpu7kk31P/8IGR+k
	 nKf2o0aJ+VqvAS/yFtmYWNXDvScRFJss6VHUQ1RJpWb/EwfNzax9yuVaBVkSItwhXO
	 3ixEIxvgMFFVtToKjmLyDiq7nraLUDBksOf9A9TQlv+uZzrFYJCFqI0KDb+AItiQNI
	 LiKR9C3JEP4Mr1Pqy/0rLdzkkPM06/ykmxpx80sYvBpLy8No11jcn0ZLYwRFftm1v3
	 3Q1Ba+dWoxrDBgUcwHMaolzmSnvAb1gn7ig4dzYAimmjS16jAbHGa5LhOznIzwn5yC
	 hk25nwK5fFf/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F29FD3747
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177202169358.16403.12401551913939208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 953198ac9c5ee04dc3c5040da5c634e6b3b3756ff3fe12123866a9a1b36b978f
Date: Wed, 25 Feb 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772021693
