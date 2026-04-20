Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0D533EAED
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 13:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776693454; cv=none; b=ldMr3W90hFx7NB5GzdcoffLAzIT1UMHobM0jrroSVsUBQNo25NQcY56rpuVGBdmw9qGzuSFxSLFCXlc2SCy1jyCDu5VhJeP14U2lrV23LH12rtcpLEU0pcOhIxHnIAspYmHrGfPQ00uWACQp/OeVsZdj1WCHEfc9hnXUV0gKGcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776693454; c=relaxed/simple;
	bh=U+mFSEMAkqpj050WWprrwSXg8iLFfBQQwwIzLm4ZYSY=;
	h=To:Subject:From:Message-Id:Date; b=ewETv7YNV1sDliskSv4xeBEeHbMREjmqLyYdxgnoBfkKXVciv62QXZK0qVkHd8ddTE+IbkihVR1o1B5oTcJpal2+X6mc7ZnXrZSGvmWTfHL79I8KuWr1/b3W/FGAXcvy0sU2s4DnUThwVej+PbuDWW9j+shOaMf+/ZmSHFd5p44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DJPIvFUk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DJPIvFUk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9D7AC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 13:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776693453;
	bh=U+mFSEMAkqpj050WWprrwSXg8iLFfBQQwwIzLm4ZYSY=;
	h=To:Subject:From:Date:From;
	b=DJPIvFUkNofCGOmdg2FYenyxNKwXJxUf+6d8QyJqaMCQNI+W7SQDDLiBSFEaBRpQv
	 jDqD2Kgrgt31rMaT29GrgEKAzywaj2cQSIay19VZZeJGWR37MhPj39ApXtsjDZgh4Z
	 At903ZNaVNzaFmjXjS/qp1ehwq3qafRnfaV6N1LQz8mzdRbAO53t8/1oqneyjugGUy
	 hCspHHACUiP82u7WLAZH0y2TRkB/aacns8QDA7h8Yaa54MwrAfq87qTu49SL7zpaA3
	 ekzMN2FFMEA/h1KQ4rNoLf6kjJ7lOfsKJNGT6FNz2KN958hf/oABUpVpp5O6GGpKNu
	 ObU0s0PV/f6Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9670F588D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 13:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177669345368.12558.15640899575090851031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 240d60f793d98a431ffb4ce8f53ccf9c0446501b96ce6bb481807bc343719b5e
Date: Mon, 20 Apr 2026 13:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776693453
