Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17ECC302149
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 08:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765355574; cv=none; b=b4YQgLGhmiLVs6mTuavYlY01phj4vAj9O3LOhwIiKcoWYkiW1jBuZHv8MuruX1st6xXd/CXCd4Cb0PXQP9c+iQXdOAF7Uem2G7dAJmcTtgPgIda8bJbI+ho5vPYZUmLaif9uMZBfDZxjut/TzhwYB9EAkn3T8M39z9UMKfgr7H0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765355574; c=relaxed/simple;
	bh=G1Py9L6ID3GAEqNd+mGD4ephvhbRnu+JaB+2XBwXGCQ=;
	h=To:Subject:From:Message-Id:Date; b=snRgOvTUFQyzHGZHBpccyI7BcAL0dON3sZ0YcWG7sSqMqF7s6N6TwwH1c69HSlSBdJutcB7jQVh0anGEhAUAw5d7IboSiBT2M23BeZm7LY1VRzuC5SjN8UCrvzoILGaM3lD4ojDhuE3TGeCmHrJNLCZQESIxJRGG0cSwDqtMzPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FgD7dsOD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FgD7dsOD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5587C113D0
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 08:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765355573;
	bh=G1Py9L6ID3GAEqNd+mGD4ephvhbRnu+JaB+2XBwXGCQ=;
	h=To:Subject:From:Date:From;
	b=FgD7dsODuKwI7USEO+Wf2MBUl7yMTrAx4F62bSS7yZdDlQ46xdGrNe7h7F5Gj+al1
	 J7trbDEDRVYyP5JfT7HgbwQ4RD9GDjls139yEeRkZmdiKtrzzCAh0kGV267IMESuZL
	 R63cHWNBKZ6GZ7k4SjT+z9+//oMkROpEfgjlW1hqhj9BeyneEL2cYlH/d8i1W70MAv
	 Xppw98uZQzTqnghD84i/GHdDNHWd1kYwQHcoCT+2NIGnAxe7mIw/CMYxD1JymsT1LA
	 ACzNtpKl/VmBdG5MKUiHROYHW3q3aQOWCOZUO2u4pI5qM+I3eDn8I2jadPwDG69dif
	 pYXBMboxtIEaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935DFD3B9A9
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 08:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176535557359.7056.14007381897536681854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4ea835b5677adee634a27ab30505dcdff334467c8ac603074f7956f264fbc99
Date: Wed, 10 Dec 2025 08:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765355573
