Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C65916A95B
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753657194; cv=none; b=OyIc1OhmKhLm8S/XOPf86SSN8qrfMrFu0RxNG1O+ZXq4YRee5I0MGOMILOSGBO9oZvq050YHx5sOLXYrD78HnRUwQEFIuxODEmTf5MM2bgdK1cJoeubNHCz/MexKCIXgGVtTlVq1DY00teiZTHqxzqtEjQ/JZkc8v20G6OJhm3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753657194; c=relaxed/simple;
	bh=/JRXA3OZHCu2oJVaCRP16sTRHqycPj0g9pYzWEy4j8I=;
	h=To:Subject:From:Message-Id:Date; b=hKzWVjZrIB72UlvHwmHtEyGjlqlbdJfHAgTNIsN8/9naFk+5fRaOx9OmtjH+6nUdLWv+RQXq308ASfCt6D+7W3k42d/ItZvkX/QgVF+pmdAJsw9INdHwsoWSyP+v+PH0U9H4Vo9hB2Kp96zMCVcqTjTk5LYP8xMYsh4QFhdmlms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FKkkrs2R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FKkkrs2R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC105C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753657193;
	bh=/JRXA3OZHCu2oJVaCRP16sTRHqycPj0g9pYzWEy4j8I=;
	h=To:Subject:From:Date:From;
	b=FKkkrs2RQH95kkjixaMtukhQlTdDtOPBOOxlIPdMCLTA/DdG9wxiJgOP3u9ZBApGS
	 Dy2dOMSTnQ7utCjWgtZ2yRwUFfv3AwjV5iIpRLsXrkGW06UkuVMlRn5rkHw00YoqSa
	 XXCpGjRHO+VApOJWSsfqvWWMvwo93clQqHkeAlzyY9q1AR085ijA+DuZEA0uf/vmzW
	 JRcmvj+ZBHKuHjNCMER8CWfodkmLQXaRfqjVAdlz/mgV+gVsfHWOZG/K34JgE2cPLV
	 QKoDxBZ6b10gP0JcbfP7rSKzf7lNmeh4PeTgcNDq93N4JYXpKbtp6UKSla5rpzS8FR
	 oJ2lMZ03+Qj3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A169C87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175365719357.9180.10053623218716016726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65c604abc91160a888cf24d6d8bbc6b8a39be5d9f6bb3eb7707526d440f0cef3
Date: Sun, 27 Jul 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753657193
