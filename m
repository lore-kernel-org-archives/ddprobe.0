Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25DE520012C
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734350754; cv=none; b=WvuJcB4pKWJkdBRu7fQjEcaOMiMS7EWKq+cYRgP/65isRr0mtOpJqfKoLoXJKDmRw3YNwZme+elHb+Acs+nqhvgOX+YOTVxzDAYE+ClwEm/Cgcjs4NlFm9O6u66K9dmz25iDZsWwmgRW5DeIFz/4L6Ahx+Vi00GaW2XEMMzC+lY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734350754; c=relaxed/simple;
	bh=At9ux3TuXduD/8xAejT1/G9WbK2TM1GpZrp9dnoQCvo=;
	h=To:Subject:From:Message-Id:Date; b=urzUASETYFRoQjSKUjFK82ALqVGKlbID+BgGEDxrWbzZyoCCHfTcSvQLo0EQV+uFmK9sUHkctycJQy8nmopitbt6myrVoH+YqeV42HLzgJ1Nf5J3//PPcG5CtexR8iXZBwmU8X1ha319GnN2Uz5RQjGe5ZdyftyqGZwlzXlvMes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzka6Sp0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzka6Sp0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC104C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734350753;
	bh=At9ux3TuXduD/8xAejT1/G9WbK2TM1GpZrp9dnoQCvo=;
	h=To:Subject:From:Date:From;
	b=lzka6Sp0JAogTLE2gwF8qUP2NUG0xf0jwSqkrLM69CJ75i5G0bTNKoooqKSHyY7hA
	 ZFdDiO0EIZ5JlkiXuDuX4WzsqufWuXdh9hEhfpxXl3NepyGUtKJdPk8ZQYyujpXbzz
	 mML23bL1xj4dhtX9KG64vQRnugl+FX7dxKEomBqhY7CGWFIVOE5vWQNcjNiGZHn41C
	 ZGmlOrQRUo0XfcXBNupC7zskSFnlHIkjUHTCtHuYJSnuCuJoX6tERiAVzNhqNeKb37
	 5qs5ty/EQZ+H+XBhUHfT/7SB+YNFkvY4ppdu4lrGiDMg9dQndYN5xnUjdCy969SjQJ
	 RiZFDf7fqU+LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979F3E77180
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173435075361.16191.16139644058078910964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89fc3d39eabff85bf73a620ca42fd1de9ab3465d42b211c88b4629ce1119fff8
Date: Mon, 16 Dec 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734350753
