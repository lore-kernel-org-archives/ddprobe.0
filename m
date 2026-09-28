Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7C344470E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790577634; cv=none; b=QTclp+zpkACmzFb1HUzXy/0QVWiZLmHKX5npSKQrI4uQCvhXVvk7/9++9QadVFWah8YQVKz4bLrycNpKnPy90q2i7boIJ0/Q2k7cV+biGstGQLxcLwUPstogJLXZwf/EbD542Q77rfS7M108GKNpuu1OzQ1smCyNm7T+HoxhdOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790577634; c=relaxed/simple;
	bh=nXhTZMREv/mAUTNCPeAJAanzNbGIL+1UE/mbMUzu1Vs=;
	h=To:Subject:From:Message-Id:Date; b=g+gAExyoB3kPeOz5e/r6dJSGRsoFLYQzMeF5eVjPiWDBYZCuZ5GTb4C73ZHXy9i3NxY16cNIAjjd8HL35bYX/QXVCqf/Xfrzle9QVjLISq2Zcm8zrRhKQmbmymCcD89zjyOIGtijCTm4z/b2/VUm+gM2XySTgGVsnMOFHYvbpNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zz1zNoMj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zz1zNoMj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B83C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790577633;
	bh=nXhTZMREv/mAUTNCPeAJAanzNbGIL+1UE/mbMUzu1Vs=;
	h=To:Subject:From:Date:From;
	b=Zz1zNoMjQ7PCKW1WRcyti5e+H3reIJZjI7gTk4vvPk1i6qSGYzoCPqh1F9VpLqnQw
	 6nU/pPE/Hqc48zkTo8sK+g7QYPQOU/QYOoTE1hLX2nsmLaHJJgGskVO4NlY5YSX6GD
	 bdJITGplxoH1VEqZDCQYwvtX49OKE3g/5Ah+/FYjyRF2cJmtSTgIi7+JKR10ktYefI
	 SKwHCcnWk3xSk/Gk6P7dx43pCLE2SqjuRvTFYsckyc0ueTz5Jvhzj/UFiYwD4OrSvw
	 azFJ5L0/T2q3I4eqdbSO43Fi/yvoJMNTc9N9tST/Vz7rExbjdnHX/ksItrqC8wtmyA
	 yWUrCc2f9SmUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B448AC9833E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179057763370.29652.11581249668532057381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84272013d83f6fe091d2ddc840d97438f5b885403f7946b3d6c50fb037e5d479
Date: Mon, 28 Sep 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790577633
