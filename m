Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC561DE8AD
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 03:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780715074; cv=none; b=L8sdW1kTWV8PJhYcnChOKRAA+3dYCREWMkJdW0NZfMbyI26RaSJ/WTj69Z8zj7ZK8WOeiRA7DHD4YDDk7nKoNnTbtHhsskMXj2IngPpbEE6yQguP+JT/U6RxQfLcqMDNL/dkDc/oNaWP5lxf115ARy2vL4dA61i+Em5qeNbYlb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780715074; c=relaxed/simple;
	bh=C6EynF5OONMjIU3Rid5CYCLY+PKa/WdQyPCFS7x1vJc=;
	h=To:Subject:From:Message-Id:Date; b=Gg9s1BOJ+AsYTVdrhRR2OFs6zeMx16VLe3cpvoilZBQvl70mNjjJOl2CwPG+IACCIGcIJB3/+2RfeLj+SPhLfLAZgVYsXiWpKbq49dYhiKmiesgv5SA5bE4QVYmItOG7hzd7s43JAv8cMTLkPOhcAI3ULFcRW98A25pWLc4VzIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XlGYgceJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XlGYgceJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56B3C2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 03:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780715073;
	bh=C6EynF5OONMjIU3Rid5CYCLY+PKa/WdQyPCFS7x1vJc=;
	h=To:Subject:From:Date:From;
	b=XlGYgceJkBcQ5Hz79eBcxPaxtOSMX+Fft0KsUHfKQXpJTs06Wc1Th7z7l0kR/O/Dv
	 X1GaJ2gOiHaXNFVGU7CL7o7ahtwA4HwB8VTnNfF6+IkLea69ExlyfPF05Ieg9ZXOq0
	 gN2zZt+TqsnVLb+WLmgME5oi2MZbf9EOjlyIj0uhassaAlMQhVQCvKCDV7VJ688BE1
	 5+31qVILp3KesAIkLrASjpyLUBancJMESKVaecDUuD6pXg6gh1aufU+R28iyJGXhPc
	 hQRTgc5pQgWZJTTRfDegzJ1lY5u4bUyaQZWExAJ4yu7n4SUnO+OH6WO1OcA25ywIKY
	 86jd5TUWCp3Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B673ECD8C88
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 03:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178071507371.16418.18305698714547003753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 052bc1a967ce255f140eb56246456f5e8856eb6949a2400b9cb9ca9be6ab0b12
Date: Sat, 06 Jun 2026 03:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780715073
