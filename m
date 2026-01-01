Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203F12222B2
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767237234; cv=none; b=SX+KqKqTp3E5Lyl/odMxyKgHV5s6YKdL9zTai0VQfA0fEIKWzx4fo01vVQEbvBDVSLiLretda7f48+4wep/jLn2CvTPanqDJOAyfAAm8qqypfZ9Z01NnQJ9S2A2Ja7iywkvB08liaj79d7CVTSfWgOszVmttorQvVNzJl4HsCbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767237234; c=relaxed/simple;
	bh=G6nY7ZdT5XbVcGOK1W4YivuHKkjLUL+4nNX2JgZ+ewU=;
	h=To:Subject:From:Message-Id:Date; b=a7qQzgA4gpIMyfImzKHshnjb+j3/o6GPkuY6I7Bxjrw90uc2mqQUmxmctpugMvrltZ0xGfXebqiri90cBgw0UjXwJ1D9SIrQYDwTIV50ibelXbkNxaTxqvEL6IPpVw6AOOcJvdKth8OIGFGz+eu9YAeNMFD/L8KiUHP4xOVsisE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rD3BcWSR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rD3BcWSR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A538DC113D0
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767237233;
	bh=G6nY7ZdT5XbVcGOK1W4YivuHKkjLUL+4nNX2JgZ+ewU=;
	h=To:Subject:From:Date:From;
	b=rD3BcWSRWGwkxTtP2rDAxK0YMvqRPQmmrsJ+HDq8Z+PaW30M1gunaK/LAWlgJojb1
	 wcZlWCCruxKzef84wEbLt9ySULan90eN3G+swLe0g0F2Gmwpdzx7HWMhJwf8tY19DQ
	 D0B9ieN3D04hpaMww6scpibxONajLiQkeHyhHdsq9L9EFvCf9ARfmBO/pslU+54KIB
	 9gxbnlqxIJCbUTor6YqD96MYgism3TfHdGiDQmi0PYPGGj8Ga0UwzLh052ODJh+8if
	 os5evw/eYG20rdXZ4FQDy19hFdVUOKaNwYvBRShTcs97dALsFI+nA6WIFdxcDlbQdM
	 tMK5hBoQwE1/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AFCEEB573
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176723723357.7747.12159206284273419483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff14fb49b4ea7c68b3f8ad5bb98cc21abaf3a3b0931a032f5c232b679316de25
Date: Thu, 01 Jan 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767237233
