Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430E82750FB
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 05:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783922314; cv=none; b=IUYXj9e1SGvmIrwmgwjaMv3DKUcKaESr5rGcrWfdPdsP8ncc6JmoidTNJntvuv8hC+U3MKAO7J+t7g9p7jEFsjfsU1H+T1GhG/6BWwGjFfPe3T7f/BFtoHJM85UT5kWk/wJ8TR54BW6VWM+AF5AywjUjQ9utldOTBslfIfjl75U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783922314; c=relaxed/simple;
	bh=L6eouRWDelBFNFcrAnz8wE2spKVDXzrmQZcF4SSp/RE=;
	h=To:Subject:From:Message-Id:Date; b=CDqgMYqJLUCGSKU/0cv9eIj6VDFEJ/4Vd2RDSk+rchBUuOPB+VvbDDxJoGWcRiB/svEEJYfURoy+V3DxvKWXaHCYvVXQz9sWpFSRs+6+vKqI9WIrm7IfS2vX0BseCH2OUnz50DVa5iV9Xe+KPvmeNWdVXbMy1xY0sgAjwee6dDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7Oo4CFY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7Oo4CFY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE396C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 05:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783922313;
	bh=L6eouRWDelBFNFcrAnz8wE2spKVDXzrmQZcF4SSp/RE=;
	h=To:Subject:From:Date:From;
	b=r7Oo4CFYNuWWORFekbA+UQaDqy0IlFtT0yjWdxFW3bSWSmRDnDeQyuT9aPVPkL1kr
	 /JIbpE10LirVeWSUKvD1YaSsUUIuZh7mOXrbOwO2S1ipaPTVnfWk7wavq+zH4R1J4b
	 rahJ8klmepemyrxA0QmDZMpFz7FpdIzmjMXKFufqY0yAFou7NC3RoPygROlE8XM8kx
	 UP0MMGi6L6I/3t0HTdeiK+offyQMfLCYyfE5bHBZvnQQWe/wcMnWHolcoJE3Mj4DsB
	 Y4+Dyu6psW0AOu7/icCSxDyS/gSCBdHES8EVGgZq4P634DhP1kSP8YneZVhsWnpoVn
	 sHxUVUS0BGasA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A900FC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 05:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178392231368.9061.2166392419808011846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9385d778c0ccda4dab62742869fe613dea42df350b85fdc77338eb7ef285a39
Date: Mon, 13 Jul 2026 05:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783922313
