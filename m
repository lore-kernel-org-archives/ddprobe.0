Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7430D29B78D
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787617834; cv=none; b=F0nlU8TeHm2ib1V/lIhIXBbvkXERUY+dQkwCW8FLC8TWuwjz4oxgt94uJOduSo52dnymlB5n3oGgas0iNWRIhq41kh3wy1ERhrrS7+E2Qfdf5VK2flGRssPictYEh04Y738DI/6D7fTsYrUkwYRapiSlq5k0thd+sH3OkE6dYjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787617834; c=relaxed/simple;
	bh=k6wb/vTJ/G0Ns4W/oudSfyPoeD34HL6sGXlC3eRE60Y=;
	h=To:Subject:From:Message-Id:Date; b=dp9+/75fwyhDlhO/la5mB4w39Ee6EY5hs/LmBYrIm6zcwZR2O8PLI9QYa9C+hczbPufRZ7RdTp/9NzI3d/nizHZ538q3zt91M0dh92r/WgDA8hpzpt34UEoOrvFukuigKczPQQCQuZzpvmJ/R0BBnlteUQgyp9ObDqdktfG0OB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ttQ6uHX4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttQ6uHX4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8DE2C19425
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787617833;
	bh=k6wb/vTJ/G0Ns4W/oudSfyPoeD34HL6sGXlC3eRE60Y=;
	h=To:Subject:From:Date:From;
	b=ttQ6uHX4IaROrxyInoZKagBuIBaXUbgbJZxkv6Te5WunqlNK4cGgWjlA2o1ZTBWx6
	 tcFef6bQsqQHk4xpVVP6+y4wQTpzb5XOHc+KwtqElDfoj4qx90L950VoglrEWNRJKl
	 J8Jtsm6xuWOj5dQ5P6Se61qpu/slqKrn3KxOGdVrMezXUyzQ/g/NwSIlEC6gdnY6uU
	 hmwLShdiuS77rQnQGjc/GhbxBV6OPTLUp3tMRIgGvQa3nzQ+jJUUFKutjfyPD/5sJX
	 eVyTk3J9fwJ9eb7+lgUzZ37GHpmkV4b8Gcwn6pDfMWa1wM6fUL+0qim/AAJkBHm/ee
	 noBAtb0954eKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEA7C5DF9C
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178761783368.2048.14710624357984344757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdb9c336d1d692489ed96f8a317a303196aba42259e2400c719cc7a109b6f033
Date: Tue, 25 Aug 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787617833
