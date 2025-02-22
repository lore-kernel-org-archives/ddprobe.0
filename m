Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3081B207E0B
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 11:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740223735; cv=none; b=iPpwAdLyKcFp909IJgxpWDTlVvKxmK2PS53dKcAv9OPodEfLiYWOrz7QuehIuFp9mAF7Wo1sebqIUtIcnZp+Psz0DwG10v2VWt8Rqdp6o9xt4oV86H15qNScoE4b1MOougLEJvjNNTr5Ilkf3ufU0ThcLLYQ1bz8iVmTtppdDw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740223735; c=relaxed/simple;
	bh=Oq4QWBeo4dteHTpPNZHyloVEThPM6vEMC+beFuwxbig=;
	h=To:Subject:From:Message-Id:Date; b=VsKDYgxj+Q/LsLBn0JHcf2iU6xel0Y0mSF9MFI96llyscBAqL7D+cwJsbinCI9QIEfZ1LzSkYAz27LeUu9oXS8mj1InwyjsfqfDKsmJPfZ3PvoLuXh7iepumLBzO5XLAtCz8uKGY8ZIWjqxO6S6CzQouINf90OHs8WS3LuCKc1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jlTUewhx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jlTUewhx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87DDC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 11:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740223733;
	bh=Oq4QWBeo4dteHTpPNZHyloVEThPM6vEMC+beFuwxbig=;
	h=To:Subject:From:Date:From;
	b=jlTUewhxuSN7RCvEhvRkoMaomApbaH0Te147SLa2Lui06Vwdp9SlY4ol8gZQ/KJbV
	 iCl9hJUiEYXA6yIa4Rfc+tXzAoF3UkInfD+91+HjI3ep6S8Es2Z7HIJd7ypkOHCTtW
	 0s7Iu6q7hGqwuKnCUZYPYF23FOGk7s92BtG37ABcSr1X51K0PbK9caKeyLEhnLFp30
	 ZOZcgrfhYaRqh9UrRDzMRB47f+looD10yaBd/qWm3FIDWsckndFqq8nUe8jqaV2BRZ
	 jJ5y4DKc8B11ANUktjvz3UmX4+K6QVjoEKVPLel1+oyEfDaScrJOClW5VXd1yCEImM
	 QBMtgPNMI1rOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9546DC021B2
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 11:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174022373360.12037.9995415146162391979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff0166a0632df7a3f0b4ddb273e8563548a55eb5019192c2f5193564988e10e2
Date: Sat, 22 Feb 2025 11:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740223733
