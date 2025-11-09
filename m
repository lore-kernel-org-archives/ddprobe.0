Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B7B16CD33
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762666794; cv=none; b=lOuAYENJjOviB2wAIk81/kIS8vvfrjr2t3IfIixGRG/qOFWQ1jW01X1hXrKiEqJBKN0lifclzH72zdfAC9tb6fPFaKQcJbWNnHZ1kpGz1KBOGn94XTdNurzTrTaVJu08tTAsAOs8LEXQXBtHMybGqNt7tlxzKb03SBAMGb60HZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762666794; c=relaxed/simple;
	bh=3GuZ0AdqJOeJlcdwVkWy/Lvdlvo/kA2mmoe1zNCCcuw=;
	h=To:Subject:From:Message-Id:Date; b=A4yI4P6hlaboieHiuX+gSPEHHMHZ7eQScWrEVHCscA4cnBqgJKlcuaXRNbWOx0YLdPHEKzSlUPMj/4nk94fQHmQdaxS1c+lmgvDiL8oc0JLJJC8ZSnPpEpUQIAGPc0+xXSWdCREaJRS9tHnu8RGaPudt8Tt0qGPlEqEBVqhWTSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AtxB/jzQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AtxB/jzQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C35D0C2BCC6
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762666793;
	bh=3GuZ0AdqJOeJlcdwVkWy/Lvdlvo/kA2mmoe1zNCCcuw=;
	h=To:Subject:From:Date:From;
	b=AtxB/jzQUDzT5N34OGwiU3gXD+gdqxFd/StnUgUnjpWN209Ln9AIb1g1NHtuqI3Mp
	 akn8OymetfWHW9fD3ZlIWWkUz4GGalAq6XEu9WH7JcgcJwBv/obm4zh+XdWzVQ4Nnq
	 ayXzV7L98kYhxziTs2iKKvnTP5ZARjm28i0PkhUB+TlCnCCN4jGQnsTt0fQhlM6adX
	 nsVBHhpUXpOWi603SBTVKBAPBguW4udeiOzX2FSd0UGrpG05E1nkUiTW/iP+REQm9Y
	 CnOywJvVia0hAxegxH7gZmVE3NiwqYwa8u4b2eA+0OSfRllCQePw9g6sRjAgsW6Gh2
	 OPD+ZcnCu9C1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0284CD129C
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176266679363.5299.12069406758961756786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61936dcf1bc83889c3955bf2d273020ab159327696a846dfe49a50a4f7c906db
Date: Sun, 09 Nov 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762666793
