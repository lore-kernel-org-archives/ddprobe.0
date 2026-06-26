Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B782A95E
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 13:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782479254; cv=none; b=BeQzoyNoUiGwdtxJ1ZuOLftuw+Qhwb173Rx6Bnl6Z/JQfYDYraLIrqIn/4sicZdU9IySX9/rrjZY0BS6/yxA/FZmX+dwp7Wf44AmWWg6Kl0wX1YOlQi3N2VT0QkaIhLmp2SPJM7V5LDpu0XzYjM3jycWUofDr5sACzAupr7H+Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782479254; c=relaxed/simple;
	bh=fcke+KL+jZIbfhBTuutR3xwQZ+k7Nbd/4s1gBfv2kO0=;
	h=To:Subject:From:Message-Id:Date; b=DmuAlqhA5tIVpm8wcCXx3D/QNGZfDE3c0BmEkdH65R8W0ogO76PhUivc00OuW6+0ER0UV1d5S+Q8+WGeID43KcnomA+w0BREIJor4k9tGaodfMsZKpHMm/bDzB9n1PU//XzqtusyUXBM8SQo2TwBbhsFZ/pcAsT2yN891XPd0Z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZLPKkPJU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZLPKkPJU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0AADC19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 13:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782479253;
	bh=fcke+KL+jZIbfhBTuutR3xwQZ+k7Nbd/4s1gBfv2kO0=;
	h=To:Subject:From:Date:From;
	b=ZLPKkPJU4axCklSBnGAzs/fqwjKti6cFdqhUyp0oHzxVuXo/nhlw+ug1qtFsSVQMN
	 UhDrvl8wZ1IyIfOLcHEOTB4kDQ0+TXOHm8KQt8sz3P4E8ZiEguy8A+suFTCvVDgur2
	 aZEcHTFLw2lT6CEDFEoFA6TwX4NO5Km5/FqMkFW52m6Cs8yDf0X5XU0bbLkpLVTjhV
	 HC0aDHTQ8dMd0OPEzD6/fhJ+q7aZ2HTslyZ7fUSfmYhjMjPgTtlsD+foNuoCwv3bRm
	 ga21j2JcaFSnEOTm6Wz/MsIGGwhTNnjxFOXlxGwk9N6OpnowUyDT3yguYJ2uAxHzwX
	 4icxd7gkCsetQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4E39C43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 13:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178247925371.5479.16434518875236757948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4e2a2d151b53c9d752efd715ae99925f597a676047c72faa2a75bf99e429193
Date: Fri, 26 Jun 2026 13:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782479253
