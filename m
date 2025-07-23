Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C36A2DEA68
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753268994; cv=none; b=qYXSYhuGZK2jH+WJwqueVpzcxq/Q7CJVXDX8zC2VVMpJQhvH0CklmBSGSuWb58qDBOP0Es0WzbB7nZRGTuYNEtMrvB0SVGmc+0xSsIViqpMbrt1RTNSvUF1lZX1GjtnLKsIp2KuW/Tx7xmrhdACVe5ooC7E44JotoiF3JP1OSr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753268994; c=relaxed/simple;
	bh=N49vugPoNfuBj/FF6ItBMNuM6RgbON7MPQbOGnWjK8A=;
	h=To:Subject:From:Message-Id:Date; b=mIJmrrKOtXiQ9Uy/Y2caKxe6Lq2bH5Em+Nw1IHxUTlqMoQsde0A1EHsH6YF29IB7lmgBiUvbQRER+rY7jKMPGJmua9Obsv04FNVmAjrBKmyu8T/SJ+H9qom57IxNdXdYsq6VxyVUPoVWZM2JFuo7B0Uf4ZJJ+tK7r6lOLl+rey4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYJCzRhx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYJCzRhx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0965C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753268993;
	bh=N49vugPoNfuBj/FF6ItBMNuM6RgbON7MPQbOGnWjK8A=;
	h=To:Subject:From:Date:From;
	b=aYJCzRhxyOEW6+/5EQmBBPZIfH15adPWtRyB2WGpIQ1QTIP5moW084PENMg0Z9a8p
	 5HeFqBqyhfkYU9VLBb4s3HDK2WaMNbjqL/FkKA6tfu7af/baitZls6GvO5YdY6cHqx
	 eudZR72Xb2gnFD3E2FidDDzbwCAFt6Vg8aa/YO8+HivNt7+ZXqXlINVzwB3/HfZaDc
	 qO32TN/T3tXrfpO2DYGO4YyIdnXLJS86T6tUn6zf0fNl/++WR+aN53NPLv6I2I14O+
	 ZhdIq7w41kYPYpOYlBaNbnZjGhJ3LdnmLiH7Ha2vuUhFUqt+pRV9irZGIlCstcej1Z
	 CM9q/+Neh5aZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F578C83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175326899357.26709.14381787818159967877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59506fb33a07b2571318a9805718a277e61f665f153c91f82e8feb34ff0e6118
Date: Wed, 23 Jul 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753268993
