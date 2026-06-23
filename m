Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D81F3A6EF7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 22:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782252394; cv=none; b=Oh/z0Cv1prNuZer3dP17Y9pfshcFp+JZt4FgUgklmwUMJiSaVoV7IkTPU2Da+f5q4VvrYjmB+GSev/JbFmXTA0miOWztrDu5ZxbrDS9N9nvSAWFE9482gBC8J/sJaw7wHVHaeERN2tsLnjprpnf01eOqEPTJlFe9GHcA7Wl6nIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782252394; c=relaxed/simple;
	bh=rVFEcBWS9IMgTzEK6OZQ5ekLSqNua4HsAdG3fOdgSB0=;
	h=To:Subject:From:Message-Id:Date; b=bkz5gkCkdKtXApTnI/bKOd7/FBoOOXg5hsuMkoiY9ekSWw2XT2/2AsusFT0xsm5KUdkodd7CslmaksFxhJEFTplA4T7hsmG35S27RfDdJNIFbr2jF0YyM3gvRIu8OY3SsL6Z+WtOgaFBKDUbltNjwDQjnUQBts6B1R8UhPIB82Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JyIhHKQ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JyIhHKQ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6764C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 22:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782252393;
	bh=rVFEcBWS9IMgTzEK6OZQ5ekLSqNua4HsAdG3fOdgSB0=;
	h=To:Subject:From:Date:From;
	b=JyIhHKQ7PUjT98xRikGGhbpAXquFJ4Joav30i5o52JYqoyC9+swKKBDNqjA3Rm3Ws
	 Dsx8VnFpsILsAFwzUFnc420Zbrdde3n65FCIh+FN8q3tpfkCTWiTIDLv7r0NI9kiPe
	 CfWh5u0FQQkmE+DBkuvhniSqqgudzFXw3/dMAcMlgx6V+EpAk5WEZzZC+kFALNu+Yu
	 w6jbZ4MH/82MCgXm7wACN2x4XpVkKrzBa7AFU6kR+mLwd729YBL7YegqX0UFpvmfOx
	 ZHIvj7tOMnwnvSXJbgmI6+znjcgoapJcmPwhER5XT8lY50MpQfbk3xjy6gYL9usXJq
	 1n4T8/A9KHPcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FC5CDB47C
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 22:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178225239368.1484.13818824152080657066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab5ebebbc83dc3f914d98b231bb2b764fb7c3cc3037ee003f937ff9dddc7473f
Date: Tue, 23 Jun 2026 22:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782252393
