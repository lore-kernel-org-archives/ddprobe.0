Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20AB32E7179
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755758394; cv=none; b=ShwtXt8jhBHWfAeIaqsLLB+H+zZ/hNKWz6bIfpSRyUEvsoQRPOaYQ983PwDVe6BlskPP1gdMKVXe8NdtvLPOf9OZsPeebEUs1xoNYBrEAeHlzuvZ4wmtvIQtWZbVZ9B+0Eancbn/sp3Fq/dYhEdO2o5Li6mttgycZUZVHl2oqCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755758394; c=relaxed/simple;
	bh=vXSFLm30RhVnKdxIYVEekxRP2mNWKLN1/GNgkzw5FUs=;
	h=To:Subject:From:Message-Id:Date; b=Vn0Jrm5kWktMKAxdR5saewxnMIMq+6QafXjU3mi4TijmYhjyeAVl9d+JpWwz59i0t2S2IBnDKwYASGoHi4ewLtfLPCZ+6N5ssExz7WLe0DvChhvhOMNs/BzWPvUrWsbYBXGoUaF4mxj1Jg18F/dYpb2og5Jp1SVaR4HQdzBag0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9IsuzoR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9IsuzoR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E27FC4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755758393;
	bh=vXSFLm30RhVnKdxIYVEekxRP2mNWKLN1/GNgkzw5FUs=;
	h=To:Subject:From:Date:From;
	b=E9IsuzoRmoxRhvVx1Z5waPK5iDZpS9cd7YsEzuyKeYNrvj2IibQ10cAmVKQo1wHv5
	 U2t/JMMo36TSQMs1qJbHE9a6VgX7N4LOr/pBN5oXaq7Y515StlkS4o4xaHvKOfdcHx
	 QRXWHbvE1SBj2XnNxS0inLO/+XdiaeoWgrWzhzDCxTHv7k7HE+Lgr893i6K9vWPfiE
	 o0WdaYjM/nSBiMIesBFPstbJgPdopDnQjiDj7h9D3VcmDD3HBJlk2CJ46LGlvcjGpQ
	 UVjTBLZNKhLjGDeLr0hrxTJ01Qv+GfDmxNOG0df63aN5XPIxBwaOcHlV28sQga8nWR
	 F6c/T7WuHl04g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F830CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175575839357.469.17577080692110262646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34470ecb8aa48e27062f39e32f8629e5aea54fcfc8f89dd36116fa09424d172f
Date: Thu, 21 Aug 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755758393
