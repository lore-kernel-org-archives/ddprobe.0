Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130B3B663
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722927954; cv=none; b=VVWqGsX0TL1UEjTh3alw6MuPMxXPpG+G+SzVsVtWRYgYgdt+Nh4zdu42gvbwRCFfMo0ZPzBHY0QPi0HHs+EuwV2vSg6g4NC0+uW5/JRRqllB8QPltbJGOfJ09D8TG+m8y3iUfacOwLIsgdlKwZfWOt2boMp92PmSWAu3HCiXFcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722927954; c=relaxed/simple;
	bh=jjoRYUExsEheRjZfltHVjqTTZYmEEFDVwo5EM22frLk=;
	h=To:Subject:From:Message-Id:Date; b=mJ6aPGiV1k+gTQB9aKB7/ioyPwrRNqFvJc/pIXkpZ/I0GG0t2YYTHEcVoKh/XHjCo6LlJjUiizICWbFV5EN6QPCLG0HhuKso6Woa24qfam8aNYz9zYjUPNpk2NmBXr6/OKNzBq3wwjkiPTbnCl39eTM3tnED/Az+O2KccqD3vcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGrhX3ib; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGrhX3ib"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A494BC32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722927953;
	bh=jjoRYUExsEheRjZfltHVjqTTZYmEEFDVwo5EM22frLk=;
	h=To:Subject:From:Date:From;
	b=qGrhX3ibuXd5HDHzhuxxeGV2aZhu+iX1mBJQwvppsah0RNAe9SmTsVzuPH0AVqWxK
	 C1uuaw+soVaHCMYEtghl0br7vG61KIc7LKGtp2yJvBvhiizv8oYtMMLQ77K36YWzgW
	 jKX8HEiurOJjqx/d7TPSV3zzkPTrETaYOsz/gYLWE6RTI/+qr9pbrMA0cennkkLQnb
	 i8GkurG61kDJYygA+tsGX5aGz1IHTrt2mW52h2iKZWZKBiuzHg7ROe24MYbQVfHRJO
	 OsT19dqz2djdQsh29Rx79e8CLTwuBnIY24TFoCAP46+DmKG9vMOtSY1Om9YMXyUbiH
	 zGHavOyJ8gSfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B74C3DA64
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172292795360.13851.4832535844827408439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 753bfe5e3c898b27322b2ed1e0c587a46af4b8a705c7d0a3e02048787dfc44ea
Date: Tue, 06 Aug 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722927953
