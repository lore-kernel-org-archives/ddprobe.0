Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311EB2943F
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728440754; cv=none; b=qAFGiU3I4MDkr6Js0pTTFG/d9DZyYlXjqsLV4txSTcmtJc1kR2apidJcONRhelftgS/PinoOnwsrS0fAMPA9Uz0obTXvgnU4yBGd2o5FzGarhmBtTajEnWsWnadYqBPdR1P3fbgRbuzEE/DFF5WFY/VzhN1iVxEHQAQrfm5eFLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728440754; c=relaxed/simple;
	bh=qpFYtMDowBaQ+7LQmB6J9kLQnoZfJQFsrutv44GXS9E=;
	h=To:Subject:From:Message-Id:Date; b=k26XIuaHmGmCduGyj3r5ihmeZSQq8vE5QDMIbWlzMDsGDxRX52mwv9UShbxtYuKiZ3bmNCGuY9eNGgHWW62PDar8Tzi5lHguY5X0J/iUJVKIzzQ5nNJu+py345w4xA+2o5cgVCr0LzL7MGOW7GlvUnrjRw466hA5WpppPMMP7TU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lceSOgeW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lceSOgeW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB562C4CEC7
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728440753;
	bh=qpFYtMDowBaQ+7LQmB6J9kLQnoZfJQFsrutv44GXS9E=;
	h=To:Subject:From:Date:From;
	b=lceSOgeW6N4ASvMZlMfC4ChPCfVHQbhGpTRjlvq82qC8fOjSmkeUToAIfGPo+Qhxo
	 2sOY5+biBRzJEsrX2/VKrEp254njV6U79uvhTX6TJNkmFfPjZ1wdGExKIDZwHCPbU5
	 9yZ8klYRRD8fT1ozRlzbPqLuApeTkRksgC37FN3QfXP1dp27a/S++YkRWwPapzq2bF
	 H/zvIJkrDLbvocT3cpsvQYPRZWQMOV5pfrbFCtlSkeSzG+/EXnttMAYEWzlN8XIXHn
	 NrDy386cZAC38712LipRZJB24Au9HJvTUkaA+Thm3aMgXCOdW5D1ZdYHjdGytfhGsk
	 kbcCl+NtpKTJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D4DCF0432
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172844075359.2815.14177099245124684853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c02405ab04795d37003f844f86571a7a4dbda56921e9e4540370543e7106707
Date: Wed, 09 Oct 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728440753
