Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D6A23CE
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754446794; cv=none; b=mixnGHX42awUfykV6QErt480JKN3CZ8BvPm+oamtmuAw+8K9J155lG3IgE0D8AcsbN9a2Jh/p0hBE3j5paxGI9SzhVU9G79i73m6+E8rLAwtGcMqURMH3SYaDprvELXVPN+oQumBikH8ZY4kAeYqC0IL76YM098PawyBZD89ohg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754446794; c=relaxed/simple;
	bh=8iRdccysipTNczXQthOrSxQRTOhqKblcVbRS+9tAVJc=;
	h=To:Subject:From:Message-Id:Date; b=lUesqvDUOlMzCvysWIvDSE/3HgvwHNZMEyBxGB6TTsAycrpyGrGrCXBthd5cnnpgUPC9c7zZFsRsixMk9cM87nZFPa8J++/uszB1Dw8UUmFeyzhs8wnPTDlfY51VPcb13DY+wWcqwlY5cBiSoOjJEGSHqckIJNCpJKZ/LusT68s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jsQQD2vg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jsQQD2vg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6DAC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754446793;
	bh=8iRdccysipTNczXQthOrSxQRTOhqKblcVbRS+9tAVJc=;
	h=To:Subject:From:Date:From;
	b=jsQQD2vgUgUK2SQgXR08zmLMNcE6PsFOS4AyQz1PPVtNG4k08ZiPpQp1hf76p/9gl
	 4S+RDxUPZI9KtNrTEc35yW53qakaD1bZ+M/lhXGXn7fugdfgN19jKw77TFT8/50edM
	 M757F1XaBcUwVXSztakQcneZ8nDdX83LUIOuFkiFAYKe4tSclnSsz9A5S9mD82xRB+
	 /zJhVBaBpvaxdb+VLjw5hqBrEnkFYiQERO2HYciluQsj7vC2k/+vRwc/qndWw+aSFT
	 134rOkD5JpGgaRLh5Rr2k/RaeRDIiu4voyz8NVQwKwUXdV9ZAxMeBe+k7OAMDY9dWg
	 9mIvsJkbrXvbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9188EC87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175444679357.7303.17814381636760910564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57c4a984eaf31aec234a232a053bf2051771ffdf3aa1993e0e71e29e6a1b6ce0
Date: Wed, 06 Aug 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754446793
