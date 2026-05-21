Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396E72874E3
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 03:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779333034; cv=none; b=AWBT1f9Qr2YhSxkEM7i2w+i7RrJwmx1wgEKbFt2BZ0AOhsm9W23EU86+gUYPolCr61Su/rhxKUtvfA9OpHdUqtAS8WZg9U3rzQtimy/DrcT/BVJu0cjSb/ikXB7nADMJHKFpIF0pm9GewlzoHqVA9+KlIc91HnSW/YmHZC2k67s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779333034; c=relaxed/simple;
	bh=lvgb04Ud2MXiFIl26VPHeGnGZTQNWrWwfWZ15j8nSOI=;
	h=To:Subject:From:Message-Id:Date; b=NoJSX8r5jlkniIops5XC+9hUAll0jXbvyDTovwupAC2OjF3pUt1CnpXsxcyUkH+zd2mkNSXn2NNmxY9wM8MtWqEJ3KnIKY2uMwn6aoTe/Gh7QcyhE87KkCJESYSEYAVTZt7wHWZ8YNkzHyYmCZTYEDZ4o86xWGoQ9qRRaycd9fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ghXGLt3B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ghXGLt3B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3C6C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779333033;
	bh=lvgb04Ud2MXiFIl26VPHeGnGZTQNWrWwfWZ15j8nSOI=;
	h=To:Subject:From:Date:From;
	b=ghXGLt3BriUUUgJPhdj5UVU1TMJtnPLltj1UYIriofz6maw7Pl5lq+aPSQ7j09xVv
	 u7S7pjpvUKVY8o7VP7hDb3xK9j6MiT3uOmJQ40EBmNtJn7h0Cw1QyD1CMHn5c/lg9/
	 rhxYHyTvK8D99P6lrNnGgmaCVXIlTOaF/LgnyKKBFoGM6jbv1Uf+O4bTJKz16WRTj3
	 eMtFyQvEQKVolincG11DVWWGr0svUBIUsjQ860cTxe501ihu5SE4uJOtKDlK+4puRw
	 4uhElb7DnnQ9NW5+p3M4SL5KoZj5WW22omAsbYRTkLoqXWADw8llXPgLwa+qaqmZbv
	 i4hPLTIMAJBkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4AADCD4F54
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177933303371.23273.13418794703359911641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8f45a8ad72ad90f71e630a847df9651748e7b871b0bf7ca6966d5ebd44fd3b6
Date: Thu, 21 May 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779333033
