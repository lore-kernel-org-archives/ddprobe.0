Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC935213E94
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753385993; cv=none; b=fnioOtmV0q42LuuPTWPexVbtazbLXCFdDhmrIeQRop57djl8GVlnQNruUlijYMjbgkAhuds/pjPOoCIDN4/wAijhtKHN9qweMExp+rU8EQkelHUGLMx2yyajXituHi6SGuCzUNnEfDdq+frkW/CnB2iucmB26KpmlE+fgobRkHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753385993; c=relaxed/simple;
	bh=nRBAk+Q0/mGaITJYRL7HRUAg6pdZDDVD1XdP2kghl3A=;
	h=To:Subject:From:Message-Id:Date; b=rB4GqRj9/Ijef73Ah66mQ808TRybEllwt1MMQEAyLSfdVGvDAyp6LR1BQCTl9arvTPd6/9MNl56PHQVyMuMwxea1TyG7kvkBxufT39dK5lZLuACPSFjKdfn4c3kv/L1pxuO5ccDB5xgNhubGkyDimyDR3kWVzx4TaTPii39OYdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XHA3IAZa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XHA3IAZa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2F9C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753385993;
	bh=nRBAk+Q0/mGaITJYRL7HRUAg6pdZDDVD1XdP2kghl3A=;
	h=To:Subject:From:Date:From;
	b=XHA3IAZa2LkEnYva9IglfYSCeH6bpkvGtfjcDfDDkUofWIZlg9doCqBEF/cT/dE8q
	 8vdcpjy/Jw3JEuMqzhzmvIgm+0pJXc9kkHvvUx+2Fc6PM4DAKfRDWy3ME6BPTKInDI
	 MJheisYRm4iAARpEyLBnOPM2hIXMS0uxc0GjNUwAUmL0prBZUENEl/axdNDNPrzDmW
	 p+aeIll8ELFKhGAol+RsV0BocqhLpswCSCVSy4YULe+ifjGFQnmmONGBFPlw0D22ap
	 aHFtYCn69XQT+wMI9ah93b/PJpCEOS8nMm/oUEu19OCXoh+9PHcf2kS4f0t5Ijarts
	 mJAUBj5KkieAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907E6C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175338599357.25057.2127655412600123716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5bc79139ecfa7cb367cc7d7a6f0f0c629f5c24db50bc98a11f67903265d16e6
Date: Thu, 24 Jul 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753385993
