Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCA538B7D7
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 07:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775545534; cv=none; b=UQ16J96WPrIMfSQcL9GUvqtWexr5xcys4uZ16F7/FCvWucK3grbdZfr3bewl52OSzJomtcj0On208GUE1V+AsTWsT+AiwNajGQko3CRz55pLzc+9Pu0Vs9o/MOu35k9S4kzFBsmqDl2+Ri+ZW26hESJ5HmFsPvSwj86K84IJIYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775545534; c=relaxed/simple;
	bh=XQs/yutbPJvgKAeGuQG211uVMfIc3imIgwA0Vj2cVoI=;
	h=To:Subject:From:Message-Id:Date; b=n9Wz+UcQBf5aDSa3P41kK/A6CvDXzSZkvi4L+Gd84AayQ8aVPyWu89N+q/nQDdOjt5Jpfkf0GSUBXuj0mRBMf2PdzSeEoe+CxULH02mEGurUgfjcxhQr9h0GUDceusc/T8QbjLm2qKedgNmEMqj5rYzr7cYfcZctm0G1ZhyGPg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V35EfurY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V35EfurY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B07C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 07:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775545533;
	bh=XQs/yutbPJvgKAeGuQG211uVMfIc3imIgwA0Vj2cVoI=;
	h=To:Subject:From:Date:From;
	b=V35EfurY4ZUHICGJ4JlDzjSojyps9XgWm7/KUvblwYkCF6/og+aMCyA8a7XwEezcS
	 d4Dm2Lpudv3iGF0pswbfZ6QfWcSft4K98BW1TVuoP+q05fiaEkIulS2yOeczZkQtGm
	 ZypW3q/I5K3F9ZJ2g6WTchAi6XgOIRzgqn3pBBxiwaJ8UstQB+GH5nBArR+XlZ7r0j
	 iKZETuUyDhLu7Rms/Cjzk2Rs5DdtFEveItzc7I0B5ocn0/YRSX5gwdCK4q4/FUhBi8
	 ET338ERtrcPrrLkIWYjptgw6CE6bcuP34W+U4rbUA3wuFQnlYBQ8OhPKFGA+j2CXeC
	 V8zUOzk0qa2Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5AB9F46C7A
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 07:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177554553373.20916.9594521671130560212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f62ae7facf257afb71337f2b4d45ec8816c77c02527cfff48eb41f45c6d435f
Date: Tue, 07 Apr 2026 07:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775545533
