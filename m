Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B9F24466C
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759172994; cv=none; b=Ub8uQlbfHnsM5kBAgxqDrUcqzjLdy/uK7RtisZU7qmdb9ttzc2qy2w5S5OpxtWtt2RZ631g8uNxc6kGR/zdwM6Xmdc2QLjq1IQ/+DUp86MbMyFg0K0tJd4fhOrbw8+8pmiJF4v8TKMP8s9OcycdEeUIPpWM4FYN4E2nI/2BElrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759172994; c=relaxed/simple;
	bh=Q6UnTnMZJMz6BPwgx73n2V4+0vofu2cbH7Bj509G2xA=;
	h=To:Subject:From:Message-Id:Date; b=J2DrBs0nvqXlEq8eYVh8lds2JSxYekYrZ4IEDB9GzGcQEqxCMjl05tkTuTyxMeHRL4RL4fcfa+zzlCTCzx0cpGCM78H73NoRizv8M7KlSPtvkkbqSQ9HXoi6eLHtYaOgp9NsFgU6mWXxH7Ej2dTc2aGxt7Zoi4knQN7j3hCkU1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bRJrI1zF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bRJrI1zF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C7BC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759172993;
	bh=Q6UnTnMZJMz6BPwgx73n2V4+0vofu2cbH7Bj509G2xA=;
	h=To:Subject:From:Date:From;
	b=bRJrI1zF2F8k1VO2tXTrqEoG6Wz2D9YbvSHOAE/8wFbmWJsxAoaD45mlwd+Y03y3l
	 WNRwAXMYRcgEHZh63wAxaawF2fjAatH7CaDIpFEKIT1ZlRMhM4hAJ+EBTxRi+neXTf
	 PvlOwlCthAi69Ha9yifMQn/pvgjZz7PY8H19eFEgbQzvSkjgdZE0l4N/TM03Lf96pC
	 CVE3Y+7ztaQenI5Ha2f4CLIcJLm+u/Ime8VqI9ILTNYgAPKEZuy6pcVhBCy72jKwZY
	 IwmdaBWFAFVHws6lgstzuH3ANi4BDcz9vX0RFWZjTay7hk1F4p14Wkcps25F9gFLFJ
	 wF8ztTIjIxu8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955ABCAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175917299360.1533.12341191042002085756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 022f9c15aae4c419ac75503321da9cb00ed5589610de7109c25293fd4300a165
Date: Mon, 29 Sep 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759172993
