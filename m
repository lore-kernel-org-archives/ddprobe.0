Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D977156F5E
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 11:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717154063; cv=none; b=iLVgIWbZb76yzvwT1jFJffUTBx5mipOFAfRIqbZ8oc3sbVNd6LY1D6toT3jB3m3dbyU/HU5k/mB0zOnTpytQAOpLWQBbECLVXRqZtTD7hnaD70TAs2YRI/UVvni+jUlJGe7ChNbqDMXBJjPnlHxo9Zk+4jAfqfadqRKvX8WiVcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717154063; c=relaxed/simple;
	bh=Rtahxxv4J122efLNTJf/yKXyMA7klEMIMIL9xKLX398=;
	h=To:Subject:From:Message-Id:Date; b=iIyd01EfGAg87VtzRsu9WtbET8BXaXjGm97aZwoGlejYdu5kFFIJH33Um+t7L7mWQNaM7LDW4T5m+yYTPAqrGyGWNvfeqrWHeUVAVBvUD8INPeSL+9SP2WY76DHrrZI8BNIqm9AO7SnTAi4EJ6n8voftg4daLNhYUjhMHliKJ74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eseuVfwQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eseuVfwQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA8E0C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 11:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717154062;
	bh=Rtahxxv4J122efLNTJf/yKXyMA7klEMIMIL9xKLX398=;
	h=To:Subject:From:Date:From;
	b=eseuVfwQEHIaCJ+zzarM3SHKIqo0V5UqwQZW6H3CmCNN/sHLApb5wADX2xraTzqaT
	 zp5W5c0FhnqJfVuoj2rze8L4EKfX2CoYEcea7xflOySCP7pkdx0ezru5jyWalXe9su
	 +7vxeMTqXbbEqcG1ooTPKqw8YFmt6I6CR+xtmFwPgO5YmpCdsVKUeRodh4OlPg0GyE
	 gVE34cdc8oIqHZNJmuLHDVSuM97U4xyFjDB7KqHmywdqCADFxc2GWZoQhPMBxLkea3
	 FtsakQ+F96SGIoHriuAzAOWHF0eS1OtPCK6ZaxHb/ITnz/EIztqHhWhk353EcNll85
	 VOz/S8tfAXkpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C71C0C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 11:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171715406280.12058.12049790202812519978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5dd2e63072f86707d90af412f6e5917531e3fb364cbb404bb97def4ac35c9e1
Date: Fri, 31 May 2024 11:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717154062
