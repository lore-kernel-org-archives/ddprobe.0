Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D84330D27
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767953634; cv=none; b=Dya9rnEPLaTKST3tvvycg/UbZ8oaEJEyqgu9u0e9H3z7jJfnjnEL3TIYAOcuH1Ku/sMlWkB6QBWnQy08OpR0N4TJKpE2yd2iIlm/2sJocHJBtvak9JaduanaIbc1IyIaGf0E5xCSwoIzjvMN0ZFF+j5P1JQMPBXip9XeRCEsS+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767953634; c=relaxed/simple;
	bh=Ig/Q4R2ZVkWk0ci/tWqa4Vhhw28W3yEw10Ekk4R/h6Y=;
	h=To:Subject:From:Message-Id:Date; b=EHXzcN5mDB5zZ/aeJk6sX+4PXONsCC9I4+rmtM2f/L2xNcJUwBxfyDSXquMV+seKdZJBE9TVrb2GXAbVqFMnaS1Wag067Kb5D1k8NAiNZ4XywOGArtWpJbdRMZwjNlOlwlqXNdK3T1trIh8Hjn4m4o8sCCD5xqBvHUx6RTA1VgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UkpzDw3v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UkpzDw3v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1028C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767953633;
	bh=Ig/Q4R2ZVkWk0ci/tWqa4Vhhw28W3yEw10Ekk4R/h6Y=;
	h=To:Subject:From:Date:From;
	b=UkpzDw3vLKh5rGXUpwBClia45Wq/NZR6r8iXhDICOFw3jvmZMTeUZaGM6YO1wD+pi
	 8lPA6KhMWUS4LKMGUDYBmw7iqCs4meHxpvzbmNn9cccKiBtpLJRUKJkVMF0Tgxc3IJ
	 WnsDDVT68tQWax7rkstLvDxY+vGwj2aSiuh33BE6N8laHGc4Cx7QMaSI5C3t36PKeT
	 Ba9LRYJPvAO0dzzkdxM2nW8qp+w8DgzhvVonr1FrlmOKM1e7ehczOaWlR8M8bfCtg4
	 xDolsPHOEE1SVmvKVEMLgjRmeD1abHhe3AlPhV610L6puPuEZ9sbQG2WVpQj2qPdpH
	 YlK9BLlupkDow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3D4D167FA
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176795363357.20184.12211964606862910281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7409ccb4b1ba9734940ba30181ead02fbfacafbf3b251fde890e3f45a080c21b
Date: Fri, 09 Jan 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767953633
