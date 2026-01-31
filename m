Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2874E2BD0B
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769876034; cv=none; b=iq7GhyVNcROfP+Y/OKHL7/F+5coIV4JinMyh/zzo7rtR4BQA2NALrzAH4ublYrX/k0WJLFn0ZaNNtKH58trDrLrC2JXzKrlpRrHp84PSqFSabatxnX/I0yOHZ+6+BKal0u/oWhh/7scXonBsQ7MpPlMPOSNJYS7fu5Ej1wRBn/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769876034; c=relaxed/simple;
	bh=S258XEJC8wn2on61J4+CXs9IvPoAP08VzO3DCDAlFvw=;
	h=To:Subject:From:Message-Id:Date; b=utP3LzUFR3jxsTqFB2tmQt90G9ZvZKNpKIESBXftYmho+ugnnqlBFc+4ch9S1AGhxIVyBL+FlVFV7fzI+UZZMbV5tGU+mmqp3tPSGyCW4zFqYN2q0RwFVf0tTOHyKlicH7VE6uu3VvMDTIQeqf3AP7D/VhHYnAppsRjFzvEmyNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o31G3dT8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o31G3dT8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA74CC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769876033;
	bh=S258XEJC8wn2on61J4+CXs9IvPoAP08VzO3DCDAlFvw=;
	h=To:Subject:From:Date:From;
	b=o31G3dT8/BZKrEE5kaiAVq8Kmt3oxvIjSJMzXG1LBJp2YdSNnPst1wHXqlguqY1JB
	 qpMp6U8q7mO6NFs1rKcxu0LbA+ARY601hVcdR7xbT5ZOU1tqeK/FQ+uCsq1baniwWV
	 C30KJPRPCS27+CJurdFLpOCMuOo/A29hfry53suaQlgCJu5O8+iaq3rFlCr0x0Ysr7
	 fVfISf9lsbMvye0AKCp6jQL6jycxM5OLLC5q+sydb8ncJqGjiWKIjhAMg1JFc1kRnG
	 ADEaoPw6Rw8Nbfqs7SVWvp+2Ch76iltkz0T1xGg2iA2vgjPgFkicsmZoVMS9ZBzVLe
	 tb5lSaiRWwn0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF25D7977D
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176987603363.4226.501559599551985451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d605b4bf494f6b372dac79a2861f66a33a86f6b489fc3e9e74b34981886780bf
Date: Sat, 31 Jan 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769876033
