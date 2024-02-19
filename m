Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF53B23B9
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708361297; cv=none; b=qCf+oFr7AYWBafb9+dYCPH3aoTARNW49wwQjyZdol7mc7wjiv5B5jVnieRhHzBxNrm9aShlk+KbUZjpSOE1s7v4VSFTKa63VwsL+UoGAeiuI+4jChd2hftKWxJCrRWycHaj7PTAAMRe2x6aCOfu7bzTbR/mQZHReBayaYURZu7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708361297; c=relaxed/simple;
	bh=e5C2aHoWZfdL7D8RotmW9dy9CMq86lDtn1BnSua7Fq8=;
	h=To:Subject:From:Message-Id:Date; b=dtNO40WMYik0hAz3yuXzLyn2GqBHuoj4KDQ8KcgKmWwrkuKzeAcDJCBCRyR49tnrMA9GQb0N+u+SuHRy95bvbHOiXTBWqEjnUOsuswNJGs+w80CFoSz3SQP7MfChYkd4mR3Y6Q6J9lymUFj8wrBsUnjUoroVAKOI/MJ4kOBHmIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pJsSmvcl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJsSmvcl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86536C433F1
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708361296;
	bh=e5C2aHoWZfdL7D8RotmW9dy9CMq86lDtn1BnSua7Fq8=;
	h=To:Subject:From:Date:From;
	b=pJsSmvclb/wUQicPkvT8gdCAnkE3P8Ihk+4hm3eKWfL0gdKvlMxyCcNVZTPjCCT1r
	 i5UCUo1U0QJokHfbI06bahs/mEPNPO8b2Bx8dGPy2uSy5JelOfIVMgcP727s1ZUT0D
	 w70Tkmx7RTiS2ParElWbhXX0r7fw4kD/CTYhMfhwWxf033YltYt714KJBZUPxiIhqY
	 r0paSRnoJlCHA0JsNBmgs+dYAHUuS+LMbvUcyezHEtdqA3XgM+GSIpf/RXo7SHp4Wq
	 F/sp3o2ibLjVVHT1xsLak9I7MRGrfQpoHIGH7F4RkqviIDFRWBntnwhZBo7yyll/C4
	 ogU/6wCZpzRtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A32DC48BC3
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170836129640.18243.16924436020694853157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af2cb4137fd9b7f8f396d53b010571fd50db1d920708cd38db251d2bfea947fa
Date: Mon, 19 Feb 2024 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708361296
