Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC4131D740
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761595794; cv=none; b=JogsrLWCdC7pf24udfj962+23utK9u0XcyC+m7qKM69gOYhJpZ3aJTY46+BnZp+loIF0Ylcwrcauc3kNOmY1W/hkT26H7ux/OtM0gnfJ9q9SGyml+TLJP/zy6O80tzow/AQ1bpe1gtasoSH+YDi5KzcIrpO5B3gmLGYk0ip9khI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761595794; c=relaxed/simple;
	bh=pSGjY7Me+anpWpfAJS4URQ7kpq5Y5YM1SJD7hAr15f4=;
	h=To:Subject:From:Message-Id:Date; b=vCIrhbB/wVU+Z5nHC65EP5aAVm9C/bMv10lXlR/mnAQTWyQ0Y0+pe1B853gOBCg5GdbT/1sG5fTG4una9yQcINi2Eqk5JiUrQAOGcItLhfXu54M1R+KhaAHibtamHpZXUctZeaApYSh2zHpmN/NpPh+vjuY2Z+YWlusv4/WmZCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khUdFk9G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khUdFk9G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45F2C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761595793;
	bh=pSGjY7Me+anpWpfAJS4URQ7kpq5Y5YM1SJD7hAr15f4=;
	h=To:Subject:From:Date:From;
	b=khUdFk9GVxHwouxTVWGVe1F/2Wh0kryx12KYSOBsxK8sA5bgpMgn21SgdEbKV1oAk
	 ioDWKNEp7MTgvYarwO2P1jXJpVIjZz/vo+dJQc/sSzbz+yeN+jDjJN+rzWo8ZUhwGW
	 K1h3O5a66eTGUcwkn7RtB445Bdi/REkBB57xlWFXvCfxZ7eSZdyfwKhscu8b9VAJjq
	 yUS5dr2lRCFmmHRts7mwBa1ov6pU7VpctZxVVd3zVRTxHt4MGtuKdyYoam73jnm1LR
	 qubb3OyxPG6ueRnskSG+qI/ktUrXZZkrhXvVJJQwUV0WuowDsiQXKYXqEo/50Gg4cR
	 lwdA7E6If2GQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AA1CCF9EB
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176159579358.24456.7088355474985802528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c871bd23bf6b8a0e18caab9a5adba6cdb012908989f59bc8df6ba4d95514f222
Date: Mon, 27 Oct 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761595793
