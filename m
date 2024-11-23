Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF6817C2
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732385754; cv=none; b=dddaiADugbN3giFeMFv99XWn2kz05nvUlz+edFodUngaD64xLgv4JXxw6EBZF9i4WuB9ULSSR3HZwW3d7rh7avNZgpQxv8xV3iQaWmHRY6PjUM2Hl6mEX5zGHnWOq4sdeFZgisj5KmUFUL123Vo+m3guMcvQfy6XtBIze7wiyVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732385754; c=relaxed/simple;
	bh=Sb2YcXlR9XOQ5/T5DjA8DiL/EMEqDRN92uJQ2QcZEB8=;
	h=To:Subject:From:Message-Id:Date; b=swma3o8gTd+DUgMvf5TEhUw12e18ZBj628Nq/AbHuZzN+ZhqJ6jlROplCEyaKpv/OL4B1Ek0b4Na8gJDEynZ3v9mSJpa6Zek0hvzUMYBpNak1ZPLLmqqcVkQcTV6yFTqeBoaela2FZCdl+Go8hZklPsm7ZSei5NL+48UIQHTQqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HjrmHJiS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HjrmHJiS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE14FC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732385753;
	bh=Sb2YcXlR9XOQ5/T5DjA8DiL/EMEqDRN92uJQ2QcZEB8=;
	h=To:Subject:From:Date:From;
	b=HjrmHJiSlzUTnRWwQC9zyYvtEQBxZHrQvgokhpET2z32AW+RIPNM55zCxM89UdE5x
	 rYqyM+wDu0V0Bq8RurAVETa3ZhN93Cm76NrFYBcNl5aj18u6/lkJe2VKn5f3vXF993
	 OlI8sIxIKaVjtj/EWnQnyRgyy9ePA2msYoRnrCg69OIHDYslvr2kJONFjxy8njUyuY
	 IEblrldFKcW307Zllvgdzn2D6uIvKxqwdlDn0KbV8Bq6aEqEPe4JRaMemkmOsqzOc+
	 eAtLJOdnqXsDxMARENAtIDNFnsp06EbJo5+kGIjyn1RkU6PR59acwrzkdXKuo8hQxV
	 J+2n3CsgaTyLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4ABD75E5D
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173238575362.29773.3949497953524812114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d62c3ceb1a02b1719c607c3d8bea012ca06c27dd34ca7c719f3f13f268dd6e58
Date: Sat, 23 Nov 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732385753
