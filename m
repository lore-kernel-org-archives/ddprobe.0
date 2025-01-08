Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77A3F4F5E0
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 18:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736359554; cv=none; b=nyHdxD5SUcILcxFmN0XxKXnV5rHvqp5zI/S8tWRIdsG3fhNY+VlFMkcuaEcVeZUhrkDns9A76Xu5jyvWXhVsJM+37S/kU4OibL7ZuVowFu3IlSzWfw9Z7sYEJhwJ+XSieZ468pqlTsdjkVbeN/R4PTeQtAljOuBg+CZzSuJjMy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736359554; c=relaxed/simple;
	bh=bgtaEISs6xNwcxYx0z7PKi4B7H0DPtUcOmUMkaU6OCo=;
	h=To:Subject:From:Message-Id:Date; b=NXS3CBi2KESVV3WPawiqfR1JEyX2lIlexf8Y+wBtvVhxXe0KP0qazxsdjGTCsz158jraMONb0Rwetw1ttWoc1oqQPA8IF7lw2fry8THCLjdvG/hiY+TageLb4oWsBb9Sfehsi8W3eZ3Gt7kIoHJkkkK11A4uSNAQCeNaLHDwyns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b8638gpu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b8638gpu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 121A6C4CED3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 18:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736359554;
	bh=bgtaEISs6xNwcxYx0z7PKi4B7H0DPtUcOmUMkaU6OCo=;
	h=To:Subject:From:Date:From;
	b=b8638gpuW9SZmIOxanOpUuG2RX/M9N9ctlqqEmGKgFJlwWpzHMXDYj+mN8beDtyGq
	 C50IIwglnpxaYuYGVLApLbYSgm/9HbYXaUcPNhi1oXvxh6eqLBSu7BRs1FujquuuF7
	 oPmU4VANwD1SPQGuVasCp+6cvmkVhqvALdBtG4WaExAhY1h/rYvGf53SDI8gwCp9ZL
	 lxy4u+zQzzIl7zNO1y5mqDNWfgfwGuOfi9tuxUhEoiWohzcEgdL6E3EhDun8KyrK2K
	 0uKgthkNcBRcRzfjoZaX6WEA2+POv4c6diElHP7SjBwVX98Xomz8FsaX7f4wFPXICk
	 B+JCsztXmOgAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB6FFE77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173635955386.14105.7592401429927519355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a66e0cd407c645105e7ae1192b6bb82c13e09c449b4cda00553d6884041cf3c5
Date: Wed, 08 Jan 2025 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736359553
