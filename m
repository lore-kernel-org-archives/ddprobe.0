Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58296426431
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791931834; cv=none; b=FwaFfR/n4tfdQ09KfsjUavhCSyyP5eXZjfhac3Q0FDwmUHL6VGmcGhCNCvHI3IQZN6cHOjvSnTOQ1Vf+sfOjFxVII9cUwSXj8gfjThOh3s66xrt+LAPqjUUkSYSIay7fLN/+jKyJwgZWOmRJ6HRxhQAGbTyxbH+NVLi2KiwCJe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791931834; c=relaxed/simple;
	bh=EaSzvpf17ERDK4uezGJ86qoVlKrl1QuiXQLBhBxEdX0=;
	h=To:Subject:From:Message-Id:Date; b=TV6HFz+u59cBNVyjxClrnnkkpEK5k1qtApD7tN9hTIRAXmZewhOCizawRJtZZK1kdXWXnvgnECJGR3P8jL71AvSkFMKiMWMuhd7ffVFGlmxnZ2zqE4nwE7W3UBd99ODANSfZ4x28cNxDL0Y2109IBnu4gut1z55XP2BR2jyRxAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JzoVQTKa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JzoVQTKa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3FACC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791931833;
	bh=EaSzvpf17ERDK4uezGJ86qoVlKrl1QuiXQLBhBxEdX0=;
	h=To:Subject:From:Date:From;
	b=JzoVQTKaETlXcDTURQfcD7xeqOBkc2PWJ/y7+CnLvKWhVGDKlX1y8I07KPW/IC0kr
	 7skRe9//zFbu1FVLa5DGt9DwMSNljyVXckACMXlKEWADGaf8acHKdX2tGEgx/aJhei
	 9+0J5Z8yxmMV1IJQsRrzggrvOvfwReRn8FqCb17zHWEK5lNkXmBejZAVAh/sE7URn9
	 w4VneoL+5RvC0Sj8Gjg0NPWyUYyfMBGn9ru3UVIR59fQHzSYE6GIC1ki5s33odJ0Pd
	 a0C6cQyeIjO3lWLUt3AwsrYDD72woasPyPOxrpDE6RTTF5FQ/CRcrMo4a51tTNeqnZ
	 qONUrOdsk35lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF83CC6B12
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179193183369.5783.4801093387893277400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db9f4bdebd4b92059fba1ef30af9f07a8a9247c555ac2e2e7eb7938197f87521
Date: Tue, 13 Oct 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791931833
