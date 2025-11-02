Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B1B17A2EA
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762087794; cv=none; b=CfW4niMRuKzGbKhzZHLJ7q14Ac2OMUbRmg7Q/tdRlFXTqhX8qAQ8O8VVIiuuG8dKiI4IfNcyoe8RYsOF396BcVBJd3fNWAOVpZ2onk+xCt15FA4CmyGfCYyjssbazUZXvIiZBK+QejiugrvrwKVABxMj1x59VKiH5G8AdRdFmEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762087794; c=relaxed/simple;
	bh=rBn5iJrNCibaAiAkRY6nkimEibJIBJ3P6XtKhJhZJZY=;
	h=To:Subject:From:Message-Id:Date; b=TdCxaLbcGcBnQqy9bG6KtAwq4/2URYrq7KoBB+J+Iemlkp1xb4rad60nIBvPpCNnJwt6K25foMPmTcZU+YqiBrqoRDKqtuBakD7Q7ndvwbkiym9kJwz0c9giSpDvw8xTM6zgyaN2+s1TpLrzSk1CYddJoReb7rVjRpFbJR5qhrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnX8d/yD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnX8d/yD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C330FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762087793;
	bh=rBn5iJrNCibaAiAkRY6nkimEibJIBJ3P6XtKhJhZJZY=;
	h=To:Subject:From:Date:From;
	b=VnX8d/yDXcOjU7zOLwDHperPRFKFdsoXP8ewn4ctUv4qos8xCKpPZhIa9HLXz6aSR
	 4oIXAQ6mj00JNFYK5u5AlT5H7zdeKqjRmOmDwzQzTW9luDFfz6//C+EVhNhPMZE4KD
	 UFz6UxsUuIUCJohb1WIKmhiHCXAqmC7k3GSOHn1FEkxj0KRr4BNGWZp81KVPX8QfGj
	 cWIwAVFat1w9W2dZIZ3OZpbZsBJtSwX5jVVo74WnjJ6Ro9oUwFhP75KBceGwn5oMT3
	 AgnWpH7ZdH/+KylXaaGO3fadT6PnLjXuVtgWCrXIbhOdGQg4O6YRYTtQAPVXwyFrcp
	 yuwzYRP3Zofnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC853CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176208779365.29855.14026828855163410456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c83364e8529f93ed87402957da0e57de4d21796748f60ab61259925f99648f52
Date: Sun, 02 Nov 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762087793
