Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254BC33F6
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746124194; cv=none; b=HenyqvWOLKKBGS3CDdHVZjP7wO2Oz7MFgMm7niWgPXfDBb0d03TrendO8C+xGJBaW9/TN4o+tn4cyYxuASfY6MtqMTg9fecIXA/m0qAqMVQTa+wtrAB/qbizr5tPeXqgb1Kxv4P69RPc7RMQYpjfeh8iLy3HbEct3gt9M2HKFNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746124194; c=relaxed/simple;
	bh=Lfg7CSUzxOQBEEBCp7NYcT3DmhCAxGDxo+pA6DwVZSg=;
	h=To:Subject:From:Message-Id:Date; b=PsY7TyqlWqA2O5BA/bYludooBYV1I6AYSlEInqw4+ywye/v8XpblWLuLeOnNPkdkp4Lk2KSwkKaSY8Xa0E8aEqgQwPaNV1SKbke/ggJ/KxLsDDoazEGD6nFKDBXvaY+44XMKZWHCS7zkrRdPG3cFiO+HwFh0cc8YSuDQAFthwZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b9Yu4Tzr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b9Yu4Tzr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A351AC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746124193;
	bh=Lfg7CSUzxOQBEEBCp7NYcT3DmhCAxGDxo+pA6DwVZSg=;
	h=To:Subject:From:Date:From;
	b=b9Yu4TzrVNtUDTTyVwMR2ZZDYZb/hXIBNMpbvkSeT9OXZjTNu4g5zlkrqSyphju+b
	 G51hCy/6F8J5RqaazFm7nMepDKlWG2qa3jnpzzM5PVxNtMzTbfwk/FcErLW9wwvuJR
	 Q6diuCg/JznKzVTB0dI2/5UcxPWYgyVtiEIe5UBC9SCJzhZg23K8AdPRABYUslT1tW
	 PjnGcyBOYulRcVuXhQLejGbfll8kr4LrGL1QEo6XjZpKWAvTM1S6yOSmwb4flmhe9a
	 7W23aAbgzjvQ8sESDeuTn/+rKFp75JbhfHJ7QVA2g4N+XPR2C49qz2D+yxGOWJwcEu
	 OTTC9ccHOOJrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EA5C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174612419357.7948.4962975627309459536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: becbe3984ef3f0769d38e5f92ea41cb85cdd45ef8651ed37d0fbe4d53c3dd6e1
Date: Thu, 01 May 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746124193
