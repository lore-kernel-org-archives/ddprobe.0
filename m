Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495161DE2B4
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 04:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765339374; cv=none; b=CBi9MhgR1t96kOzAHrEUBwtw6yJXHHWVPJ3CDzWrpgTd5FlsbTpSq5LuuprsabJ40QIVCwX/r+g7XabtNSNdGcnMutmLBlsAjmqHzOP+pLE0VIB5Ax3MVHHbf5ApbXhKARFDCSlDF6UqP5kDyEU/Mtd0O0mmwF6maLgsjg8EvxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765339374; c=relaxed/simple;
	bh=UYRf4MUrPbuQqeSko8DlWs17Y9NEsi2RCvxUuuxhuSw=;
	h=To:Subject:From:Message-Id:Date; b=p9gUBpl37PJnY6j+LzjUwBAMXnnJ4vQ0WEEgQHgWEz+MoGNkDLWGBoeRI/RaCqt+/CDsPb7gSxGgjwVDgcfBR1wKUN5+BIpPHN/+3dmH0/ct1NUOWcC3sjDsj9W5i4MsW20MSYykhY8S5c+0k8x7Q8BJQDyE8J12ZQ88Nk1qgyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RdflK9mn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RdflK9mn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB2CC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 04:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765339373;
	bh=UYRf4MUrPbuQqeSko8DlWs17Y9NEsi2RCvxUuuxhuSw=;
	h=To:Subject:From:Date:From;
	b=RdflK9mnFfbqskzkhx9GOvbdSdOoGHS20Su5AK3dDpgQOUXkX1htTdsoi2M/v6U2j
	 14qDKoM7DZqAAORgLh0HMv1weqWSTIjgO7uXwJeAGlkc4ORPVl1N2JPQC+ugmcGzQn
	 E5cNHE8szr1HIdcdTVIPlEKvDHpZ4DEJNloDXeyzaTqZFijnDArHNjP6/XD8IDtjDr
	 +Dri6Gnd5UcyVCuvhEFSeGFxbL9vjouPKg/5m0Ad3kjhND6YIsNugMG2AwpyRzNkVP
	 zrB7KDrf3wglPOlg1OtDGLKjX8CXcwx53pBEM/Kw38zNxlEaEnum+QMsQzfVl609zV
	 +4z9MMlrDRnfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0678D2CE17
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 04:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176533937361.20284.373292603504952791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce46d61312d05dae7481e5a9ad88523adbaa1f63f2dbdfa4649550e064b1a210
Date: Wed, 10 Dec 2025 04:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765339373
