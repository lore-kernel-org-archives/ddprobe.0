Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D792E06ED
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788832234; cv=none; b=k1TfgbE5UxvE8r2+96FoR2lQbsqyz7psHHQJiKmBt3RhLLMjuUNTqxFq978fHZ0IHPZO+022XMP1LgO0W8jjsfHnkGMYWn4XbQubQQGpBHGhRnbG9Qj6PrtMcL1XJ7wreyFULHpv9LcyQrb8W1IbAyav/tHDZtSaoJUmOEtkKYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788832234; c=relaxed/simple;
	bh=Iv1uF4C81w2Py391WENIBYGMTtOeGgaMJenqh1yKebQ=;
	h=To:Subject:From:Message-Id:Date; b=Ji6iJ0ZNC2hP362q8rhKoGOGu8M8kpXXNtefKE5i+/a7ejIhpilkfy0AZ7d7isvliKE31CZ/nBLmoMDBZov7U2NyOvVh8eBBNwrfzaZtMHnRJziO9xRvegsp9p6FKsaVQQ3WUbfQE9cOQuACyDZ1QWRq3WhVzMerElUNH6TPtSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jc7MhnyH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jc7MhnyH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAAD9C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788832233;
	bh=Iv1uF4C81w2Py391WENIBYGMTtOeGgaMJenqh1yKebQ=;
	h=To:Subject:From:Date:From;
	b=Jc7MhnyHEbmru2mmGIqX7GurNaGBm3XvYWzU1rgZ2dbUEEAmlEvjxxwO3zJVu0QID
	 Jcuuu1Uh7GfG2J4qD9G8Fhvi6CNzEi7dWJdiuM9Xip87pWtq4qEMENDDKt/8552JL7
	 BMZQOkKb/S9a4HlqJ2JNQMEg3t49oBjjnf+Vbs38x0ujYsSEVLtKZJH85vgOgECy4i
	 TuBlAPQa3pl9bDjgpX2FAulLJR1iztmEtvn669uF3oc0aQM63IjbyQL9ohG9VnYfek
	 3Ed49ZOyfUbYExPY3Kx3HchTnKa/2lCsmTrgF2C3nBO451ibE2aFAvyxf9DN/dsOOt
	 6iYJkljUguazw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF555C79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178883223370.850.15864353250757872227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56623420ad7ebdb10a19feabb815cadce48744bd82b345130fda8e881efab577
Date: Tue, 08 Sep 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788832233
