Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C43F137764
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 06:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718259503; cv=none; b=GflZ+n6V64QaiYPEZlzBMP4q505b5jjXJsycFjBE3Kj7jY65+7NR0g3h5eBmaAJn0gDCtYkJQKEwK6OxMgUymFCfb0aWr7OrHvAt/SKky9e/GZsslNLVQ2zFv/isnwVeYtuGS653cX1rlSQAiWLeLTBaujQfvQ+W6saxYvUpAOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718259503; c=relaxed/simple;
	bh=0ygyU37lEz5bZbkHmnQde7fEAO0B2Ue4xvRf/pZyDEE=;
	h=To:Subject:From:Message-Id:Date; b=q28P4PiP6hk6L9hTqEzfNfQRbEfKW54ib2tTg9TzdFYgn43pwllAbZhILccfCvX+I5tFo1oMIk3KUonGL7o3tM8nRCIM4L6ByicqkX4WdInYBtpeBH3wDJRm9W7gMI9H37+InIwRM75pfC+i/FaUMFDM/mycfEZFHBDlyTi73lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HdMju9m4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HdMju9m4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBD1AC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 06:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718259503;
	bh=0ygyU37lEz5bZbkHmnQde7fEAO0B2Ue4xvRf/pZyDEE=;
	h=To:Subject:From:Date:From;
	b=HdMju9m4P1sEwHMAGgizT9l4+RHr/kYmhPQwLB8f1FzLl0iXLuHH+G2eAgjwXiJGm
	 tujVYLy2eWgyMuhZBLVYnRtaj4vBI4eKefcQ26i90emvscatZ6CTWrc9sa4btLEuad
	 kmhlGt7/VxV5p/R1vPvmDRXgVnANuPr1AHbYPMkqlVMcfehzyrc5lYeJy7L/Oiy09G
	 8l+OsV9NxmUFDytc2UNjV0PdY90Vz8rx26wo1hNdHn8B4DWLevepvaEcLft0dxtp7m
	 I4YN+/jjEXfI3xZyEHhP93BEX+JehfECjW1iGA6fb1m8bOjmWU/lTcfBLnGFrfA0eW
	 WMVG7oX7lU1iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CED6FC27C6E
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 06:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171825950283.12733.11965201377268300527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92cc4cb2173b2ba86b66c95fe61d6bfdb96d8445ceb335c2acd6db69d3bef700
Date: Thu, 13 Jun 2024 06:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718259502
