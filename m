Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7AA220F2F
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757091594; cv=none; b=E0SR9dF/4pWJc3OvWDW9NKm/BclEvVWP23gB03pyUN+dsTcXBO+0XudHdwg3aePy5zbHopcjAdt/ofhBkOnNY+LDNXLcd9BeqU2NW8XsiJZ5ncBfT+x4UDjV2FTtQQoeVNiOOXpx3W0sBPN7MzCTkzvMYshBdSS2whAGRn1g5G4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757091594; c=relaxed/simple;
	bh=sV/LZYtdBAmVMAw4PMt0ujh60tnmkjyElKhEXCBYR6U=;
	h=To:Subject:From:Message-Id:Date; b=mV/MPI48MoDxLetAyh8SSDqm9rqiB11fXBG1cofHRXrFHef9UmWQobm1uwmiYoRe/iq4am4PbUw1MRdCQvsJ9kcVPKF2AOdfMvtB4taa4R3m22b2r7cqzQh/Oi3JOsP+8bELZjKDxFVAx5fziqz5gPVAwxMoSAx8HfeAOigQiUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pNDovClr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pNDovClr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B88DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757091593;
	bh=sV/LZYtdBAmVMAw4PMt0ujh60tnmkjyElKhEXCBYR6U=;
	h=To:Subject:From:Date:From;
	b=pNDovClrFZHeOiRfPuHb9nrwzi1PYz3tCPAQMEZn3s+2uAa3o0ZuuHXMsmv+2LdzR
	 cdKZn7CXA/YlNkQ1uRHDsr8C+TfIdlOUdxftdW5KQbnKQpCs8+HS8uXkWY/T4VrxIW
	 6OS+MpvXCszmt3mN8IIw3732ygKT/F3JkEfU5XThKoqv0ZffSmEwHN4RYnYOLYyDW5
	 ILX3tjxru0dWsnrkwz5Ebfwh414dkeuZ3zkBotZRr75OCDiHOVfJfaO37F5sTZAxJ9
	 /sNO2xMwBweTH95211UgvXcLpZtqRt8wH7xQTnHBwoYjFSSuHt7J6OXzxby60bs1Ln
	 5Ucp2hKfy2qZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED37CA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175709159357.21870.10832178007819507193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4daff9400fa5e12199500b93f7ac48dc38b4e9fb4b220c3d4cb370872bb66adc
Date: Fri, 05 Sep 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757091593
