Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AA783FEC
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 21:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717882043; cv=none; b=b1NHPm3m2AkCjVT6nxXWp8bdJtPjbFSbY3LtJAtBswkV0RnqKD8qn6W1WjpwcAHmthqzU98KQdqfjblE2mrzeKtgOmVt2B1nLUZdjAwxP5Y/gmr+WopGWH9nqhs6WxCjr6/7O6erN7YI6jyTQw0NEM+h3vRJUP0uAsUaPzOnlSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717882043; c=relaxed/simple;
	bh=iazDh+W3cokNNGE7Fw3S+YnKBFZ8OWAZ8EUQ9LYj2cE=;
	h=To:Subject:From:Message-Id:Date; b=pU4eWEjjT2PiWgZayvPomWXxGopwAJuBilgyR2NZqXJodHMgBu9dcf0J/I06P3r7nnjO3qPMfXISKFB6sOYIiqeSw/Gb79BZWoM43laDXDU6K8SOZq2FnKaUSBYDc/iyRf4ToTJVXuWJwgU7z/SFGs+qp10THJ9Sn2kBlegGJk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KmF7gsZ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KmF7gsZ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D227FC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 21:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717882042;
	bh=iazDh+W3cokNNGE7Fw3S+YnKBFZ8OWAZ8EUQ9LYj2cE=;
	h=To:Subject:From:Date:From;
	b=KmF7gsZ05j+ytdn9OlUx8JPTu1/MAKrFeS0qLA7ttY/L04OCltNGfnlft8w8Jn4id
	 eUdk9izKRrJkasOaDnZM0pLzUHBl0hRDzO+TXUCrjYMuYpnp4jQpOmKt4mSQtTAAUz
	 bTq6PwQ6dR4j1LUX/f/M8fl6nVHsxpABKvnWaZKDZFLh55BRp3P//Ld20k6DFwXA7t
	 l547EkddqmbH7+0SuDcxaaSLdF2uPNz40xjwW1uxBKEwOLos7T0BgRPprOdg/kNbCt
	 qOtjWCoVYLKWngsRmd0CmfIeztysjaIqq48Si0d8LXyLWc7gyypUjFyEvefO0e7hZS
	 9J1AOAvR1Agcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C086EC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 21:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171788204275.8829.10717087346957963490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c8e8d13dcd70ab630376bbf23442aac8a483b826647a4c59aff5acd0966632f
Date: Sat, 08 Jun 2024 21:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717882042
