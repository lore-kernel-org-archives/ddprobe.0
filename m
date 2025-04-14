Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7481F4629
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744672194; cv=none; b=nvRPFW40Bdi/uV+9VQzMNQWU3bXCX22lbjCsLUB9Vuw89yEnKuuHAT1PNQV5Ho4UBVUeVK+1c/JMVqB4SnWLF7PowAtT2maPBYiRFQ+tJNWRItva2HkDfkEjRhxO/TgRLxSpuXoqyq7nBS7NEz6dC8euvIZupYkJseeSFsfFQJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744672194; c=relaxed/simple;
	bh=S3HEbG1THbFXgnAvC21k9f4oAKvU7bdkcXxWyfqOEMo=;
	h=To:Subject:From:Message-Id:Date; b=V+R5TH4g7HoXbvYIwSTWmCeZjQmmwPbBhDc8jxNHse255TcR8k21r2MbgR46Md71+JY9CUfWpgVVGE8qeSJLVM2kk46xqFuJuokhQn9x4YxpSmqQY3Na3oVrenqKZW2bHGk8BAx/XmCZBD0GpOLAmbH4nVzXAR6DT430vGy0DAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sARy4diK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sARy4diK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6078C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744672193;
	bh=S3HEbG1THbFXgnAvC21k9f4oAKvU7bdkcXxWyfqOEMo=;
	h=To:Subject:From:Date:From;
	b=sARy4diKbLDGcEZ4QIyK77PY2AvW7vjxlkGqudybiqb5mEVo7XPEq8OplHxO24Rp8
	 yglwpaqAcmpz9qFOxV9vTFO8buSL7UV3FNPlSPT2qo4uFDc49ArYpk2sVPV8ZnpguL
	 24xKumXftdv/v2+jNncItm4ecJiE9iTbxBRRzMN6hUENNmsHiAAenA5OmDkRVb24tS
	 MV4O3mwfBWLLkvRoPk0OnB4jBLHxdf++P3VHgrKlm+e3wbSRullAV0n69FHkPiUrCL
	 XYKU8PFsECBVX8fy2qxlF7tJe+7ZfUJ/vqIpevWp6SG8IgOuiWkIzGXEZD8tyX8V0h
	 MqaZI61sWZT3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94948C369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174467219359.5773.11539417813527287590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d89aa9be6a3044776e3430487031027ad665b577de7d4bb0843d15cbb47cc2e
Date: Mon, 14 Apr 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744672193
