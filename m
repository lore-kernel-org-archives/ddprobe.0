Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D90119B5B1
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748243394; cv=none; b=tcc+d9DD4VyXvT3yyWHOrvIKwcT+O5ZGbJXOIxBT7dEtwBMD/wRYjlNyKIyPCVzjbJitrYal+gqG5rZxxCVVJF9KxG5UPZXQcfj9SFlesbDLFsReeURUjQX1vuaUiwoPucLvF1RrxBmITts340e5xfZpjFqacS90GhC8qSQnVDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748243394; c=relaxed/simple;
	bh=Rq6D5/vD3x6+G1BbVh+cNbLwyNU7eqraqHp3I9VEw1s=;
	h=To:Subject:From:Message-Id:Date; b=iBOCLrIceWu/FaEz/+3fKsNMjagbsikP0KtyOc//40kIJCc5GdkaZbxSINFmLeXH/yQZievNz7id6NSjWaWK4D0C8j8FlAFykY9sSPMGkHgthJRR7jNrpZ0CFCJjObuQFp8B4PM73lOZjGIue6hGjApGT+8Z9VDLX30cVP52VPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i23oQwrU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i23oQwrU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2218C4CEEE
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748243393;
	bh=Rq6D5/vD3x6+G1BbVh+cNbLwyNU7eqraqHp3I9VEw1s=;
	h=To:Subject:From:Date:From;
	b=i23oQwrUC6Sewa4XGG1x9lvBVhwmXXpxDu5SeCdoOitUkq24vL6bTlHZhn0JrYH1Q
	 31xzyR0UMja54Gt7nJ0XFlw4Cl0UudV8ZG1g1DSUAzO+7hV9rvWQhnaQP7K8qWEteN
	 paMj37CyVsv4Kcj1vewVuMT6WpLaxEuLQCWhDajHF8L7faVijVVEdRy2SIgG/OLd60
	 WLMdQi91NiHrzFaBlRCCarlRjQcx2NDqZJl+dSUNA6KcflFHIbS5eexdVIeLS1Oqcu
	 WpFUIO/u4gI7P9r/7Nh4eqb4vxKYah2II/zhpD+Jxoi/JpFiTI6yZvmkvjhRWKkrvs
	 FYl8z1vGMjJ0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9113EC5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174824339358.5525.5799289902070148941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b226e8fadac153243a53a7501cd0e6f4c951b781a5c89ad3e9be9f97d5dd856e
Date: Mon, 26 May 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748243393
