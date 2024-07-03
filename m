Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80DA44963C
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 07:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719992723; cv=none; b=kY/iO1Eqr6yGpgwRYCpOjNnZrr4SBy42l97m3B1Vebkv8+HgayPV7F5YfwQF2ik0tDGiYmwPVgAvOuQRDkdSEaNUWz5gW4SXY0NdJ44lU1QKehpt7BYQRXrgL/6ehod4Zi5jIfLraBY2gSZrHB2p2TW88ZxixtbZwuBgvZsZsEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719992723; c=relaxed/simple;
	bh=cpyAFYsMq650b+b4CB67gZzZSqxvao5aQPocOkiZlPA=;
	h=To:Subject:From:Message-Id:Date; b=aQe5ADa/u01YmS4bRbvHIQdklasMA5rrNYalBUFu86EBYArjyehsxhOPXVRh08j7mo8WkpL4YxU+fnipfAPSqgWE3K/5RgvhFccfwSTJR7de6ccnd2rWfkAc9nOF07pazPqx5sqCnSkug9EfztClbDtr+ARo+gm3xTrVKLrjo4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HMOwr3yz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HMOwr3yz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0014C2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 07:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719992723;
	bh=cpyAFYsMq650b+b4CB67gZzZSqxvao5aQPocOkiZlPA=;
	h=To:Subject:From:Date:From;
	b=HMOwr3yziBLA8usihlGBqi+mNa+KsvaPL9QJc1PAeNE9NZEbcCcs63R6o9FcC237T
	 E7qsFFZmduFxnsov9CP62iCsbUQDAQ/V+x8UaOEE3Z9IjlCWq86pzgJ1tncQykHBwk
	 bMpZGlkN/v8fB+x0wD0d79AkiPJqGUT602kB+Q1MQhI4wWtHD54NF15XC9tkHpWb9e
	 6dk2jnLW+vuK2F+zGo+iIVVh5eoZy/MeOS8hpFUd3vHUjoB2lU2ON4tUtLLxbrEYq+
	 /5kIm4MTKIiK/ezGaJcDKXtHAFItWG7GgXDwzKsgHJtENWHBwnJg8V5MLjqcw0Neqo
	 /K+91HG1QA6kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3F03C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 07:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171999272280.3850.1605779939741861694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 001e5f2951c19aeacebb2a4cf773e207e095e4154ad59b4245f09f8c26c95f22
Date: Wed, 03 Jul 2024 07:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719992722
