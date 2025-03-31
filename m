Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472AB15530C
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743415194; cv=none; b=Oxj1F1anLkUdiTAB9V71oEa/MdB6FFTwvV/5goOL8I7ZS4x/jPdiCGGBVkitYzrGuYL3a3sKBGikeRb08/e/6hNIW46udFwgD4gRqwkIk+hS3OvjQ2SVTOlCffMzX2l+KdaOqmaU1TUt28Jf4FPzquv3PMmff6cRd55pwmHwgPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743415194; c=relaxed/simple;
	bh=SEiS8MzYwPt6SyOXqLDR427d44FhlfXzgyHTXsCXLSo=;
	h=To:Subject:From:Message-Id:Date; b=dtK7s32jfYogORO4yQ5KAewouZt02pbV+ioH/yYn+mKKhk0PTXKifs2nVA21WliQedJCpVcmeyzVhVK5UnpNwdkyceIwhJDmC1aDviU8aRbwBlWeY0AuP37kCCSTi+eHiNT+ihm+DD/qw+VWX7+TeC+BzmVc9jbxkaF9m+tovKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JhHpBRhN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JhHpBRhN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B68F2C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743415193;
	bh=SEiS8MzYwPt6SyOXqLDR427d44FhlfXzgyHTXsCXLSo=;
	h=To:Subject:From:Date:From;
	b=JhHpBRhNCeleMpYpjniQtleiDDdLql4hxSrENZpVVYHqn43lyxARGOxsF+h0nQD9G
	 U2SqqpKOkE58rMlykASSg4wtW9TG58voiqWwfuSEYvNE9S2uHTPXq0009n8NgRz5mX
	 v7bZIlMn8lB1V0e9wNuKgDEyIOaen0VTf7qM8W4i5u7+DriHlJm8UgdAmqu35RU91W
	 7mFKih5zrBTvwjDQtEbJ7ZwtjHrazoHa1DAHID8B/U5/R8Y5smQ9GfG6172WSR8EZE
	 ik/xIyrWoQ317ZgU6hqW28RT0q1cIFgmsRv950rbRn6MpEEdd/fkljTRDunVg8iBKA
	 4tb8goy2/1nTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A28C3600B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174341519359.6415.12953152244740549633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5abbb8bfd27881fd486001309befe842adff8476b28f0613dce7f997345edbfd
Date: Mon, 31 Mar 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743415193
