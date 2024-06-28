Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 677AD80BF2
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 22:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719614663; cv=none; b=u3jHlC0aFXIdcIYh1y4FrTkGwzjwkw2lGnHJ3/C6JK5SK2mtubPKJhSXyd3Zne4o69hDkYbdlDPZlBuxY/w4HTriinZ7V/OavR61IQLULZl1c1qEcdSZypduS4z3RxwMKE+QeMyut16hePez8Pc1ojU6frp+c4QEeARucboySGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719614663; c=relaxed/simple;
	bh=TRsHBiSKOAQBcU0rHw0aZKvxPuoJ8K4W90xozWoLh2E=;
	h=To:Subject:From:Message-Id:Date; b=CWpQWEqvvZ41HARMNi+n4RoQ5iCFq0eqVG8TqLzpcOBrMYFyD36yZR7500xnSXscQywrFNh/8ppzxkMjTkEnk3A2UqLYiRr1R0ayXHJ0pxW/bE+GXmld4CZA6o7He3alqXsf8qfzeQlCGv1bdWQ48wiupWhruH7rXwUKYsfnNeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jb4C3hur; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jb4C3hur"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D97A0C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 22:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719614662;
	bh=TRsHBiSKOAQBcU0rHw0aZKvxPuoJ8K4W90xozWoLh2E=;
	h=To:Subject:From:Date:From;
	b=jb4C3hur9d6FMwSrQeO+Fa3GNwv4oDDltHmfilF9czAGiCVyHJQphnuytzoS01GY+
	 2Z+jW9Esm+pcrep0UwZPfYI0roDOtMI3vHyKZOEKgGmechcMnsHnK8itdJB0XDEpuN
	 CDtkTT8yCxc/3aGxaf4SvFRCflSShxWx0VLQZKLXcliX4IoWfwJkj9X4+X/52C9A0M
	 kheNp/i+ui4dyMJWiKWIhz564NMMDnEpmiLcmpbgerfqNkclBNKBv3xmU41PP2BmwL
	 rrz6Lqi6XQUBfOVpyZfuC/aNziydZ05Q0CPVrRYPI0gX1QJoXnwembNUGN5rb+Un3e
	 8NuRJHDQdPiRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF9BAC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 22:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171961466277.24834.9821925995424553648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba1585bf0c29517ac6e4a40df7fdb79b27e5e903cbf8c376c161dd3a42dc2b2a
Date: Fri, 28 Jun 2024 22:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719614662
