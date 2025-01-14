Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F80F23026F
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736825754; cv=none; b=q1Y9RNZGqdpBN6iGLL0f6fd+np8rr9lzueLowWe+1+WIrSv86n8Rdu4A/dTgSI/17hSyaSN6O4ZSHBQy2qXbqJvY7TQ3ea/S7vKWuiQyrufaHEPsi6nmG8W01zEydUsHlQl+UQ1pSaCx9gn+0fbZXEISrRExFPUlL/CZFARYj24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736825754; c=relaxed/simple;
	bh=h2wAnB8nHiHf5twC+ldZ4Q6EM+t2eyluHGVdELXcIhw=;
	h=To:Subject:From:Message-Id:Date; b=vFFUW44orEpe4kQrrfpn5Ja+zLgifuruB2TVyVmv/lHZcu6lno7lrMj1eEgaAAv+blAVi/e29rQH8/VNPINMQHgGXKOJuEG8lzab7TtK5WtwEBKfRgVa3mK0HeHaFjcqTSbCGSmmwGlH5QtTYkDEUU1lF6e0pgWdIz+wLpeIUQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nKZLG6Ik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nKZLG6Ik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77E1C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736825753;
	bh=h2wAnB8nHiHf5twC+ldZ4Q6EM+t2eyluHGVdELXcIhw=;
	h=To:Subject:From:Date:From;
	b=nKZLG6IkxlNVSU6dd67etOj9O7T+wY5hhJ5PdPBpEJ4JdfwQH9OO3lVsmgPh3rZja
	 ik7qDPJi9FKVfWPytqsCVq+uQ4kiyn/dahblazzdJWxM7ZEvVAB5W91Neb7RLF3PZd
	 z0QKWXSLpWL23cYdFpHYsVWiDWt4rG/L44l13K9gVpfYy8yJQU1JInf2ZouXpsIMOE
	 odi2+RFNzVZSdSleWnVPApDLy4RFCHuB3lLqr72W5f90YPheqdNCnmNLQdNE6b6Gmx
	 Qu0NnznfYo+FVOvgbe/vB4rtSv8BhllJV0AX0ict+5yqoSswzcpGh87XNLqUPt6qyx
	 qEjv24mhQMgsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90350E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173682575358.12518.5356157716125748728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3355144a91728536c6c144466b2376b60d8ffe06c1b3a4e772319f535ef77dc8
Date: Tue, 14 Jan 2025 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736825753
