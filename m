Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2665A2F99B8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784993434; cv=none; b=NqtfLxiyUDtgmUMEEC9ut0s4F5ElfRYuwVumEUmNVRqE0X5fCNVbcEUQZuCGtq5l9S55eaH/cQJsw3zraqt3MFIOu3HTwlc+XlSNMoLmRUFhgoNG+NDGbdUnR+P/dM8olN3W162O2RvmPbamvToPOMTF3MRLl54BhIVXgvTKQac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784993434; c=relaxed/simple;
	bh=L/ahCgL2gqX7oN099sIGMfBnN52BKdVaoT88s62Birk=;
	h=To:Subject:From:Message-Id:Date; b=e5389Uotag54ENqBRb2CW00gsocbnMSK113+my0hAQBqZDS5WwZGd5SjS73HJ0X5yBNJ7AfeBc+jbxkF8AVNbv7dwpl+OmarmhPUdhLtFBRsh4jGiHPpYSWL1mFpFZDgPWh0XPlr2o9LkmWlskcdxYNKXKIShLvhKL8J8SD8IS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZe6CYDd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZe6CYDd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5CCC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784993433;
	bh=L/ahCgL2gqX7oN099sIGMfBnN52BKdVaoT88s62Birk=;
	h=To:Subject:From:Date:From;
	b=gZe6CYDdhn9m9IW3vBa+ZgY8HFZxAvy2K9ITLof5JX9VFlCo4GgY3vxBLIc0L74Mr
	 ox3UzCJRlpA51Df1rW09lJjNfUw2gZ06Ml/4jvy2jpqwIBBYagI5ewPn+4URrH4Sb7
	 DNV519k4MdEc8YjhErygJN865F6FLeRjz7DjZRLux3DPO/CYz41RvmxCZpC3L1AdIr
	 UdRxKwIkBpgn6d9f3MZFx0Sat8W/uNa9IyRHZPgE/woGYVbQ1mS6+daEA3fhzR/gbd
	 7SupOQU8fhaq+q9g2dZEPUkvUCTvrX3+Kj5dYE3Omfjxf/4fuXCtau0Q/H43GQo0HP
	 ZYPoIdjUPJe2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE091C531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178499343368.22976.6036720329602397324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23cdc94848bed93ecaf50df6c42d0f8e724b50104835c339e5b7abff16e3971a
Date: Sat, 25 Jul 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784993433
