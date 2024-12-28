Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226DB42056
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735385154; cv=none; b=jYK4XwpBxQGSqpYSWJWVuA6KNeqOFUFdu5MhHU2u+QFOr7eKZN9OxAyFPGD60vi8wUNnUhhlnJ9YKK5aDuO57tcUTF4MHD7IibfRgThuU0neUJKMFnvBYQD7Aq8qy0putV5saukDigDsrJHbNMAqlWxJgPjymR3RvEL0aGGp9HY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735385154; c=relaxed/simple;
	bh=MSXRezD6doPRRB70IBndGJ0z3o+XsH+4t2+mfBpws68=;
	h=To:Subject:From:Message-Id:Date; b=BaYRwV9FKtOHj9JLqmKbrhO6u1yO5IVrAMdawRxe5voZbgDM8VTc7v/ko8G195KAIA6BTORtUfVhVkHAohh2OHldH9tvgZ6VBGrsj3I7jU3O8RszzmH5Ho8BrtpXx+NEBp2YvJ7lRwE2I8YsR4/f2wNChJAG+mgEF3MCvISbanw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=orScAoo6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="orScAoo6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A978EC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735385153;
	bh=MSXRezD6doPRRB70IBndGJ0z3o+XsH+4t2+mfBpws68=;
	h=To:Subject:From:Date:From;
	b=orScAoo6alU3TIL/UDl6O4cYMye/AFh1fqX08Z1tmH0BnAlJSgEWaQqS0e1/5Eo/x
	 wpJJjjeBUi4Wzajcanv1PboRdDx/CLndcuUM0o9w4naYIMYfhWIoOGGwEBA+22UJMM
	 LdgkFQjhTcTY3p4uBtpZRAjIpcjedBF8EMB0lN2Rs4Um5LwpXby1FI4rRSacrowGG7
	 wvgFPk42as6M6PaLrEmB8DZ6k+sd3gNdYR+2z182idv6pa8ExYO2wptivRjvX2F3iS
	 dCjtxgh0OVou8qVwhy8I848ote0pefidoJ6AnaoAJ5cQ3ES7WZ9bA+WC995JlteWkg
	 dJxkiDCyUtWUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A15DE77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173538515359.31128.14292080223585165143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ca4b0956a8a40d4c9bc62baeb430e11272f30a1412622b16bf5bda9c982a4bf
Date: Sat, 28 Dec 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735385153
