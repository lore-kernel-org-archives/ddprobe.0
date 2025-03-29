Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A7F1E492
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743262194; cv=none; b=jEhg8K0teiRw9wGd1Hsz4V6Yo6TqHJFNZs7EnW25WBGaVLVfMEvmIUeoyF6+2iuYL9iCEE053yDNIruridy+TpmD1GpN4q3dtvDF9UcMFtW1ExReMdim55jqx4vAKjvo0XULcCyLLCv1Ue2aZyaGoU/uAK2KtXwlIQnlWShqdNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743262194; c=relaxed/simple;
	bh=eKNk3aU1+DQhiDkpBPJpHGg/6kZ96uFjgi9okxfRvNU=;
	h=To:Subject:From:Message-Id:Date; b=orj3zdciXgd1aO16TRc1UvHMSRdtGuoigc/7kwmguhVYeWJkRh/TCU05IDDpCeSm/0BjL9AZIAomUuVwhM3fm6qNuPz6TLSLhogxKO/jInlrYbkRU2igg1x5Ui0yL4VcGo31C66whotOs2slR6is4+GqCDNcamadEHfRH8+oJiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hnN5qpw4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hnN5qpw4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F20C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743262193;
	bh=eKNk3aU1+DQhiDkpBPJpHGg/6kZ96uFjgi9okxfRvNU=;
	h=To:Subject:From:Date:From;
	b=hnN5qpw4AH4TiX/ZyqHNIK9CtThR6ObPh3fRAP29EQ9yN8eD5BwPzDRq2jzO6SebB
	 Cigvw9/eVBTuToWbJhSRR/phNqK4vY5REK+tfK1fuS1NJovhJpDMC/uzzi4SaMplj+
	 fYplQhNqDv5cgy3MRC/eg4H9zsj/cGoFkQZR28o56UaUtE5I36ElU058PMrtJeaMM2
	 WKcA951ZzJ18l3a9+My9W95Xj+d6kqH+846FJF+oK0ADdH3susRdjN7NCvyMpXH5jG
	 egGVln1Kao1nSOW7NA7bFBQa8sCkOHORiF0F+SSiTsP2rngEXUpKkJhEEDgusVdNRP
	 tXHmfolKX3NeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C257C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174326219360.1073.10880386975589098347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44bb98acb34ca7cb1b62122174072dc8a0b62ac921f08e2209f069107899b661
Date: Sat, 29 Mar 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743262193
