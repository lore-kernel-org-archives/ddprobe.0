Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415D7A47
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726933554; cv=none; b=Y6MEWVFbmZF0YYsRMrKj4qMqyl+jHKVF/wF795zpHs42YfhO08QHMEhrKWttFl3yMY5fSDAVDKhX8kdMdnawBaokgc5WLmHh2JWi5RkUszUMBnG6PlAALkk+uxAI5QaLqfgUdFoSCIVx6LE03IBnBSXY2+qBKA4Ub4Kbw0x1U4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726933554; c=relaxed/simple;
	bh=E68kU4CACQgJJTTW90Anc4xkZShMFgnAVMBfGPFThcA=;
	h=To:Subject:From:Message-Id:Date; b=LcqjNUFlhzu1lJvZ+W7f9mcO3XkC8KivsLEJwvdwJUjX9FJ4itWVcDPkNJdOu7Ji6LgAE9kkXEnQVulBgNgF42Gt+7wmtRNFFX7OEw1OOLKDBd0mHGARxB2xvyBiYS3a2M2nFL/MlWOzT14sN7qH3KbgSNRlfnz4m2BkhPk1z0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dai9ma8b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dai9ma8b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F17C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726933553;
	bh=E68kU4CACQgJJTTW90Anc4xkZShMFgnAVMBfGPFThcA=;
	h=To:Subject:From:Date:From;
	b=dai9ma8bvQdhKzTM2EaNn6EcaZRTnj9pGWxQXjKsS0PQSlyk54xfRlJvBXr+Oe4oL
	 eV/b2CXsPPH10LV4gYEoyv2Hf7Hmyaxgx8oR1mZwexnMmghqUIJU8jA/K0hI5TTT6r
	 CBDt6a6ub9y7vPRa1pirrmDnHpKWmYDA26vx4Al/LP27kIjdU0c+fbZiUgGy0y5P5s
	 D+98B2JXQd2j/GiOSowU6CFYf39lT+PnnNtEaJYhnCgXf8ULi3X8gJWgRlmEXXBtYO
	 +ggJxT5ofUKmgLbX1f8g24fDfs+kT9a9Mg2lnXGeJJ7NaArEfOznXye9KrTBCoZE+U
	 kr0dJr5H1aLXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFDBCF9C69
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172693355358.5979.7240062840726775070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 674f4c529cd5755b2473884bff5c9da22004bdb3ea11fa91ffc233a3964a1349
Date: Sat, 21 Sep 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726933553
