Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4BA262FD8
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751867994; cv=none; b=cfso58xjpxpUPeqwfhuWaup14fv7YowqqX8yuIcm/kONq/3McCMSXnC5C+FxeCMBYiYi9ncbX2cPIpX82ZLMlXhdSW5PWLQ50HePWiTuZBAbpI2yYoFRhOMvPpSGad9ojZTCQ52Ike0vjJHu5bT7MAmPrEA6lMMQkppeTORgtD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751867994; c=relaxed/simple;
	bh=/XI1F28YMrhE8NTeDoWxRIyoGdla1AK80HUbAW1uSUQ=;
	h=To:Subject:From:Message-Id:Date; b=PJy5Z8mxat/FGnI29VKXlGoSuZp3Qk4+I1uyHeTdgnu0A9LGTOOQhYi6YZ0KDGFd/ZYKi0/rs/5/VKKIlfRImZKIpruvLw8MTtRRGU4JaobBh2hFpuSi6YJpTBk0e/pJaOLQDGtwMVr0itZjUkO5JGXLmZCyCrexxtulZdf3avs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IwIgQqyO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IwIgQqyO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1A3C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751867993;
	bh=/XI1F28YMrhE8NTeDoWxRIyoGdla1AK80HUbAW1uSUQ=;
	h=To:Subject:From:Date:From;
	b=IwIgQqyOJaa83HP8VGlQL7ud3jxlWd7QflnAIyZ6A6ZsuHkjj1u4RUob9ENkwG/CP
	 PzDcS7N+KyGsNCumndw9ejPMHDTjOWqdmR+SX3ATVdPtAecHacp0vXwLgD6U1lx8uA
	 KGbTY7jhwiczJk34oAkfLdSDwaUc6t9+HVNWvI8dKbdKkaqS6/6CxvTPzuLcXAeIqf
	 ERrm0BAG9TisZX5OIcLi3tgyQ4de6ayDxnfqQNvjy9SSijZMSh8IOqCxl0Vrof2Oy9
	 ro8Pk2NQSejNmrLwfZ8OzAT6vwj2F5XMUHTO6WRPH+LZWbyciGq1bsdZdVfbAzMKoZ
	 4fFshsEg3JxsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E54CC8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175186799357.22564.15053100441688358108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d425103491de7914692613becc075e6b86d225c82d0385bfb3598057f3915a5
Date: Mon, 07 Jul 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751867993
