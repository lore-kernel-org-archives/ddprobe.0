Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C33D6A333
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712578097; cv=none; b=hy/OkQ61tlGGWgiq+oX2FIOT+7XNIzw44uOOKcZZKFFKklzQ5K9ATagPfjXjaEgQFOLxTnBOMGGyDg+fAfTEJY+6pbA+znSTOBQiog9tZG33oQvw1C4vjJSTXEhtdWMDHHOLMjck+NohD49UlHHt2cPNP89RAE2nJEfjpYdGtk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712578097; c=relaxed/simple;
	bh=62l27roD7HmbhK3efXCkZ5MjmEbfCzzTe+X/9/Orm2k=;
	h=To:Subject:From:Message-Id:Date; b=pWtXLH9/4UdkzNxgGPRXIYovvVbsBuh1mpz4qVvn6y/YWW9zDqXvjKxDvin38/cT8olNCEDol5Szr5BdlecAkj157ZoE2H4/q653WWzRcHyWoExa+YA9JK6OQO0uYf4Etow+khtm+UAaKi7j3xp3YpjDmEsxBJP1YDZMbKjCfi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=piaUYsX4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="piaUYsX4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80069C433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712578096;
	bh=62l27roD7HmbhK3efXCkZ5MjmEbfCzzTe+X/9/Orm2k=;
	h=To:Subject:From:Date:From;
	b=piaUYsX4QaPkr9uiwcFD0xizsHkDiQEmqJT3NUObPLKzWee0QzxaK+fHw1MTwiBdr
	 o0kkyjCet5+6IYV70TZDo+T2GugbXQTzxX3anY0e2qQONsg/5idJnfk23XLZgSDTAi
	 ixEGDprv/Meayu3KBx0yBcY8M8gnswr6cFvWMz0xbqE/Di/8UNoQQPDO+688FlDQKA
	 KOKC7Hb/WU6StjZIknK8sYjJEibnUI1t+cHJRg3kMFxLmB1qvh530n4N4eX7EkJnrO
	 RhzNhG3KFaZGm2c4tx5R8Zna+cfZ554e25p7YewlW17F2lAVaYik8sHOHXeIgBTSP1
	 Ow1V5StJxJDJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AF3AC67861
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171257809642.11080.1783068536364386697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8adbc6dde1cf910a561b86ed4ce3266c58fc290a42ddfd7fd6acfec137c21abf
Date: Mon, 08 Apr 2024 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712578096
