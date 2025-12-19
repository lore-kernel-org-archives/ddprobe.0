Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1A9D331206
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766153633; cv=none; b=ZKLlBh0Fd5x63Kzp8GDIjBfvyTTr+K+sIS8gN36lUNj7VT+b/MgQ28EFxSHGJ4xM5jUW8mD/20v0+dOE1UzE2UJORscB+iWLnOigiKIK6fhLU6WdWvkS5S+Nt0X+EN9gNqomchPlSQjW1DeUcfhUzVOFfjZOTSVGxITFr0l7Cn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766153633; c=relaxed/simple;
	bh=pm7U2hnbF2kJbaXO7vuoOGZW4v8wUFnI8jn8rFJAR+4=;
	h=To:Subject:From:Message-Id:Date; b=Y2dZYvIkZfUnXHQuVrcyFWd5G4gs4xZv+4QFg+UQIkqQ0WOrvlVe83MUY9D4mkTIcm4SSzp/DZdqNpoqyhvCVyII+LErtx3ds/z8kWX4+RQzWR4laBsC9Ng3S6l+syGRr3q2vvhYidpKHxfdS01P7zXQgVCqp+jk3RyjOkoR4ZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Go7RoVZd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Go7RoVZd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3FAC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766153633;
	bh=pm7U2hnbF2kJbaXO7vuoOGZW4v8wUFnI8jn8rFJAR+4=;
	h=To:Subject:From:Date:From;
	b=Go7RoVZd7o/KclEbyTDlJ+F2A/YHrW0BRdTTiXwhZ4/p3M0w9sAnmyY42uEDFOh7R
	 HkJ/6loOUIInC94AzOW/TW4zWJFKLa5vYuIsgUbxB7q8gWl3hk8HEw/Pw5nbWsEV14
	 TmjCxWkwTcpn/i4EqDDOH6GKjQ0FtkfwHKdh7vOTb9gZnalPZmMDOW3mGy4NciqEHQ
	 hdbuQtcu+b04zqfmc4K0Du1FXDXF/5ET+pKNHzwhRIMU/FNl3kK9P57vSKCioBYVl1
	 jWezqgtGku7zSPTQxbIRhVLyxuCph28TXDbqwlKmaizNYaJ+SRJNeVj4CETs611CBv
	 6XrGbYM5jD3OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C72D78783
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176615363358.16778.16037089510973248502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 875497c8e141b2d53da7bbb30bfce23376ba2b8bf63a29992aa07c345d57bdba
Date: Fri, 19 Dec 2025 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766153633
