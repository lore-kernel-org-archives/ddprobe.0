Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4421C101EE
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753984194; cv=none; b=LvB87iccQ+C4Mdu54YLFuWbs661e0Rj0Miprq6iMLUp0UAZQ9uFVCJyTiNqK/zZ83zpR+rYNkaqXbCxaa5Rk1of6wu/TLlAYUo2wnsm5ZSySOZs4J7YmU8ZNS6nACHa2BepZRD4PJoOmqCSYQskF9izuU1tYX7VZ1SbcV4hgGYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753984194; c=relaxed/simple;
	bh=Pa3+k34GqZ9Nv8SzIgTxyhHjc+ohHoT8AoLzL6EkcYg=;
	h=To:Subject:From:Message-Id:Date; b=QOJ4/42qf8FQqTxbaaG9X1RXQh5g8q3egviYFV/yaBL7pzPfLSk72EWfYgPaP1BnHMPA5XBrNTEWYSVawfmmdtQ8yaC9bWlhUpvl8mUhwCDpqubjmaBgt52wA6/WAqa4liv75ADJO4TBY4adGyHhZxvZKPPVa8FJOPOJe3VerKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V9Y4/fRf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V9Y4/fRf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E39C4CEF6
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753984193;
	bh=Pa3+k34GqZ9Nv8SzIgTxyhHjc+ohHoT8AoLzL6EkcYg=;
	h=To:Subject:From:Date:From;
	b=V9Y4/fRf/BAFa6lB871cqU0w6dxMJ4c7ECSXHp9MREev3gSDPWXZhnCDIHgOeFoko
	 ZW3fvL4JF+6GpwOqny0yHD9lPk8Nioq8r8X43zQk2hqMVc5XYTBV65+WepaEF8pk6O
	 zKUAxTzNxM6AGNQDIiuwefLA+rke7ZQUADPM3Ttlfmj4g0vYCF7/mepKllMwdVI3fQ
	 IKXrJ/SdaCOe/rPXuPTiLbtPwGmg9qXMvnMF9UkIOlLB1OJklMFpP7Ot52Z14nAH/A
	 pIjlDFiuVIU0qKGFckDtbe0ujohiZmtRPcNIMNAbBXLpEgJbmNrANwIETaf5h8keI6
	 whK0dPfWhl6qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EDCC87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175398419358.16257.14239644061840746824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65ed327a3959a0a23d8029db6c77a1d48d66966e8c01866ffbe3d92188dd3e09
Date: Thu, 31 Jul 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753984193
