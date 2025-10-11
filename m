Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2036418A921
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760201394; cv=none; b=CAEPFA46WBQ+aCGVwLNRKpA6rx3tLm8TXOA63tfvOYM0Dy3IE/9LrtV/zXVkOKdsazAP1x83irZiixyupAdziJrjAnFWt9eWvKI5+Bt3XgRXXnLujRjycW1DqJD5bCIkmox522PEdc2Q4fJ92BCcQBqrVbQlvWg23PkDC2XNZ98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760201394; c=relaxed/simple;
	bh=gzsxIb3mdYzIBltVtUZTvDWfjl1BozQNppkOjpjocZg=;
	h=To:Subject:From:Message-Id:Date; b=MSnPVBYoDqL6F7ghAeUdZ2Vg3HIqWMM6JLByX2NSnYuqdtY8nWQMXVHnvTqTdrZ0nYiGq5oCU0rFVXF9zjtzWmXpIVgUpTNPbYa8XzpI6BmCcZKzi4Is2Xi3wY9gktb1RG/+8X9zlqWN4p16ig2RuLE9nZzChlfXNcbhTDfdLCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MVTy0ArK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MVTy0ArK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A651BC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760201393;
	bh=gzsxIb3mdYzIBltVtUZTvDWfjl1BozQNppkOjpjocZg=;
	h=To:Subject:From:Date:From;
	b=MVTy0ArK7EyHTzqKPhC+dVenoZn9tD9ljLnBC0IWk0OVTS8qWgUxKlh16ID56ZrgV
	 XNkvEJhltXlU4BuOhXCf1Y9sjQGspIeeyv3UZ1J3fhH305cHfYstE6LXgfPmgAuw5E
	 9vk/EthW714xf8zKcc+uZVu08OCXqDHko2lO+IPrl++YAiuiByiq/lXl5kPJaUFugN
	 xuHNYZ44s0EuTvTy9KvOXgcd9oOa6Iw/8RuFRTQnFDFt1fIMwo27qC80j+0vguu6n6
	 fxTd9Zr7F7PySJuR1A7I7YiBZDH04T9k9wFq4sbtKx+QMbfVwkSA9Iqc51nlI0O/O7
	 TdclLgOSyk3bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9404DCCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176020139357.11152.13718877979928119416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8b6065a9bea64d78ea594453f6446818291647f87aab311500de29465533afd
Date: Sat, 11 Oct 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760201393
