Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F9D287503
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770874494; cv=none; b=dsAD8LwCGI8o79NOimDnQQ/PxhVAj6yY/uLB4yodWZUqIN9OWKttWibeO46+xatLZ4M2d8huVTdMRwZrV0izAonwqdYi5DRbPJaXVAYxcVfex3rgB+FmzphicuzpwCj9gXjQpVQteb7tbhApUL68cEenyY3nkhAAmofNOurfutc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770874494; c=relaxed/simple;
	bh=mhs7TuNkqUQkzw+Q5tvWz2yX77cnanN/NYUFjuJqwoM=;
	h=To:Subject:From:Message-Id:Date; b=m7vDAL/shdEpIQlDOsf7PrLggPhOWuBaw79j+viEK7uIpfCO0wlF2V/KY5LMhwhHVzVslUd9Guv8lB6xwl36MQ7fl5nqXKY9+OpNvrOp8alicvamRh8qP35HxMFsqi39Pxw7OBIPCBindMp14+iHremXWUr4PYvX3NPolwfPZI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eEWvJnna; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eEWvJnna"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6184C19421
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770874493;
	bh=mhs7TuNkqUQkzw+Q5tvWz2yX77cnanN/NYUFjuJqwoM=;
	h=To:Subject:From:Date:From;
	b=eEWvJnnaReUODL4z1JnBqPQ1o6OdX7a5v+cv8YK5r5cfZ/xokAdpEOazSM9YEA94C
	 pzjZFUsAQHWRGbrA6F1fEHZxszIM5uyVuK8KOF5Vt1yMkd26qE0jZ6ewZH0q677rMn
	 om0d28RhA8VbJMpW/tLvsnb2UzMvroXrZztrU7B7GjC9NEPfcWOcBi4pdhHU7PE+IJ
	 3ElFtNAjQelBMb4R8r53vEwi417rR0dzH11muJS865IO1Uwu+xlWmQBxxhSRQO5ZFX
	 1Gh1VYQ1fB/d8qzBP+LaPe2puMpnSVC99+jpkyP2wE4e86EQrhT7W/pdfPPS2z4qXQ
	 CKuaAsMSuHYpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A03EDF038
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177087449359.11025.7945047863052792693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f5491e97e7b1bcffcdf81a7ace01f05dad10216e32be8e967ab6527412b5839
Date: Thu, 12 Feb 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770874493
