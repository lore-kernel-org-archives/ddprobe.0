Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE332D6409
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 09:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776676054; cv=none; b=UKgsRdZHu7lLOggSrDDN/Q4wUWtWcdiUzg7ny/5B96JxMB+G7HX+PpIkpddNkwDFI+hwoMB5HmDebtJ4j0M/1mPvNKX/CIYiLyZRSQULI4kteef+srbdcCxdVWKCO3J5HMTzwI4Bu6FS08I2xMDepxNIw2Bfu84PSfHd8S2q86g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776676054; c=relaxed/simple;
	bh=v9UwrudoEwYBTlxWN3Yo7HWex/HXILiFWdaLFnkA6yk=;
	h=To:Subject:From:Message-Id:Date; b=qFkWOrnW5A2+v/EyZWiqkXegee/F08ctuRnQkoM81RLt9u8das3lBirHcV7CohEazeQEymisNDYArFbGXKfskyEC6bviWo3AWqnh8psgSufsXkcnhjt32NpDvAZtwtnq/kGbYdcCas+6S2h33pqgMK6UOL3dgxjwfYzKWcsGl4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S4PC1PMr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S4PC1PMr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2075C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 09:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776676053;
	bh=v9UwrudoEwYBTlxWN3Yo7HWex/HXILiFWdaLFnkA6yk=;
	h=To:Subject:From:Date:From;
	b=S4PC1PMr2diX7VzqdNV1jYS7wIqe0zs8+vg3Dd0C5EMEM6/cArsMKp507Si+Zq0Lb
	 27hPTrhIGFaQd/KD9X/P89vW13CiOcbS+01ahddNAHUEoHpwm7lqcyB93+wgDWkSAc
	 34xl7JAR0SjYUCENHlsF3TuraHBD9NFi+3M5gqaB4AT2tV1nbBAvH8lW/BsTim6YKp
	 aZjEq7cj1WnWmKFqxmgGrwpnt4zN1DGXgaO48gn7ut8f1/T05pMwoBDIMr49lYzosE
	 Xr9j4pYTD81X+Jt6FlPdby5x4MCkC98f6XgcFKhBm8gRA6BF536TC/61CqwHxAta7n
	 8ElNt1ERVl+iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B98A5F557E9
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 09:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177667605373.9253.3671494849577572332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a5e449c72f944956a18ddd6d3d26002e297ad9327bd954df14aad62196f7215
Date: Mon, 20 Apr 2026 09:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776676053
