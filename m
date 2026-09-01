Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D49E3CF043
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788266434; cv=none; b=BdhFrXFV+Mk30/zo6exMdqzPsRZ2yrBYAxJCtU9qGiXPOD7BGyyrD0UUnTN51qOsJqb7DaYQIxmO3bGcXRaQrBystBVsRaenUJ7QPLkrOLEO12Gq5NDJxNRSXLRCpM6SVfd9oUS0HXh5Ok8gXY5qblmwpcIwpqoxx9mFY3G+rtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788266434; c=relaxed/simple;
	bh=lhXVL49uLUvZxEEROJI7+6JlRaBq4h8TOztw1NPRgxo=;
	h=To:Subject:From:Message-Id:Date; b=NmTmvNFNCVQNocijt00QRmT0YCY3c0vzBAy7bGSFbF9HopWeB7EVMTkvPXkPEtJd6D1KXLsr1hLaXfxUXUEfxE5RB6cNsYciwaRniBKsDBFhuKlF/zlRr+Wypqnop31JlXQqOSq44nt5ml0E/B+IbiQTjZF5cxfPZGwAkvAK6Q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4z5hQjb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4z5hQjb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8EEC2BCF7
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788266433;
	bh=lhXVL49uLUvZxEEROJI7+6JlRaBq4h8TOztw1NPRgxo=;
	h=To:Subject:From:Date:From;
	b=F4z5hQjbRRhJefFHBThdIPYRGfNCGdUQyV1v4egAjAMwdfimyGOVxxLFKN8J74nnI
	 VHaVs+Tz0cMJwid8YeRNFsn5rhx1PcBzHuFtlNdblQAl9SnOZyQs1rbFwHPf3M6qd2
	 JQqHEQmCxD/lOebngqOgzQHf4zmleTbVUM2rBMxgmswOwKGycRHDXfcIRnIAy7bVzA
	 nwJfGKhJ4tf4bF+SvAHvTh5PwNqRCseZowKM5W0M6Ad+wA5zPX7RVULxGo8vUw725b
	 onULhlI0IQdPPFWOnvkvGSppn7IK2izCYkXsmxEbrstWXqACxXwsf0XO+VTls4H+hq
	 vp7AIg2yF0v/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACD8C624D2
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178826643368.23167.14896760136100899770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7efbb40eaa6adaf94742535a56a23111119d4a2691b68f26b98c7ce9075a65e9
Date: Tue, 01 Sep 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788266433
