Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D976230BCC
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759833594; cv=none; b=VSy7odTwKW5qo8MJWXUG6ypiSnxkdtHruWbkjjhpdhWWfSFIgigCtHtMQot4yls5mp5jOFQunaE20czIOoAmR9kfu5u9TZVtnZpUMHj0lulzKcVeFH1M/FJg9eDtS+b/1kJ8jWhce3hucOTgjD+lNosBgaAwIOQp3FOtFTIMy0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759833594; c=relaxed/simple;
	bh=ntovCvSD8tQhgprckrMBKcCA1V9TczebHJUH6BHbQH4=;
	h=To:Subject:From:Message-Id:Date; b=pDji2DrUP7M4mZ1f0p5PhwEDilJphVJPQsnYDvwlZH5mjirNWBOg/J8+lFDV9UP8aMOEYKQIgDC/7bVVxOemN/IKdo70UKYJle8IX1pTJh/QHzOvKIR37iFYw8UxwaWIf6tam6Fkkwdn4mO7fLg3LyZ7jP5qVGF5oJ8mDEeioEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PC0GsGTM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PC0GsGTM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A840AC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759833593;
	bh=ntovCvSD8tQhgprckrMBKcCA1V9TczebHJUH6BHbQH4=;
	h=To:Subject:From:Date:From;
	b=PC0GsGTMJaPmVrtnLdR9s7S6nfqj/pulM2vVhG8RPPLwTWmKB5N2t/JbGuvsZV4OB
	 JWJYJDI9yMyILT2CiLhq6ghTWA/Ot6LT62pm0r3bi0e0uHnks8sR5mhJsZQFXaCSOM
	 U3DCOIzO24uoyfW4khWqo6Jpm4MsPj1BcOL8qmp+zmYwRtq7dJITkOVMMdkdotTb/8
	 4Q8gNqG4ODr2Jfit5XCs7TvHxtoMk3Vj7GE4Ng0QQAcPZX+0nJuvS7Pn68UAV6cQwE
	 bcxlafKo9Z7p4NvZB0MJc46JmiqR5ohUGqXJKrg5IZ5dA2eJEtHIJRjZT1MFxXdmOS
	 Jj97DVBLsl9KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9273ECCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175983359358.6964.8069844498396966778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d9cc5557462329e89872a70ba2847222577c0697868cb568f202b9fbd949af5
Date: Tue, 07 Oct 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759833593
