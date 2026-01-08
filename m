Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD1929CEB
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767833034; cv=none; b=G5KyP/Mlte/ysslwhqyJn9RQviMI48fDkArkjhL0cLxTG31LaMTI9WoSp+jEHf4qHRafs2qFsHsAQmXwU5aU/V4Dpebjo1SbW8nl0tnxNLF9ieR3U0X2c7lShPQ6hxGH6cB4lBKgDwB3jzu7mrT+xMftUWLQppg0xiDXdRWhh+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767833034; c=relaxed/simple;
	bh=9Kg+MuN6mCIouy2QXkuxW88Om77Bo8AzolMICwHJe0k=;
	h=To:Subject:From:Message-Id:Date; b=UNShyY2UTak7jbphkV4NyJ+RPTwK9UnV5DW10NRYtPjEjZrVHDV+5Nuf+S3uNTvSwZoKSg8T+a3wi2sBSjA3UyjcPl2DUBxhER6GyrEhj8m5qj7PoiK2njotHIrirRpgyDvN1zYw0qyUjN05JcEWt9kqLX1eEBp/s/uDv1H+vH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qwhxf36v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qwhxf36v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0702C4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767833033;
	bh=9Kg+MuN6mCIouy2QXkuxW88Om77Bo8AzolMICwHJe0k=;
	h=To:Subject:From:Date:From;
	b=qwhxf36voLTTu2vQYVdQwUP5/v7H8tbdQmv5kcN4cYI3UdSLy7KM1POTOurk2fiAz
	 mZe730uitC9ooLvRF0AdG+08MMf5DYpDaQZvSYONInUi4aWfrOv53LmxnMav2QUfUW
	 x5wal0BRk5FVW6RzfjeYrriP+IlqM+5uq1A6hot813X3oCxlA4uSfUWiVOcMNRW6ow
	 dtlevgXz+FEPJzRKOLpDJGHRMT37GI+9+0DdbfRsqoCjIo1ghN7QwhPQqCdC6RVwUB
	 Rmq1yoPQ5+Ho7z6ErwSFry8PGF2OZyz53mAdukghJsNHcz5O+c+IfvvUiH8b8e2/ew
	 SpuPggAF7YzjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4E8D14880
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176783303358.12346.10825850380314500357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 917dd87d8d0817faa0272c342e52f6a4e3901a5689c8505f5809b0bdee74a721
Date: Thu, 08 Jan 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767833033
