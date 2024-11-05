Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258C7BE4E
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730814354; cv=none; b=Do8CN3IY3dFW40O1aeYFgU+CszqDoE0/37MLcAXtaBjY0sHECqi8KLq9+DpvAR75gKrN9EE38HkI2hYnXLFcZ9WqaJGy6yIxi67044YZ3PCAL+q2zdSN2+c28N7ZsEhIle2jwei91a3/oaiM/aVZJpW+F+Yy2EA6RTQgOThlcAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730814354; c=relaxed/simple;
	bh=Xf4i4ZVcmr21+z923FreVPp0Zr4Qgzcwoi2GXWyLuvI=;
	h=To:Subject:From:Message-Id:Date; b=lFE9W3qtULTBFmRtEv8sZaizOlti4qbnseI7i2nXJkN1kWi7ldrlsRVa/N9tUfREOROLWkEXDt/Sr8yKl/wzKhoeFCeD3z1trsH8y6ZJneouHlgCVHouNWZJ1lQg2HX4kEcD4PvC7FsdO71xlTp31gVfDVSw8TQU0/4w0VDLyMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oz+ilDm+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oz+ilDm+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB486C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730814353;
	bh=Xf4i4ZVcmr21+z923FreVPp0Zr4Qgzcwoi2GXWyLuvI=;
	h=To:Subject:From:Date:From;
	b=Oz+ilDm+58AWA4E/DkmiKuGbtjkraLlo5PfMzJ22sjJoKt2HOjPhhOpTIRms/MuOy
	 nsADPAkN0I8XZEA1SNQxnUQkR0ZhdAwvdCNoIrH/8z6wI/IYZ4vDefVu/gcW+UqT6o
	 3NRSb9+fN9MLLrQLw4l9DTEK58bP91zDh+g9ezBAPflijJKyBRWX1JdtCxHu/+F3tc
	 sojJhth4KJPBX/vqJ6M00eA55WMQgqsn3efDIBLEhEPpHs22YmKzL9EzqN8gfrkcX2
	 ivMLGrj2VxJ5fAbWVDkpmOVOiEp55hY4D8OQ79SiN6TLlaZMjMqKg7QphzW+Npc4of
	 OGGxGvisgYbWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A58ED2B92B
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173081435362.5305.17017340423294758093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfdf56e11bae83b0f56aa01fd681c98686134da88455d5afe7fd49146acc4242
Date: Tue, 05 Nov 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730814353
