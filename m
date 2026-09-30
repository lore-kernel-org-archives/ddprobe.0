Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42107389104
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790787634; cv=none; b=YI5oo9+tOiJX/0c9KMChZcPSkS8/9em5KHS0SkgvloPxEL34fPPAa5kBlpVFOqb3xOwmyvofFWOiX9mppeGQ2NvdZspbL4sAsvxGsHpLmPX0V6NGZKBapYCQFOM//hn+9qSrg++UpYJqbtnq2LHmjE/6JUfVGpCCil09EWukqPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790787634; c=relaxed/simple;
	bh=c6Uj7UHlE0nsfIRX+J1pzMcEdWD3uvng+SmDTaUlii8=;
	h=To:Subject:From:Message-Id:Date; b=uCJ0QCHj3jZ7xNoKbcRQr+Zo4VDfHQbDwIiaRF94eWa+A+gj2rWre/MtBs9A2RlYG15ygrofamtZ9NoNymV8GZiMFWoM7tIkaYzrehOlEH2n9hu6dq9fK2ZBFr1cFqxYQkc/AahWaC2YQYsE+tZU+zm2ftY+VP2sWT7vCQDTyQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sbaW7oFw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sbaW7oFw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF95C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790787633;
	bh=c6Uj7UHlE0nsfIRX+J1pzMcEdWD3uvng+SmDTaUlii8=;
	h=To:Subject:From:Date:From;
	b=sbaW7oFwV6i+HyA38ZawqZNjEjTvVYg9sPyImKqB/92Yi3SSwfPpiUKGSmcizuGdV
	 iIyP9ZlmPCAMqeT1kLVr1uESpkvrKa+SIzBarcNzoGr6C0rNx2J/uI3f/LUgTsWQv9
	 moBEXjU8hjd6959JuxytaW9y8OoaVvp6+oLOxQH2SCRwVr07gzL0uTVqe27nPMuZfo
	 dLyt+NR5lwpaQILpOCGi1Es+tBCY914SFeqFcE7zctkDAHWevFZYsdxRCI82FcHg/r
	 eN53G4ClCbUhKkfmQ+rBHpntDHTHkfxXKKyLNnACdGty7n4wX/9WblkZKfINP0NfQG
	 CX+DReIQoOEHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9C4CA5FC4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179078763369.12362.1488340215999527568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80676e34f76d8508dddb2be6733c3cc10a013b7f6d19c293b7df705cb824fcc2
Date: Wed, 30 Sep 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790787633
