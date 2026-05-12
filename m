Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78BE2284690
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 06:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778568035; cv=none; b=SShGzFJBs7DUQGbUITJpt5MdS2G16bYjEscDVhW5HTSpd0wKfbsgI7ER4zFDjJw2wRgZKYaRTc8gLcpxDs94MMy6grhptW7GlxB4FN0K8Y29Qt3jsGJl5T/A+Uzgs+trBk8GiNf+5jMbtE6K4v3JAUmI9NGTDg8eOKRUuZXE7SU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778568035; c=relaxed/simple;
	bh=2CI3rc1qQ5AfZzaNKpRm4+/DpGTzVWsmeyT5RN/6+n8=;
	h=To:Subject:From:Message-Id:Date; b=h+M9oXehDp1GrH/HSucn7CN4wiF4+TKgaLsmwyRJEcJtOVoFVL96JVVMGbNlrQ02484qUM043PvXLcX5JS1Zqd/Jg0rjKfMmcJQrqFS61bByI6iZKNm2zV0ugJWMlzyFBT2TDQkEm09T4PsVJ9fdGg13BoLtR+Q+bWVxsOV94Os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sagM5Znh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sagM5Znh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC79C2BCFB
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778568033;
	bh=2CI3rc1qQ5AfZzaNKpRm4+/DpGTzVWsmeyT5RN/6+n8=;
	h=To:Subject:From:Date:From;
	b=sagM5Znhhlo54vUxLsR3Y5gsZQaid9wbJwDDaKuVNGi/i7RoEAbznccSu11GtvDtS
	 TWwF1ku3kBD38jnF83L/sG570FMEQfFGg8KK7ZvOtcgTkmLcpfceOpekSZpgsgEjgC
	 UWtAgxWtxzdOByRlGNWK4y0U1tK90SIyYhmzjWhKLBfA+wZ44S/k+H/aCCWFFCROmK
	 DacDfA3aRdnvwGRhMX7tA0BmFi/K80NiZ8DH4uGGct6Tmo+PodFFVHTZzBqyxYLPjN
	 u0GCcNlElu8But3NjTW212/z41cFw7WZ7sGd2GICWOwTDAfMPI7hWn2/8pcapDzv/t
	 C7QRykgTdfwTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B97A1CD484E
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177856803374.15095.3072315056138019260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cafeb6738a9a483758c062277f041c7fb74071f51c74874bcf9cb5051f76ed5
Date: Tue, 12 May 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778568033
