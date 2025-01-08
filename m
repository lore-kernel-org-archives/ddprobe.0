Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10BCE1A072A
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736335554; cv=none; b=pZO4fkae50iM/nNaQydkyPDm3k5/U4iC/J50H3cI4JllSCenoJr9AG/Ut6dvgMyWOdTJdMs9vgnH/vEJtrvqIfVXW2Mqz4fqOTBEUYZCcQPL6qx5LK+sSBL5EFuNyzNC0+1hcna6PitNuZDgbDPW6A8gal6hW/AX8Ug9V+1KRkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736335554; c=relaxed/simple;
	bh=4qYlHAem5BN2N/prY3rQTlfRH6rlsReAhweRQfdJhNs=;
	h=To:Subject:From:Message-Id:Date; b=iS5XK2+OgH6zOtmpV8o7CnCJYnT89Z316+sLBLffsu9E6GGA3MrSxNyp5KvFozzh+poIO2p7+gwhTHM141rQ5Ys7YV0MdN9oALnZqRaSx9x5e6lQXl9becINziTRom4wXg2LzPRo4jt4ARXJ6QRM5yQATFWmCxlt5+wGkdCyUzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WfPDT0Si; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WfPDT0Si"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D0EC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736335553;
	bh=4qYlHAem5BN2N/prY3rQTlfRH6rlsReAhweRQfdJhNs=;
	h=To:Subject:From:Date:From;
	b=WfPDT0Siy+YyFjP3oxZNC6H8s/asNboEeS0g+/151WdirbRL7eQm0ydsUV0K2lJaJ
	 DF9gf0OOXyBCPzEDYbOGkUKtIhg4msJ05HZW67RoFxwcj0eWlGoebiMf6EHQBj4hKW
	 xMsVzpN+SoN+ZnLhu7+fqDipqMAbqM/7/RT32J84oIyKnhnDKVbXGfJKBDNLlOAwIe
	 cjQviTd0Bn7TkE9zXK9xJOmw41af8ESpbkasIOpxWSVomqOtYSHUGKA/SD5ozoEpwK
	 RqxZFCV5PpEIXJyaLlZXqdZRBfAp/ZKpPUXYe7N6/41V3D4OwvnG3HgnGWTet62y2c
	 ddemzb0anz5kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D20E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173633555359.10899.8439632390176548367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab291e259371e8988743c6e1180e64c0d4cb28e22e4728573cbdb8e75cfc143b
Date: Wed, 08 Jan 2025 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736335553
