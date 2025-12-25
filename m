Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B733A1E90
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766626434; cv=none; b=RgkLSWW5ZbAawO34Cfcv+MaPGfDyYY4LQZx6V6Xw2VChM6iHnEkM1qLKRgoEN3bEpZXGDsTpZg/hvIyCRETlhzN1ldhnE8ZZvTdLQAy6Mzha3z9fkD18eICCfpMqt8kQCZeDdpYGr9W8Pw7rM2cTguxL7EEPtCH9hh5OwmzA5Js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766626434; c=relaxed/simple;
	bh=81E7cG5HKEDzzVSew2ZxoWMO+qShQW2bvD6VIIHT+1E=;
	h=To:Subject:From:Message-Id:Date; b=Pop1DV6k7+VC5RPZqfpWMu2AidcCQrn6wLRe0DThC8U7OuLxpdUvKFo9mcyXM7235LQU5SJ7+iIhTbPudUspubrw5e9+nMQ+BtB6Gv43aVBFHtenH3i01n61xMQAusA7CWXfEZtW0MMXhkYr/qCwws2eYDd07vJ7/hSQhJQi2XA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P34P62GN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P34P62GN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DE6C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766626433;
	bh=81E7cG5HKEDzzVSew2ZxoWMO+qShQW2bvD6VIIHT+1E=;
	h=To:Subject:From:Date:From;
	b=P34P62GNRQoy9NiXhqFjKAH4E2naKIUS7cqTR3mV7toVGCz1JsscqO9JAY+1pRxxz
	 IYbKC37b6+dHjvf+bmSjQkhh3SAIh+ymcTD/sDwHaHvrH7ERhlesLnmMWcof28tI1g
	 Yn4T+AtjYi+z2ZN8oNz8a/P2jMtVf4kkNQ0IPLb1astwgH7+LqOteusB+nNIuff42u
	 0lqMmLfWzN9e6YXX/kjBwgyiGdmb7B1dfWMH/zIyzXBC/aJ+b4xOo0HRe0lixT3C/d
	 zGV2wnpG1bRkFZUE98abx2SCg4lXFYzm0ptAzHSWG3Bad+j+Ttzdb6eLO1NaPXNiwm
	 TF69NfzzmMsZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC98E784AD
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176662643357.17337.14259665686388780650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d0733613cd7684da518abb6f93aa358cf7b2b7bc65fc38640e27b998113b5e6
Date: Thu, 25 Dec 2025 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766626433
