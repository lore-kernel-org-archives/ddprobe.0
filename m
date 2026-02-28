Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B54175A76
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 22:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772318094; cv=none; b=XFcfMBVcaYraUcdKQkpc+UaU9hR5/gJl/6K2WbQKjzfcsw7KeuNkod3I+IGbGqWs0Sls7JiE0Yvi1WHfrMqgb6ns9fDYWBgWOPVp4u/OlBtKqJtvyfKbbR3SV/WtADdbxsqMGjh/rMesbSeQpwH5NUSOMAnhbGHYPZksrixspKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772318094; c=relaxed/simple;
	bh=2X/T2eNhvsLgThaXNo+n1mDlwzSZ2ljKnGuoKQPOD6M=;
	h=To:Subject:From:Message-Id:Date; b=Ew7OZ+1DkAce7BjjwuAGJSpq6HjwXWVrT/ceP63S2MaiT23oZbADWBZlJbw4l5o0jU+LZh+mpnRHmnr1NAvWi5IKNU3WGQIOi5jepgL1BKgPTMs0LEr9ZiEQ9di5EWe4p2QUs19MmJPgaS1+bx7Z2/w3Cvkuot9fHjQh1lQ1MQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNLMlOb+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNLMlOb+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0EAC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772318093;
	bh=2X/T2eNhvsLgThaXNo+n1mDlwzSZ2ljKnGuoKQPOD6M=;
	h=To:Subject:From:Date:From;
	b=SNLMlOb+55HWlA9bCyKu/oJZH4Skzth86S5j4WTyPHkhQ8+a0KTpZmm/Euc0vOGAX
	 YU4XSA6t+MvyBB9jMAQLC8L4XWSvt7faTbH2WlOn41QPxw+0HKXTRjks2/Y9WwWkMo
	 NTbzEBHjQl5SUmi2G8S5jXAEMFm7ttZxHyEsSQXpV6rrVIDXIKXjlmXUQQE3CyTKvG
	 Nm+PYSa31DzaHCKCxHHZHQNZr5TFr5qV5rWhJiTTen/+MqsBZu0ISItnT5r2iSXJSb
	 Qz78m4hi6D0Tpn0wxPEU3S6Brsv8NPxUWHer/oZT57D3sZSxxjs/YKaQa2eUTGBPNf
	 NwVKaHEN6Dfew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EB77FD0040
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177231809362.20840.1973955124217706955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c98a5a6688e68af72e0d2eb6ddb486b52484ac473268606b476d49ab7b0f6ec
Date: Sat, 28 Feb 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772318093
