Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BC538DE1
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731800154; cv=none; b=SQj3b+457um2lF1K+X5iSpeGlloN8onvfyhsCPXrfPcdqEyzMFsSD/HvvyrZxvFkQOWTs+np3dLSxmcfdsGJwSQlQsIBpSAyEAHteQhnVqh5/+sXgsL67rUnSOHQKs7KxMSKD69WDZzWvovTKrCSAqJCsLyiu7lL1e28OwACEls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731800154; c=relaxed/simple;
	bh=tYOetpJN0uwZ0d+cPX95S7HFoc0uJvAsE7xIXrHgWtU=;
	h=To:Subject:From:Message-Id:Date; b=p7gckVwNqhDEPRMZ5dAzHZWAZD453xtLdapWCucS9/aAhMmn83KvPfQ4ApZFwUIXzS371fVNbWb27BxIFWfRv8cXjawYV/yg2WWd7b7JIGXUPx/hVrQ07UCF46QYjuKxF8h6bZGOSrpjTmJ5Wj6AtoLpJSQu3eY8bNECa/tdAHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bX72Lc2x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bX72Lc2x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F69C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731800153;
	bh=tYOetpJN0uwZ0d+cPX95S7HFoc0uJvAsE7xIXrHgWtU=;
	h=To:Subject:From:Date:From;
	b=bX72Lc2xQD1tGmwc6BO8uu7m1+umZGhSH3Fc8sbKL1lkKgUils/8i3E8SF1v0VSgr
	 LciP45DvnIJlTKkYywdLVDflRAalVCpNHCqXXSCGLti4E6R9lAR6VawZxcO26b47Q3
	 0hFNLQsStF5Cv8v0dVK2U+5g0PYnh1aHJj97rys9BCH1WmOAApYWKgvIwJWgZQ2dJf
	 77vQQhDhW/3f8ifK8N/bt5s2rh4IYKDxprHT9Csdv5oyH8gcm1mzK/hP0g7AdDXrKS
	 MneqO0v7sGuUgRAM9QG6aDXwtRcXHlDEtS3qFgpCEHsP+bCPBOfEYqdDfzq38Czx+Z
	 hIwXBb9l6+T+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B814D68BF6
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173180015361.10068.17195151423184085999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6504b5785cd6f7fb8e76322f9ed2f3690dbedcb149e8a626d7f5579facf1467
Date: Sat, 16 Nov 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731800153
