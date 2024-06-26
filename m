Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6181219309C
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 23:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719443603; cv=none; b=AkIOkmO0e3YcvMXpVbtwUlEWdL368vDblfxs51ObblEqB6PDm9hzy9yVdN4mQr1iPp2shlQDJQy7EVzmQwloIrKz+VtXcDZAXTVQZ/hroRjrPa6tjkiVDEuEE+qh75ttWztXu9er+pYYQAY/YztzX6+NzqiAsCUqXGhFJHLUy20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719443603; c=relaxed/simple;
	bh=Ygs8ZQq0XpGfP2ih9ML0sIqrgYg4wdwIwfvA5PGpEnY=;
	h=To:Subject:From:Message-Id:Date; b=FfHKyve17SniW2YnHyI9ZEKATOyR1TCKHqdH3IQJOnEZtWUtV7wk6mLNc9wCDeHtRIw2mtqD3KP/HGzXechiihdp/JG1MVf/+MLiByb/a6ivcpX6bHlDYVRj5GxE219GDbpOfkaCnPKMkxS1DJe4sY8goBXVYrJZwD4Yc5PKfas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HdbrVjtp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HdbrVjtp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9258C116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 23:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719443602;
	bh=Ygs8ZQq0XpGfP2ih9ML0sIqrgYg4wdwIwfvA5PGpEnY=;
	h=To:Subject:From:Date:From;
	b=HdbrVjtpEVNA1zvUshGEkqrROXkeIafCIMzHc13Jp9xhkaLZofXtvEyhz3peJEGI/
	 C4wydufBC4PU46drnAkCMvnG49YzFyspb0m+QhjvYV5GsgK/HFDUhyxko6Xx9SpHoX
	 6/Z2rNqBVUH9s90sHk9cOZ/fJof8Sx4AWB86pwWyJ/VDGi4mUJ3sn2mjt/wtXIhM/D
	 2OLalZWBMbEhjxvZRLO63nG8hMU5UXWqfByDqU+vaC6sk1Z3MgOKa3O7S0h5h+5yLk
	 3w82c9NcZbyflL6WP7672Oic0wOmwoYTcw9zNISugSNM3Szuv7Ol6e7ewhV5IG4bFs
	 EVmaVqOKYAYbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C62EAC27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 23:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171944360277.3110.18125165467778018574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53e0740f00851810c8d1f7aa765e885c54776a3c644f68cfd423eb29da53e602
Date: Wed, 26 Jun 2024 23:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719443602
