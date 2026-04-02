Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E28A311592
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 12:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775133334; cv=none; b=aMnJRfnWe5V0hEdkAqzpd74v4CXBtp9BPLgwX+1uZAmR6g6dmFoz7scTA0yn5C6dKz12KLuSPJkAEEQgoCOnqWY1kwX6uzXUnvKohbLOniG3Vc22OhNe/B0VTkX/c4NLkJJxMTPpP4ekALK5SqB1lGVFh9kCjCK5zTqFj8Sbz4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775133334; c=relaxed/simple;
	bh=wTK9sOC6tE2IXeavefXf9P8LW7lK2LRF5Qhe8yQyugY=;
	h=To:Subject:From:Message-Id:Date; b=M7uzyGz8rUP6gPCu/6ejmh0L9z/OIANGzSKcFfIp0j+GujVDVAfj/MUgcDoB29l9CjqTFxL82Jy44DUuujl1FarwxB61qQMn9yth/W997iKU3IGn/02eIpetOkx/ofkCzxtHdx3ab3TBBqUrMJS+J3C1wdbZBfkR0zvk6cDCUqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p265e3Wn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p265e3Wn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C286EC116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 12:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775133333;
	bh=wTK9sOC6tE2IXeavefXf9P8LW7lK2LRF5Qhe8yQyugY=;
	h=To:Subject:From:Date:From;
	b=p265e3WnZni1q495Gc02ptFXwGoJ/1Bo+97ECHpYV+0vYWeN/HgxUndmeG8NXrotv
	 3JFTyeqVbyAJrOLq0yHPP91zsog6Ep8MGoVKIbJS4qQlcSb3wluivI9TO6Rc+FqWYn
	 ZyC3NS06m//GXuvKn/NamMuBnzYqavr1R1qfsFLwd04DVDEGGZ1yRoxn0AKwbkeKg1
	 Fr/oVoZPEurhL1wH4E8DcXOWE8mNr/GVtzGsfll98QVh+rZRWxcr2ELNGZiPjQJ4uq
	 H5gr13xS5uo3EfoXpHF3JF70m6E7ty8XT1cmuBo3kO7DaaOo/AMb1N/IrZjoNAy0pq
	 yvHP3PZH3IpWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9D3D39418
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 12:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177513333369.17905.17817447496019803696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c03f41172989e39a6d090e34ecc2a7d96ab01f91fbdc675c608d0e42b0f970c
Date: Thu, 02 Apr 2026 12:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775133333
