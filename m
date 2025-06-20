Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245692D1907
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750433994; cv=none; b=iEp04LwJNXJEOEwnuun5JmGbWs2bA3AtqYLjH0/klDbS/3T3McD6ePfoiV2I5WSKrwjbtmLiL/mUCSY8kwgvj85Nlkb9hibIGdRT7sjVush4+UEpGh254SpoK9Y5i/2LRH01lCaby5fqukWjkhHQ/NM3razFP6vgc7LBg/7eW1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750433994; c=relaxed/simple;
	bh=eOfaDsZScQvVB4Xdrb/vNxUwzTBCYTimwcoxIzV8/5s=;
	h=To:Subject:From:Message-Id:Date; b=s8Ir6a4/dZ+xabrXiIMYKEp8jpCVEWut1A+zue8aN0RGnC8OPVRWAvPx2kvoo+vhFxz+7l2SOj3hX2+/6KPfSValJhxkowsp5xzS4QBUz5xHt+K/RNuNJvmMZYw7in4452vM+lXJMrjGL2R9BNBRB3mXLfcooS7Dy3FJKVNRjWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qdPL7ncy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qdPL7ncy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D962C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750433993;
	bh=eOfaDsZScQvVB4Xdrb/vNxUwzTBCYTimwcoxIzV8/5s=;
	h=To:Subject:From:Date:From;
	b=qdPL7ncy9V6N9bj02nK38xhlDc/1hrkppFNptoJorIn9RiJ/ilBLuth7Scp4QE9eT
	 v8FWkuZXDqtkVuvLpXePhfUYzq25KHDWWs9+zs1Fj/bJEtZCJkcvIChOh1VD/c+g7b
	 w74Tugrnqi1P9kt9+lOfE8d/Ou5y4eMBqZgGnvLwQYCVEytnr2d6z09UnAO5zbbV1d
	 jDUxzkpHYkkorE7HELvqJjxxSjV/TvivAOVkO1sbA3eJrEfZG1PX+pr+yrjsR12iaf
	 7Tn5VVoMzkq1y3PCf0zZ4rOhaRx3k/qPClSi4oRul9VQ6FEMmvUFVMzaMArbdwMwS1
	 BlWi1GDQlrItg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE1FC71155
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175043399357.2581.6972221371848648183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9768d516d1f0c559b0825e63f4da584bccd19e4c51b5172a4392b251fa2bf6f6
Date: Fri, 20 Jun 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750433993
