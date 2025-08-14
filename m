Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF8921257D
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755139194; cv=none; b=srgmqah0HCuFDtsQ4U5S8D1vktcf3groJ7IxmGUCU3fmY+aJA7aVaDmC0r+6Arc3v26p5P0H2vVs/38FTgYl0bcIj3IfTWxxuy2JVhydfraoo7SQIWsQ2m2VLfmF0iDscVgSmEV4HaDSvbYEB2fhl7DerFGTN5nwbcm7sGDrz1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755139194; c=relaxed/simple;
	bh=PNGwerFyEjPUMpKiN+Zb58JZ5VLIVtyx5cOt8lGhdxc=;
	h=To:Subject:From:Message-Id:Date; b=j4kfbBgHkuJlFzpAmZMjzAaZ6w3Ek56fmpRymrH8OTJd2p3VoAwNIPoA1sj9rIzbhGsrlkCHoZDJqvxTFH1BnKDx+jTx6BGXUgOHokHrd686IDYRrBqQXsIQ41d8qtAGpwrfJpEu1jM7UtS9C4PewXifCr0yJAZUu3tWSkxc0yQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XUG93yuR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUG93yuR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CD7C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755139193;
	bh=PNGwerFyEjPUMpKiN+Zb58JZ5VLIVtyx5cOt8lGhdxc=;
	h=To:Subject:From:Date:From;
	b=XUG93yuRX+ejlTFdPOZW6cdAf+1B4vAaFdfpaFQL6OrcyUSMWHMRSaTacFWdDEr+C
	 I6GrOBaiGRLmrPSA9xTob7QXHHTaNmeMd8aiYIObyk6ll/RQhbNV7PIY8ScqdPHp2c
	 B5dQDytUoUM4UPoQNQ+CrurdFSSmO4uKUIgLO60NYRmNiVlv4suOtIN5M7udkZCX7W
	 AoqKwSrYkgjYwLHWxiu2PQHVgOCvXvO5LgEx7tKX6FSm8A1QYIuvh4bq+xcW5i8Hlg
	 7/fm0E3eKA9VcJuDq7I5uY5kUYJ+2CCTifHdTtMrQVGGaYseOCsWLjq/EtLlb+alAl
	 3EPzMbsm8GuQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E47CA0EE0
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175513919359.27468.18353568413256209972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72e841af0ee4c5ca0e4a31fbf3648d43cd77a35c0c4be45eb790b00f28e0f0ad
Date: Thu, 14 Aug 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755139193
