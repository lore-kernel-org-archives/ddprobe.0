Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085A31DB95E
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763162994; cv=none; b=FrCidx/qBPLnaoWLSMeUJrFgg67vtBU7dCU5mOqWQen7bQkWwQ5RoZgU1Fzd3RyVYMst7rFsZpJZludZpsX0vQ91hCjU3EdM6MFq2GPeviyEJ9TlEOMgQ5C/pbmAjpXIhkKYiOcvEVrAAH9Uy8oJaZ965+e8KiDwiuDlpTcFLf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763162994; c=relaxed/simple;
	bh=RCxK+tdfjhLzb91bZOPLs+FEUbgU/G3lJvlMWjoCLXc=;
	h=To:Subject:From:Message-Id:Date; b=Ym7Y69kWC8sW4Nr02Ba6pTJ4wGOlPyEhRY8dgGC8NdngplrboCJLGzQuQL0cZ+qugXVoGx1/gmzXAGSgenNh6mATWPyxBHUuaLNZN0QYQquNIdWYryYnixY5kQvD7N7Otpp9uhXaDwYM9bGyh3TxMsourr25h3nmfqi7NKSWAeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PEDjTEnr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PEDjTEnr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE2D0C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763162993;
	bh=RCxK+tdfjhLzb91bZOPLs+FEUbgU/G3lJvlMWjoCLXc=;
	h=To:Subject:From:Date:From;
	b=PEDjTEnrrGKhVfzt4oXtigAnU/yAAOlmhJCT+ySMyAMxRkD4wI7horYnHlSOqBfWk
	 FBTnKV6rD7VNgZ/84m7eGnO96x0VTHnGRerjkO52ZIX1jbnuGYVwBkEvorfF2R7tb0
	 50qlCx21HFeqmClln3TqOygt2Do9q3KvjCxsXTs+CYMRawGPOVfF88CbjUfU1fB8S+
	 HzKNlpjWhXvjIYgScsnYWTnFmkSC50EemnBbvaBvM69dDhOcYpUDiz1oR17iN3yEhK
	 hz+J2hAdWaZmq+rMGFpAxn1mabsmxqAUWa4vxmVIgX6nzrRf6rlrXY6YO9EXIB0lwN
	 QrsYiTmG5Q+nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F77BCEACEF
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176316299364.11437.2186490845210033096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caa74b4f3aa494021e39bc09b725949024c7735536ed6875cae33c189f98d315
Date: Fri, 14 Nov 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763162993
