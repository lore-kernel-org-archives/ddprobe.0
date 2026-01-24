Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E23624B28
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769255634; cv=none; b=m8a48950y1JfazXS19eGDU/wouL5WHmd5XKJGbp6ACRH3Y1UkYpyl2J15fsAZ6R0nEM6XUTh3FU5qH8ZzGiriv6pY0SbMzA7vXGOHu+ye/V8ssJxSyi7WzOF6U9HWlQFXVJePhdZxk5/RB+lTEli245sY83/CjH4ImfzCpMh9BE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769255634; c=relaxed/simple;
	bh=sOYHDuXc+zz7BWVzAs4pmG7CGbINy6BjHElPEbmj1FA=;
	h=To:Subject:From:Message-Id:Date; b=id2qfzT6pPoC7iaHOHMpAZUC2yd+vHTtxHbTtQsHN84c3LdZh6F1c+uj9mXl66wGl8E3VCE1q9gxGLHS+tXdHdSAbdPWSQ77gPTdBXGhfGoYx9Y89JYwT5ZXswKA8WSuX75gsR3OQVZ/N8xIaZ7NqLnbtkdLaSe1ZmsLU+SIDU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S2e5ui4G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S2e5ui4G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB348C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769255633;
	bh=sOYHDuXc+zz7BWVzAs4pmG7CGbINy6BjHElPEbmj1FA=;
	h=To:Subject:From:Date:From;
	b=S2e5ui4GBO0nlcitdesHznuhcnQhagZAeCpnKaAMWPZ0vDgk9mm7DS+m9LfEziJwd
	 I9i1+En1kwCoU2+qP4Ga/o2SiDliDTLTeBUJ/slzIunl0jfDP9MbScohmjgVZcj1+e
	 6rS9ejfmYeGK89JFevGLlA2L8YJgwdeVaV/qmfVqOtFP0FZN+HC8JFCu555F2N9527
	 E7IsHxtIS+ZgnRXgkH1oEWzxrUoUr7u6BW8U6QHdVhxTFfS2ZhZzVYexdwHn9RIn6H
	 r8+w8wqZADzSjjUja2xU3SwcSxV/kxazHT+MTJHnEKfuDqzj1q7icPbBHSqr8YAv+k
	 EAzwFuw0R7sZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 989FCD715DB
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176925563359.24011.17272159256522020815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93b710e89fcdf95885e96bd9dc7a4132334a1d61ef677781e51407aa3ed89fb2
Date: Sat, 24 Jan 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769255633
