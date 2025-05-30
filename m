Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355E419AD70
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748603394; cv=none; b=VdwcE7skxD83WTcVQNOjUtkPASr4Dt5A1fPAgYC3Bo4roqghoRBX56GMGzkKN960dejLusVpM2K9iaqjVvtqrd/BLgAVMo6bHF2eGP62dmm6jt06cEQEIxuABQIhMyBt63OGWeeY+tusLfx2d20LWXx8ZhA7ZAlestyszplyEGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748603394; c=relaxed/simple;
	bh=dPbpztNVQBGlnLZnCzbOEL9AmBOOr8uV1TSIy2JLgBI=;
	h=To:Subject:From:Message-Id:Date; b=AnF7EALXfHNmz3vqk+RZoEIregLSfpTagZJREpm6cT/HTg155ahosqmly7tr9EmqMw1eLmLnDfJv0aWgz4pE4KKhQ17cqc8a1RQJiokA23ZL5FOhZoUIUdLg2lGGNBw4Yk4n5EfvR15QA+mXIhZhNa+bbY7xKzurtYY2KEuN1ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7e7armj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7e7armj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A161EC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748603393;
	bh=dPbpztNVQBGlnLZnCzbOEL9AmBOOr8uV1TSIy2JLgBI=;
	h=To:Subject:From:Date:From;
	b=t7e7armj3mNKsqKFeF4lsIOu0QM+GedR1K5vYwGfuA13GQQEPjwUryQegKNJwh5K3
	 ZJtmR+qWYx+O1yFn2frf9Wuxj2W+YqHdtpBq8JkZIyQvN7JsKTlvrgbz2tNN3sWEtn
	 k1d0zbtqDGjaWiVnhX/T9wA8LpCr5SlTZrfxEuCEdsIY/gPaBnExIRVGf2fG5nV3BB
	 Xc7fR6GUPUItoSYgl4g/yP60bi9edWNm2M5GIG6l5/LDIJZQBgKgzIHPp9rpTG68jL
	 3Kf2SqNOmBZwNBF/cgTCrf+UMdtvnfphYiSRJOHPGY9wI+HcwAm8ncsnahYlXXBEiE
	 W8559wYr6qaaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB41C5B549
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174860339357.23579.17081999563469167453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 741fc59293ec0ec03bd75c4dcbd8f6083e703f777d7e0bf0139411937a56461b
Date: Fri, 30 May 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748603393
