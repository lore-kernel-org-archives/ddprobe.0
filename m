Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471251B423C
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747472994; cv=none; b=TKKWyBtlgouc3sOG3ifi0KzOrewuSida7LYS8aMFcn2h42ZBd3Wz2FuPdim0nmkElTQAn1X1fz6M3LHLVns5DJlA3PcKABfd0GrIzEdlLswR8DMCxkRdu3zPRPm6AG8M5/RkN4BemadXOfNz3FDmQVexs47ISkUvQf1/5m9C8JU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747472994; c=relaxed/simple;
	bh=qqyLpStES23bjpfDKW3ZoU8edteHyDtg2aWFzsUiUqg=;
	h=To:Subject:From:Message-Id:Date; b=QFPq6Vg+PfJ9OCoreBCUVHpKEK9hZ8289xmlKcjiSlEg2aFyWGYFV8co7FKpGKcvtqckXISRAPQ3VmXKiP6BfXxZ34+HugP5dvPD1VAE1B/9qFCC5vnziAQGwhd5A1bY9CZY2gCPN9wmirClaachTqsDkFqEKVr00zM+JT2BAP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bawMoXcs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bawMoXcs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2445C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747472993;
	bh=qqyLpStES23bjpfDKW3ZoU8edteHyDtg2aWFzsUiUqg=;
	h=To:Subject:From:Date:From;
	b=bawMoXcsR7vj7kFWZneb83p3yKpgm/DfU/NHTO4fFjYD/kpN+/3GMlaR2hnQpz4Ue
	 LcGHMoqI+Yi3Iw7qIcDREit44OGFZVvUN8HV8NIbuS2R1QKhOFKOTVszpBWkn13ID8
	 a9ihub4I7uXEykmVSeWECl7rvX0TuTMFMv88EvwlpnPZNbqBdBSw4LpDKv4swKEkhx
	 Ecvh7QVOOvIivxnqY4eWTyn+a9EI1HNDfhGfDuJl5la4zLTu7FmpVKw31V74evNo+1
	 qC03zOQ75iiqUlgivBoM8dgSYvhqGm7VKpCYzKl6p3JjEZYzcnHB9uFTBW7wZ2MEeG
	 fx/whHba/4uPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F163C54754
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174747299357.30956.15871188039164372111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddb99563ae8abb597ef3a15da9f407d041bc6f412d87a4860157d247b23c0c57
Date: Sat, 17 May 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747472993
