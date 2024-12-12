Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F47720FA8A
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733997954; cv=none; b=BHjGj0F8vw7mLhwvDQcuC6f3NiXmyQLstuPxF5AftUEIr/Fz3YJUqtKDk6APhkBqKH+0lqqu2d6YTa9nl7H3Vu80QINEu80zzc1BEGi4dNO27sSI/T2NO+2A/s66PbmnHivL+FkPnAPWgQbZjsr+oxoARgxiGOqoL1PQkYoUeVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733997954; c=relaxed/simple;
	bh=ESQKxC/DdvvMgqBhUfU54sFOLe25Tohyerz8uTbnACw=;
	h=To:Subject:From:Message-Id:Date; b=OY9P1LUek9edCEtTIeig3GFF9OYF4IFF1pHw7rGoOiZNvmYW0DgL3dKOYGMeTSKtWve6eN5Rt37nxEADkXvX4e3Yy4QNswSE/SMFQRfO2kdXW0KeZaPBGjWFSERnS+5sXhwRBRu0c2aAc/HrTigsCXLPpAEjAwDw+8LK1gUIH6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XylpmCQu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XylpmCQu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1370C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733997953;
	bh=ESQKxC/DdvvMgqBhUfU54sFOLe25Tohyerz8uTbnACw=;
	h=To:Subject:From:Date:From;
	b=XylpmCQuUUzSSTohS19mOhEvmo7157i5lmp1ZVUJg5v+VtkDZV7XplU0iUaTMHVRc
	 E+dIC5mDRu9CkVvu+K28Wnz9mZlzoqKSOLgxX52KPVvKXsOufWUFiI21V6SnfjhLwe
	 Goc7bKRJOWeGENpPiXiH+pxaBjF/nU8LQQwCGu9BSpmfJor3/AEShalb3YweQfu32d
	 blTP68smGbjnDCSoSHPLhKG5cOvShGp2tpRwtN6puYQW380hUt9C3+/WuhNT6mnEfc
	 40qFENOlLsX0xwY2DgiyM+k17Y2uJ70NYVs7O8dYDmyUh3QKglVZ6h1ReCPK22te5w
	 8/FHN7XwryItA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972E4E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173399795361.21599.13941481748357583694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecd7bec784c0b16dda92c8b402208a1c8614546e8b993e8f58613efc9d4e8e8f
Date: Thu, 12 Dec 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733997953
