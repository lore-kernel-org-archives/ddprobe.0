Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D1A13BAE3
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732607754; cv=none; b=LfhD8KYpTo2Ow5HMgLeQPmqBf3zXns2fvNFuYzOPq7BnJkxsuzsFcvWW/EssOj7b576zc5cwZAJcx51IiD1qC2l5QyPty4l8bBVjnSP5Cez35D0laHDsKmWvJgIftWZM6h4fPuqFtF1XU36JfY2hXS9eno5ym1vZZSE3UFve6Wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732607754; c=relaxed/simple;
	bh=9l0O2nyJZ3vxwZcEbm6a2bizr7+SZrZHzuACRDVgg3I=;
	h=To:Subject:From:Message-Id:Date; b=ZnYvE+KQ6YczDKislDdrCD2//U9DUUAVf2M+wQ4HIudAmsw0sirtRC23zfIeD7777nVeSiWO8pFHAPRkmwrOUyGLfm5iglYtqvZEQd+d5xpDuDxyMt30V0ZR6vfV6CLco4FOIdUWko6Cn4VIfdRQ7hlDsrarl9u1wskSTgkhcpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cBVD3r28; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cBVD3r28"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C9FC4CED0
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732607753;
	bh=9l0O2nyJZ3vxwZcEbm6a2bizr7+SZrZHzuACRDVgg3I=;
	h=To:Subject:From:Date:From;
	b=cBVD3r28/u2HgdOGHB0RQnUxlTdKveqRV6jWwKMwyyzWZDq6kjceL01RN3Q41fZGS
	 ZXn8vPdFSAFL+w3HRjLEnJRuzJWH+kPZGCKKGuNkn41SXInXGXtZpS5RAIr16K/r06
	 F4g1GzCUCXQ8okTszbjSXHw9DPLaKLEitg7P8+jKua9+MiIOFFc9/3u12RJz2VVI+I
	 5ytxGxIHCnsaP8XZhwse2NqexM61crFKlUExXkHzjOkb+Lg0HzEhfSdFuMozp1am/K
	 WMYf5e3mUGWPzCaEWO+5+JL089nRqFwIhe7HGMX8NQ1Qbz3N6dX+WxzaZKVSH6pYb2
	 3OFTWYicgKz/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993A7D5A6EE
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173260775361.3121.3083501818641127149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13e65107b7f72319c5b47f48713add0ee99712e3a79bc12152e65e53ed09daee
Date: Tue, 26 Nov 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732607753
