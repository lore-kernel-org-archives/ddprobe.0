Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFB8639AC4
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710926296; cv=none; b=gpMjc0Pow+vxfbkxCCJM/Vh08y+xSIy7qxDPdTzEDvClY2LHa22bD2rkl43ci7nbuOOsrb2kWxLcZir5a0n+sWpuvvhXP54zK0QSM89P7Bz35XGRcvSisci3H5U9NfrFlLyL4dBZQZT899CcssOj6iTd2hh3UIVs0/vrXzM2bVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710926296; c=relaxed/simple;
	bh=0HC7IrwzT7LH8Kd1sp83NYcGYg2MGgtoDUYeAaAOc0o=;
	h=To:Subject:From:Message-Id:Date; b=GYeuwluhpPz+Em16XiyIV+/0v1U1TdhTffuTL1NkMTA0pDPDRH43fCcrGVokUxJtH+uwH0OlYQt27HwYNF/Q/Oz/2tntWk3NsYflnij8rPQ7Vo1nuxMix6jpWbiIeQd2dv375gKmbkQZhNk2H0ldtmfwvYuedn9sudM4ZX7vLlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vz3UAJ1G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vz3UAJ1G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68751C433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710926296;
	bh=0HC7IrwzT7LH8Kd1sp83NYcGYg2MGgtoDUYeAaAOc0o=;
	h=To:Subject:From:Date:From;
	b=Vz3UAJ1G7hHU44pExY38ySJMYR0nOUgR/6teX0BeR6FH4MxswAt8cDOE7JM7BIjEv
	 Qmd823lRUl1zr9EbyM3rhjsqJSSjesH2IHglTwXybpT4inT3C8v0JIWmSjPVV4NW/Y
	 QS/aR/MeZS96u/V+WOKLXwtXnp3jE2YNrmkEQaKxjK5gg12HCAOTaJdjXN607cyCsN
	 yxp+DAK7Op2V52+Q4IRp5Tq1+zbexDIEOdhz4aXwUcaiplGD21KzypRdSuiyZSI17e
	 bYo12uV8s7MHKzCvQTDbNdyxqV7WRFg7xNy+kqxw8dKAVxmc6ltjVHuSMkzhkm9VrU
	 QGlqWwpq0qkjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BAC2C54E58
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171092629636.23086.9117818353537217517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dfba57dec7049d52248fe01bd4dedf9b1fbd41fcf5f882572f3e580617008b9
Date: Wed, 20 Mar 2024 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710926296
