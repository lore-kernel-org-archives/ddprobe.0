Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B5E13B79F
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733450754; cv=none; b=E2qIXEgvY4qcvlLI/49hhG2xBzBfVNW5qVN+pn5GHgMgYTZezaEXv8kcTIcxPEd/xyYdNc2uRsWVnJCHuH8MZlWzuV1rFa49NbsZ1qDdKq//A8JDK1qJNONh2BwI9q1BaKMekwQzupVNGTUW3PkI5VPUD6n1eVwj7r2nxScLHVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733450754; c=relaxed/simple;
	bh=LGIOkHlxRTslRdu2JFCAL73LIDqhN+Z1/rrlyP9+5tM=;
	h=To:Subject:From:Message-Id:Date; b=EKUDB777i+iOKAY+Ol1U9zAyJJPK3nT2OqeMP0SMXleZX8I7ufPPFwSH8eJ8/cx6zx2svNztUJiEB49hMajPe+Ob3sHVI5LcxQR4L4u1FaPa3YT2YBEi3PJPdfnInz4O+AjNckZR2PTxpL7fZVYlvKm2ptwN8TznKvWbxru5pQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VXfvXcBM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VXfvXcBM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC621C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733450753;
	bh=LGIOkHlxRTslRdu2JFCAL73LIDqhN+Z1/rrlyP9+5tM=;
	h=To:Subject:From:Date:From;
	b=VXfvXcBMYrapdCOO9CYSS4WbNA5BYqNftBiVEG9ZprEzYcOtrOPLJaTEAuaMy9Ml7
	 YiVg1WG7T6/BQeUinoOChmTfqUxuBlKL9/WMcUVzR9TQ0QU43FzUAjaavkal8YhZ8D
	 zyKSztmzujRiUuiab6Ua/RWX8MV3UyliZ5jUKA1z018et0UAAU3y6AdUl46IPJaHj3
	 W1yHvZdga/l1ZJUf3K2bJksIBQnWbt8eQsi6DYrMtjLvg6aEoEJyL4tFQpUFuqIQXK
	 QdUEa130QCHEtvRd1iH9YuFx118gwt6VEHtpgCIJT+rZz7mMz1GW1VYmnx/MO2raOl
	 wZQ8eTZ8q2GXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A671E7716E
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173345075360.15560.17419528274148528033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cc75e1bf3bbc2738dfe9352856a146ce3ef80fba4e3f8c9f472fef188f7667d
Date: Fri, 06 Dec 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733450753
