Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41DA9DF42
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751159394; cv=none; b=rSHeFQu6jvgTFJqGzWB0TACoF5wdeLuFJKO5uXOh+2qatLIME8xtwhGEynkxAu2+2XNi+k1a549t4bEXQ7Jm7vhOAZuecQAUERJ/MCuZoljgC9gINYfvEmlAPmkZHb19w+crhrzcqDSQSmmykiyV/hPLNl2+yT4SZVc0VbeR6Js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751159394; c=relaxed/simple;
	bh=WltwTgnhZK02Aa1fXU4B15KYighos8pJ7bED2vazZ/0=;
	h=To:Subject:From:Message-Id:Date; b=bYW9jQyPiAkL/7ufMsixIFrnLVn6blLi7LSHzZXuZlnN/oQLR+0FJ+amNCfqy/jw0tyaANr9tPHcsSDp4EHGpO3yaLyDf+B4uGdMaUTCwj8ky7fId497tAqKHNpaGpPmnlMPWhMxeJLuT7bmbcVVqRuzsO5X6SG+PJmflhPq1u0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kU1XEkMm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kU1XEkMm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A578BC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751159393;
	bh=WltwTgnhZK02Aa1fXU4B15KYighos8pJ7bED2vazZ/0=;
	h=To:Subject:From:Date:From;
	b=kU1XEkMmfqXvdHaLrzavnOmcgUHRDcJoAWn+BqbxBRE/Y7cLmaIzc1O6rRFb9w7Nf
	 coPxA6Z4rYyWacguHoglZ5K5nhwkYLJQYSYYV1kWbxyJcHltKkzTfMi9UIK5dslqKM
	 GlN27oDgMJUuK10Xen1DVRFOfej1bzy4AB8BfRVzNJz2NWeYnXgB3hPunUX8Awn4qh
	 659Wt86KXSwb5XHLuCHFrVvKWHxLClwvicn8HtNK9hYEJj6y8fRu0VVL5YwACZ95QS
	 58JegdtNvIMop2t+sENnrzlLux9sjMcFM7BEbEMsNW8zmG3Mx6WZqADCGZcYaGc+tc
	 1ceRN39j5WaDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9217DC83000
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175115939357.5070.16316810921725122273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee306d70bc6cfbdf8a26f6804a6f7cf7750034f91a4b7b8dc2886e2a40f8ea47
Date: Sun, 29 Jun 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751159393
