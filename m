Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FC9189BA7
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728978954; cv=none; b=CTxGfYsyibjnrLKZZh9MXI9Pm1Gi9g5YCDpA2auhdlk8A6Za0S1mDhMlR9o4BP8Sdrx1SlK7bKT9T3t2QxPyTMiO+afp9O1/Bc4XOXr/7DW2XXLmw6nrW4rkyiVggnRQbgyjj1kFhkTU7Bx9O+9JkcqEL3/s1THX4XA2fel2gIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728978954; c=relaxed/simple;
	bh=efd8VYVrPVvQxlSA9mPLHapsL24KYZ8cHcgQejyBhy0=;
	h=To:Subject:From:Message-Id:Date; b=Iut4GAdaDKYiLczbLD5WggDlZhhiAZ+YEo/DWHoKrA0dyVdLSkmrQ8Oh85k4Sy5JzKGBbSIvM6xlPVngbbdg3ws3vcug71+dAs6emji592wg8et2mXWZGZjD9EJszXxSPrRJ8gg9SKpmlDKClsPwDxFZKaF1iHgoKV2IlyHxgcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etZECqLD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etZECqLD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC808C4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728978953;
	bh=efd8VYVrPVvQxlSA9mPLHapsL24KYZ8cHcgQejyBhy0=;
	h=To:Subject:From:Date:From;
	b=etZECqLDTA2j/A+AzKoI0msd43ROOKhrr/yteVlCdYAVvXiWZtiVSGJXcm9eLq1Wa
	 PA+uOeCqdiM5tctdwnyFJnPHIgGYlXfz/9GETn1VK3npDkpkSV4rV2QkBebT7ghHp3
	 42Bbcu7HDQPlr4n4YTZPFKxsRbECrvbRiT4fIJilAL6sadhk5RgVJN+dfuiQVCT3Yw
	 famxvRk4x787D2wqbYjxaWpOdBNBiVpjbW7nCqori3SETkTgGFeR9xZIxDZxB6F//J
	 /I/yHz2xUjehYO7eoln1x/vgtOv37gzzIpk5M/lvfnPOVofctwdU14j6yarN+w64tQ
	 Yv8Xvf59T3jRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90700CFC271
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172897895358.16079.15913743468278721781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac15907c321e23785b192f40b0241275dcae2cf2670c2e3ca9733477533c6db1
Date: Tue, 15 Oct 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728978953
