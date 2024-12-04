Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A057F9
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733292354; cv=none; b=REOOTrjKMqADZS5dugyj8ymuLFHlDHpzfv61jLmXqUG4c/r+E165fTgLH5cEehtU5q7y3jLnUUiHUjECI0cF9YEw6zQ6nGogj6gXwLZ+zlFHcFIt2IWQhvZQy0PLlyx0wikPGzcqZXHSdtMsNS+27Vj6Knm4wUxwCsSnz0Xa+oI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733292354; c=relaxed/simple;
	bh=lpqP68K04o8IeUqCZ+00qB2Udx8g2WmpswcsFWk49S8=;
	h=To:Subject:From:Message-Id:Date; b=YqcZrHFJHrdCO6asFlVA/QGGzkUQ659NMLu6jJDA39egH2cX+S7iFdVkOvmlqVS6dQlUfH4gWK9mZ4aFfaM3hCW27GHxB3ecBFmykYStp+t5TIiWIab7f9WkK1pmDrwrEwNVW6DllUNlnjDR7wdPwxXfqtwClJXjkXlMknASqmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJw3G7yn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJw3G7yn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2BF2C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733292353;
	bh=lpqP68K04o8IeUqCZ+00qB2Udx8g2WmpswcsFWk49S8=;
	h=To:Subject:From:Date:From;
	b=EJw3G7yn7w48+gXOhteVd7qYYKmgqYiMYY2xgfK3WPcG2LT6CvWBNfujwTDdbCrD7
	 FjgkRjyuu1Pqx7bshpeDxVN8sRLiN3nNJdUxBqZlqAcPYJfSP9s9Dk31PZq9HD02JR
	 E4eLStOvZMwXyAtiTbyotg3Gz2cMfF4KFKDbU9pQPv+I6yB7QDwRxX2oCtV5zLusrz
	 sDUyGSEijyK3u8HjSnWTRmliBvvpmn36KiAZXagRafHOj1gOO9ZwM7FrsleYYJdAvF
	 X1fpX++j0yLaWbCOQLNmjbT37Q4NaCMmNxvovR0fIEcYhpqaw0dP8X9AhN/COZukbF
	 SXRArfqjhD4/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E57DE7716B
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173329235363.1307.537192142333283130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e052decc45526b9409dc9662801553ba1f3e583a654bedb3a4a46e5b49c954d
Date: Wed, 04 Dec 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733292353
