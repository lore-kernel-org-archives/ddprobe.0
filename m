Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68B4986341
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 10:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782039394; cv=none; b=a6F9DtD2W7N5ZsbKuAkUw4Iz7m2NzA2H9GlpY6jf+AAKC/B5njaG2i+M68rcs8rasYbRdwzqpJGDPaOgpiDDNEe1wYAdJ1A6ulPjuANJw7so/EztJg9w3GO55+tWcQeBfW6wVdu+IX2eKtYxtNJv2Gj7KtUOOunwQbiTKCk90ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782039394; c=relaxed/simple;
	bh=rbbRop5+avQSVIYsmMakJiO/mKQciH+x9+S5nQ2FKTQ=;
	h=To:Subject:From:Message-Id:Date; b=sg0BitB0rVzsMxvIBK+MLRmshZspMI3gkTdR5fraT3sgbP6vvjwtY+wvd7kKYDhBnajosM3XyBPLXuwofAW/z4AuPyINjdYexAG1ujUqBhTAq+HBGAG9fU+oatOn8q3wQyv7AuYczn8lzxuhBC4CrOiPzp8sXgP7unbFMF+XpyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IUOK+wFw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IUOK+wFw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3696C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 10:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782039393;
	bh=rbbRop5+avQSVIYsmMakJiO/mKQciH+x9+S5nQ2FKTQ=;
	h=To:Subject:From:Date:From;
	b=IUOK+wFweg2M0Elx61+X4XXrYx2qrchAEL2mF/af3pUSTKpaZMhiKyDjPLQQgGXEi
	 FWx88vsxz6+KsNlvN7U+YZk/lGeGxv3Y2whbwG4BZUz89aRYetAHGYgqj0wO+S9qEn
	 NvrzyusdJTKoq1lrBm5ezdJZwqqOrfkC2viUFm9/q4ffR/Oxhm6eaLFkyD7jyToEV/
	 99Wu2Zoo8QdEPg5a9EEPuTQP7vyvCnl07Izj6RPY7nOGHiLLlHXjJgv5rT3TSLaG26
	 X4Q3GRm6UH6ZL1WX7mIBQKl3wXuxZdhBNN7WvwUHcHf/3GL6Rk4x81+Eq18JHupjRN
	 FMwJMmF9LqciQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5163CD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 10:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178203939370.25456.13508121605632656943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95274d9a5b8e408a9b318d97c4c2c7b7a3dbcdf89e009e3e2543b7c7f7ec986b
Date: Sun, 21 Jun 2026 10:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782039393
