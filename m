Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3361722A81F
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744016394; cv=none; b=EdAYfEwlB95d9dRzP8MK5UwyDd9AHHekmyRWHN+ViWa8efnCrpEpBkpmSAJOOBqp3c63UZOOx+YddT8DGK4RMvmUoHbb/KkYnKlrQJGm0X0lD0Hp78nYZkEMRfDxIjFI0vds3OKOSxSuxZlKXY9FPOVUIcJWpBCZHi1+lMv+7O0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744016394; c=relaxed/simple;
	bh=zsfKUsw6ghAtOOHxKDnapke3Z6Qsft3TxT/JcGpMhCM=;
	h=To:Subject:From:Message-Id:Date; b=oYXKA0uH0IEQn2ULwZ5MqxvtBSfkBInNIcU+8hjthlCtNUB+j/OAqvLZ6wpzu5CERLf6ZA3PeQhb9McQl+JWou2YYY6zkik+tl5PYhHxgbRe7cUJLoYVv7dq1UnJRP8/wNzAWu1ejXFM8XK77UkCGZP0zdJREvYOCTR9B1e1V3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NofRHMGa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NofRHMGa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6D9C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744016393;
	bh=zsfKUsw6ghAtOOHxKDnapke3Z6Qsft3TxT/JcGpMhCM=;
	h=To:Subject:From:Date:From;
	b=NofRHMGaSxUBZMPDS/POR7A/03S/r9x4ow8ditvM2aniZ64okFecQ00Vf0KVVw2g/
	 D4O2ng2S5TFQcws2uOADJEbAqP69dKO2zuGcGn2pjb+8wTM4BTYvQ6am4sNcNovdgF
	 AsahxP2+lOZ1d48dsNjWC9r8zTdszjEsgJ54yBLc+HBY9INrCMEUFULpaSjwwxe14w
	 L7iWdqEqw5M0kZUGJhzUHkVhN75p0oIUi5EO4Wg1qQejEEn1VF+TZKVkLKJfeBSE9X
	 g0Eu9WVtJABBuUw5a7E6crCn9DqNtRBd2Waxen0gtosXfiUGOJUbM3MZdGzQUODxeF
	 SC46HmELbTCcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B71CC36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174401639362.10910.17682190697560334722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37c38b102d7a1c3db4d85254f9ac4d7a0b9b14d470e0117fc9db65636157d1af
Date: Mon, 07 Apr 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744016393
