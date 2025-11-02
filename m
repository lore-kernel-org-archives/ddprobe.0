Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2231970810
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762051194; cv=none; b=gLuXCsByudM+cJ/fkQw75IfekMeD5zCbAbqO8yqlfclQKDupN6pEMDxr8bEtHAx0cww7sjJ84Qy1Jqb3tDvhEbZhf0cB4D0+EvSITPA9Vfhb6u4llDG9y8T2mXnqmPclXrKrF81Mzz0Or2wHtx+IE2nVMb4e4BCdkVoRCM9wL1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762051194; c=relaxed/simple;
	bh=CuAkTHxNQc5rvW0VTLICCLU/MVd1FFnsIrh3HmqiyCw=;
	h=To:Subject:From:Message-Id:Date; b=G155P7J2W/CMczexfqLoyWPA1sLtERTteVEFz/jdeOkx5rQL0eOq+fCpQAqgtmgrOVyyEjy+O1VWujw3PR2+hSzL2v/i0QED/xdw6pCaRQh2cRXeealChTFJNybD2ySDJlABtxbLe5OwM39B6pnI2WfwxuPcoUg3LhNYDRuFhL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IDeRCk/R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IDeRCk/R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B61F9C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762051193;
	bh=CuAkTHxNQc5rvW0VTLICCLU/MVd1FFnsIrh3HmqiyCw=;
	h=To:Subject:From:Date:From;
	b=IDeRCk/ROf0zgxOawv2+qT5ZsWcjn7+lIYaeS8Rhw6RAF60x7Qg35hvjxbeefIhOT
	 c2CFARAqzkVu1KhabdtMcdHvYWMyCn/j8dbL4jZmGk446wWNRX2ZxXQM1sMOe4n03+
	 xKgfdeLONgX3dj4OI0gDFQX7g1kMEBbtvg8EvxMktqDnKV59xudAAVsYrRFaaC/JQH
	 7Ba3Aj96CzeglHRv36GS/T1MROaHRfZZwt0XOghjM8dLtKtTkUrNW31lQcR5RPLSVf
	 aUWezpOjn+/zNGaAJ8e5Kv7LuajUWca3pDvspxpeNony8WA4AgFDX3BlOqgFw2hVF8
	 /7uGyJD/0En6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A4CCCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176205119361.29540.13753788323946342305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 676bb373d7f1f5e0b70e78235ee72ac8e2ef742f715cdd807650f1a9e49d4626
Date: Sun, 02 Nov 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762051193
