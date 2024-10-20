Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D64C2C6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729457754; cv=none; b=IrTs+6agLOaCZkDMX1kr6gE2/iwPT3wK+NIdLrMxoMvHtz9pz0wZmdkUHlrBBZ1SD/S9WvKfKWOXyUb4buno15kN94Q7OsDHeppS9dSz2mrb0k7WulzRZi0BsEnGF3a1LWpgyIGAm8f22sX+phjbt/6jW2lRxMT7HNDM4TJHtls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729457754; c=relaxed/simple;
	bh=7e/hkl7VumAiV9dIaDSwQ3ui4UQYpOOTsoaPlA7AYJ8=;
	h=To:Subject:From:Message-Id:Date; b=ez8yBkUMRxHGvUYbc9wLjsKYFs71KD/DvurZ6i204Dx6zUuyATXTBe2iHZ/egje2qlixp1Pe5NCHN3ijezYQw0LDmBr4SQAaRa1+iHnUPzUYmi5HUq5VmIfcMSWg+fKI5Rtm7XCH3QUQsNnP3926rgaI3ol7N46GrKrDeTxcf6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2rAYSZ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2rAYSZ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5C8C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729457753;
	bh=7e/hkl7VumAiV9dIaDSwQ3ui4UQYpOOTsoaPlA7AYJ8=;
	h=To:Subject:From:Date:From;
	b=Z2rAYSZ9Q9Wr247tmARIo0eVg7sgc0UEV0pg/t77Q95GDZJiZibAGZNBgL+4FjDEx
	 nP9Q+zhcKgTXqqZpAcHfoXGRjZS0w2OvzDp2jdVVl9J85hHK5/zncTShCPGU8Zyf5h
	 zW1Dy8Q8rtIFQjI+WeYfYwqycTJRgfBu4fpeTHTBhFTOoHRRbu+acKcF6Deb8WgyjA
	 1FahXxtoR4uOc6qHSvcuJVwPH+Ij0eYGUWwiuncEFON3E1ScAh3XzwpHjDHuoMMhAB
	 u4GXi0ald+T7IR66G/3z4SmlH1/SoYaX/n029uQaED/apFM8dJAleqVBDuazERQZqO
	 1MTyc3gNRxN2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970F9D3C92A
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172945775361.8141.7986087478366936019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ffc7f46ad92d984f274733ec1002883c3efd5ee9fe8b8c6dc23596876a9676a
Date: Sun, 20 Oct 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729457753
