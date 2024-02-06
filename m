Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1208B56B65
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 02:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707186497; cv=none; b=jDV4q+pphPjk4HPzvgQHzYo3go6BRY5YD6QwxDpfbWi6ywsKAd2VhJgrJbKiIpEyPW/srhIXOQLidKiTvHnVrrkT4hs/fkZ32HkXGTg8CaFDIxBz75Rm4ZDD3L139k8KRIAIh0f6kIoDgkT6TG3bb5wz37WgBdCnc2m3zCGvWFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707186497; c=relaxed/simple;
	bh=bBAioEsLVRUVYEiJha6tfwKabyy2CLI04tu1Pp3HlHE=;
	h=To:Subject:From:Message-Id:Date; b=S0KvDp96BeUCBCBp5mE/127WdkzdiOUrWDwAfsQFgq+5emxez3Fj9CMwrh/HxA1v4uMQkUQR7Mlq6YkqvneWQ+9qJWiDfV230YLqBWF+h7+BBdZIKGLhbJDedV4DfVnjU/mJuGAhfMrN/ZJH59CvFcPceAFfW3IQFE3o6wc5j4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YSl6ijSO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YSl6ijSO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8107DC433F1
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 02:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707186496;
	bh=bBAioEsLVRUVYEiJha6tfwKabyy2CLI04tu1Pp3HlHE=;
	h=To:Subject:From:Date:From;
	b=YSl6ijSOSDMpwr3uwpRNzBGaduqa/vuClYxlSRdcYE7hDyK6OzaCERDgbjKCCPlqN
	 TTz1Va7YcVDEDyrjrcOiKlFkd4Yw2+q6EDK16OJO2knlcEAh3fGPuD6vD7raunsg6h
	 fugxLSqeh4QsaJ3bl6CSY+EyRdLoJ8rQ91avTfG9Qy24k/kJaErcQMwNoc2ccH9T8H
	 EwWTrpywA/OEW4kqA3CZ4Hp18uM0jGL0F6saXX3KvgeVagxlOsarhjzTxJiEDLUWGa
	 p4gpesc0AG7O/9nUOCKASkBX0o6l7teWv0TufP/q7I7/fSFkam6M7mozpzueqLTOfa
	 WOxch0nqOWN/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65F48C4828D
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 02:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170718649641.7906.8247639917820176798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 871df6dba0af2d12fbc2a50c54359b6f1d6c372c5943b9ce2c35a5e72986d2ad
Date: Tue, 06 Feb 2024 02:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707186496
