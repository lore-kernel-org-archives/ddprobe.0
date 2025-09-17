Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB892F7AD2
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758077994; cv=none; b=JAOwe6RZnsL/prPrCRLWXzGbKDpYq5TmhmZkLGzaJKIBG7iBU7S5TLXDHcUwC4DEnV+lFQIRJJWZe5RDg0R7DeizlIIilefP4JSVqZfgmz5AacQMguBHuLhLjnqoDR+DVrjqBuV+XndY5esQWaeOzgO+XpCsel1phq9H55NnTJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758077994; c=relaxed/simple;
	bh=dUu8prRFc7NRi0hSmZIiY92OlUYYTmNyeLOjNz2LW4g=;
	h=To:Subject:From:Message-Id:Date; b=DMzOdA+BaxLK+aAkGjpLbnUzd+X5oOngCyDPl+weZEzF7PX2Ss1Gj57GxEztK+Ei++OuwxaBeDjMsKQRLcuCDTfZKSxjCvZxMKMD+Lyf0lDgU4DpsPmm5yTyvOK0rUVINtdrNzlFxBOXvOrBTQTq2ip+Fgyr9U7PEeDARM2DYrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VMnQeT8q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VMnQeT8q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A00C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758077993;
	bh=dUu8prRFc7NRi0hSmZIiY92OlUYYTmNyeLOjNz2LW4g=;
	h=To:Subject:From:Date:From;
	b=VMnQeT8qiPokeWfAwFHthuBcWtqOj39uPd2Bx91wlYePo5kKpalPl/Vl5KA04QWdr
	 g9tXuRlXpezflxEeuUQrUKAkPMVGS6eH/jfmWGWKRjUUd6bMvxorSB15L7rTuAQmSK
	 yRg1ml8JjlAeFOWAC6E5gmmaF8k0vlEQR4sJuMk30ok3yuUQPcv1EQj1kV7EPM7xei
	 VEaiWyFycAIDAS61CzpgQcpAtETwpqZuFZKCBBDh3BqJnRUqEd0CAJiP0pv7SCJiGH
	 APbuIVhiB3ZmRqOl1Adsng21oSAD6g/qyFRjRs0j2TZV3IiIb8r2uQAXL0Bo/tdzQ1
	 902QqTggWR2Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90448CAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175807799358.16843.12006621290379592473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ab43007e9faa2fe7a34a5a1fdd522d233d4a50e497d652b8a8757c55bad975a
Date: Wed, 17 Sep 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758077993
