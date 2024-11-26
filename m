Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2548C1D89EF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732640154; cv=none; b=cLYkJujHqfaBu5MlqMKnUOPBRWpacm9e1221Kffeecuj9mjkbmNbKQMTUBJ70XDToVOLIRDI/6YrCB5OC4auRwT3cO23A2SedLh/I0E+XfqVmv8K/Y6ogJ20wFnV4J5HdQmmoDO1fuXnFq5Z4YF7pKIneYf5p5JzpcJEExyE4p0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732640154; c=relaxed/simple;
	bh=im6lAyENH3HWqNdDO6mP6c3AGrouHMHTdaCMeuA9Yio=;
	h=To:Subject:From:Message-Id:Date; b=O8RN5CLH06yMsGsmBcocTc6dTGLSL/tffqWwcfYMi2R2alJHfDzVhYna5jmwieMvriZX52Im1FSk98shuSJZerWxwmRSqsxuml9377xfyTAOy0QIfDqCF7JbbXYbft0nmcRdCQkUmmcgX2Oo3avOEDGKLYd5tnu7PLUy7QzSIjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KB0mmEkE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KB0mmEkE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C47C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732640153;
	bh=im6lAyENH3HWqNdDO6mP6c3AGrouHMHTdaCMeuA9Yio=;
	h=To:Subject:From:Date:From;
	b=KB0mmEkETfpDkNW0iH8BWM6hjYSoAAiVxBm/digwTWR72srmb8bZVa5x02+PLAiB1
	 WHS3aZVbF/9Kf+6BaY9qKVwYGyqZ1ZMbTdBDlZM4H5hS4Y/9b/YA4N+u4OJDklwmbM
	 ADvltbdSit1xHs5uF8qQItaQ6DSfrrJSTTAJG98+YADyfuKaq9mxq1FryZ3Om3UCeJ
	 qGow8Hrb3HOg+T57+QWGdmXICtDmv/+L0N9OBVivfYSPm4AAlPivBjOGJRoJsK7jXd
	 v41AAHPL8QN+CqpDTNspYHpG0eyt8wRs6FPgOhhNtKewJ7o2qgHsOWTsjs6A155Dtq
	 mgb15CpLsJqCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A150CD6552D
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173264015364.18737.6823336367959126408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 839655bf8f9fd9525912e5432a3569149c0e0612235987bfe2b62b19deb66824
Date: Tue, 26 Nov 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732640153
