Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231072F22
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735878354; cv=none; b=MCPL9r9AJ4CDiTF+cWN8eQ+KhkBAVetKjOXjMYnbaHkW5WBz5Ic7HK7tSuNYFJuO2EPWRNCcocZgmUt/1SRc0aM6CMZN3lwMi5YwlAk4IaImbZBL0FdEX83eBZ/w5KB1m0zsVy2z+U7zvmeixWoolvXy0m+jA2T0DNgLjRIh3vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735878354; c=relaxed/simple;
	bh=KBdvlxTmkDtkxWC3O+yIMZ7LwSqKS9H5SugIYj9Kscg=;
	h=To:Subject:From:Message-Id:Date; b=DuF80j6YtwoTaDXtz3GPXT8eLKhODUf50arbsoG77BYCvE8lZIonNbk6rxoAIlv3FcIf+tklV/JDgB7ip+RpToyAVhKTwBiEkPyrv7j6nYWaB1Vjj8e7g7mPRBa4engH9QznygzuUe7HCjhM3BGWJGxPVhlOx46gT0XWrzeQR+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L3cABuLj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L3cABuLj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E06C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735878353;
	bh=KBdvlxTmkDtkxWC3O+yIMZ7LwSqKS9H5SugIYj9Kscg=;
	h=To:Subject:From:Date:From;
	b=L3cABuLjmQ9aDIESOvVAcM5uBvAn9OlYBPbsSmnc/EI3qRSbRzkFs5AP12b6hXDhI
	 UAbiO1NX1XAn1imR+eC9+o6N6oFh3oS3AnhX4AvU+qZpfcSQ/jcIw7RzRimHVn2rlU
	 oZdBOIl1MZ4fgWctp3/wBdW1wHL+UEm/GJxTmREbdOunb2T4ChurbwjC3FnoTptFYU
	 TFs3HkHU56vdePnJRfu8mov3l5SrrWLnWqnnuOuRI3oMMWGKOMUWb16sbkQASy1afb
	 GBp8kQrxhPus+KX+Za14r/Qvv9BE8Odz1nKRwIV6PuN1rcdetfKLos1HKksIa7Ak4T
	 B3K5Zc+V1WxvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9328CE77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173587835359.9225.8406582616747288062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81c9ef7b329834ecc41c2ee3ad580a13c107aaac9f168c09f98df1c4596c1b44
Date: Fri, 03 Jan 2025 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735878353
