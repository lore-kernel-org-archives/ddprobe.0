Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528115A788
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 12:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719058343; cv=none; b=oR/GUBvW78/iGEvmGjZRTylksdRq7+4BYKW26wrug/e6G/BrB5T2+7MydwaTYWWFvOwFYwOv/+taZ1X6J/Dt1a11rmZRUsiGOOnqq+JIZW5GHw+fX4i3UbFhd1xT1MHvTXhdmeViBWV48gqnpOiVP3hNUkM+0jYBV6Lo4Q4M7m0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719058343; c=relaxed/simple;
	bh=lLhB6pyOBN04irdr5Hrq1Zkb+7jrWxpX7OoKtk7fo2g=;
	h=To:Subject:From:Message-Id:Date; b=Ayy50XbJ+sdyETxnQUjjTrztj0eCWjakAta8sixnI1Lq2ERMfsW6pT+9yd9TJs9dYVn4sjagw+VsSm7dDXKW7o8bemAL3i3lfoDchhaD6FRvSAydkOnxj6Zw6+3fidwgemWvumhuYvZDrJI+u0U3vc83AOfDJQeRdjqBLs+tpyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CtN28t5t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CtN28t5t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF96C4AF07
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 12:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719058342;
	bh=lLhB6pyOBN04irdr5Hrq1Zkb+7jrWxpX7OoKtk7fo2g=;
	h=To:Subject:From:Date:From;
	b=CtN28t5tC5Sw1Jwou9IskQ1TiqD16vLYe/SHcQPsEL1FO7Kd4eTQXzKUCr8j6D+fi
	 /Sae2fAlcLGdk3PKQFlaV6xcuD/BkFBwJSEfT0Y4vEAv2NVw7VVyj9U86GcKcfpsYd
	 k47hTx1su7MHsMy+jA60Oyua7YYAgRFoXiNM2eewBfOoOVoDDe5IH7q5An9JTi5fut
	 ilnMOcmLk5Ot69CnHjEgtGn7I3eM0KJ+meHCCXvKVOCNHiLox8/D0f9o3Zapw2TI9O
	 vQwzQpKr9RO2RZh7nq+wKG1IB8xH9QpaaqCt2ZgT4+6wtCI0XAB1vxqVf17yRIYbO6
	 7tbh5SsblO/Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA90CC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 12:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171905834280.15065.6871120429131376699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5f299bc89121792652db3e165dbfcbdc389a7d336d2fdf02cd9b561c8053717
Date: Sat, 22 Jun 2024 12:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719058342
