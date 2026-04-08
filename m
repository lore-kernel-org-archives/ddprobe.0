Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9982153EA
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 22:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775687134; cv=none; b=ktUV1eUhblf8dVI1uT/oZPmnS/vfzHDKIohBaDUxNTaqFkipObDY+ggl0GSIlbWAQTWRIrt71CWOPx8KIwh8TpklqNsp667tHCb+2wsdUcgA/lkjwWwJ0QvSQ5Z8LH1qDdIRWqCImY6lBjrruah4E+jxgjBHO1oPsSOisUmcciI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775687134; c=relaxed/simple;
	bh=Rci0PAjd74byTmFDsu1gf/xt+SCKE77Wb4Npb/+tsVw=;
	h=To:Subject:From:Message-Id:Date; b=oxUSyy9VsOk6AXeLkAECWHrPdlJvKE5+W4xnbRpQT5ZbtG0XkBQxOOycCkDoBi6rfBD/3PvGnfGBt5x/0dzfEO3pavqF5wRf9ZXuVLnoicSsDRItNYICGmtsqwQkRcmPGLFfUuSW/ss+JjhQB9hrqXDYBEDM8cFIx6m29TvnzcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9IOsOD7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9IOsOD7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF3D7C19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 22:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775687133;
	bh=Rci0PAjd74byTmFDsu1gf/xt+SCKE77Wb4Npb/+tsVw=;
	h=To:Subject:From:Date:From;
	b=e9IOsOD78MMNU2s35MiXMjZ0fBri1pjrEdRs6JWbN5pnK1lYb9eX8JISf39htv7c1
	 6+XMjPUKN1BmapI+BjuzsSszwOmbNHflDf8JdstCTJCxN3QPIugTP2pjarnbUxBxRh
	 nCD6P2EPXv7AewLQCmRG+6tAbRMg3CC9/kLaEQEEdaBs3cjE2JsZ04z926wWdeOe8A
	 +2YDckFY6awb4ddCEpPQM3dCVdMM3LWLo2eJ6x2ug1kUUPXzzJI5z/ucxZrbBYVkiO
	 beWEKSiDkdVm7+7amTBaWssZ6kQrQ/ts74F2Rut6MA651T7Wg19P0RwUe3M2NkkXcV
	 HawMLy7TXKgoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5C710FC45A
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 22:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177568713368.11310.6203863356560449595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3637559bc80ad50d647f7d9faa7d5d0102d03089fadd9a4c06e61d087bcf26b
Date: Wed, 08 Apr 2026 22:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775687133
