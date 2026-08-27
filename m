Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F80443F4BB
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787827834; cv=none; b=REUlu7+PUr9131Is6YB9Cg+P4lt0uf2ho/p9/7cDmBqZM5Q3m9kBId/VLGTl9fN1ZYZKsxLrffB5Zz/Bozt4TeKi0pLMOuUQ+ZDAtmKI2GwqnRsAM2LOHW/cKHLexo3XSJV7GkLa1bdWvc0/FkSOlf95M0unxbJcSrTHG0/vNhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787827834; c=relaxed/simple;
	bh=E67sACOG00XduaG5DBzN8B66AS24Cak2ki2vR7Ic4Ko=;
	h=To:Subject:From:Message-Id:Date; b=NnFWDVUtDDndKvaCSR774pCipkDZAojd251YXBfIseTmzzaZCS4Jw1hvjGbF811y5nCLZfitJqxmrgz6NZj65Bx2yCUn5CkOoSQt/Am1XJZwujdOLhW5eYR3RYVIUDRrFONu8EppBL0s0hzzTAKs/lB1IxyOInM02l2jBFHVDbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fH527WQw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fH527WQw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C87E4C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787827833;
	bh=E67sACOG00XduaG5DBzN8B66AS24Cak2ki2vR7Ic4Ko=;
	h=To:Subject:From:Date:From;
	b=fH527WQwEf6RM1AIBU2u+t7EyVaDAT0lvFJ77Zn2j1+prGTEOWNHd7a4Gw2TGenou
	 bhcIR5TeuZCVukuOWw8lhVeQ0Ho9uRp1XHr8CbIjeL6f9ylr+0J0SMBaNjhC1SI0eE
	 bgHT7u3htQnMLkQpRzSk8DuZ+b88fuoWvkE+3o7iFJVDxNXSfiB2NgB2kR4bQ8mL36
	 QgtawmjoYxsDCWyApO05mMUqTuyvmCBDs6qqDV8Z5gqckzejov+x5tbYZTtI8KFCM2
	 X6tKZCqzFhevvWHyxW8JaIoEeU2Fi6fZCgMfrvE/vHj1NHPobsJNjVUFpmXguNWM+T
	 maZqohCXrtR5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0493C61DC2
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178782783371.16536.15768587980122313660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b85846191f63f043c88962667a7f6e6465ce79902fed5c7302452db64135cee
Date: Thu, 27 Aug 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787827833
