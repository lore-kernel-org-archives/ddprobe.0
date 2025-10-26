Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296AD22AE7F
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761460194; cv=none; b=hbQZa376Q7tvky+rIR5FI+9hFYDumxI93GOK9xfINm2vME42PMTKRAJS5/EP2X4R8GExpgmENQaF6tuR06vo0aPp80df5SZSNhSe9HtVpccOEyxKfZhADiXTcl+FGt4Dv7Ny+QCagSKaD21YZgSFsZT06kney4IdUGbGgiC57Oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761460194; c=relaxed/simple;
	bh=dASfMTo4o/sLcifEZ/DRD8VumUcdHKy6o2oJjnks4fQ=;
	h=To:Subject:From:Message-Id:Date; b=EnQftjF+JSHYd2+JhvY/F3qd9ynodl/Gtpy9sbgyx3L34AaugY5P33kXihsy5cuFGIZc6JlmFl+rJtPapY5WK2IGv5ilQm4nURyWFsG7NtIQotr/zWBj1WZbEstbobGWV6mM4eNVPhS6XJhwMTvQz8D2IUySSgq7Bod3wvoXOd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=StwqDMW4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="StwqDMW4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6409C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761460193;
	bh=dASfMTo4o/sLcifEZ/DRD8VumUcdHKy6o2oJjnks4fQ=;
	h=To:Subject:From:Date:From;
	b=StwqDMW4SgDD8Bkgb2uVHKgcgfXsgvzAiyrYgatGSZKO0bYPqXw6QEVQB5Jt8VWWF
	 ctAGzGExIhF5TIedUWbytAp37I6BhOSraUySKiyKKOTmexYVwsilrG//WILv9qxBLq
	 lvk9MlMp7SV4sUmePOALoQ3gcKLNU/8iveJCb4vuBKzSZbnASNMDgakNhCRU3ewowr
	 UK2gdojjrnm+3l1R75UPQY44yoTdrgNuDISFl6SG0rniuy2+7lcc5BZq3Ynf/xiLkb
	 e+QY9bORV3ld9F7UPCr+ZFge3YPnjYR6pWTP8VkQtkP+PTL29AI3LCKRyBREKzKmcy
	 BqPCSqEWhqs2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D1ECCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176146019357.23138.5838142362669997575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fac861cbd7116fc006d0b1fb46a3bebac3f099d48566c09c40cfc694e0363e6b
Date: Sun, 26 Oct 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761460193
