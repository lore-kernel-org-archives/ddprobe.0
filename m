Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14860500948
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768080234; cv=none; b=j7mOTb3UrvBrqcSg9LPJUtXVoREZBkH14loRDnFZw2cs0ZSyWP/d+yyB+pFNst0/Q//yoE78ZHrlkZAPXxVGeacF11QVffBW5fFJ7yLT0nz3yKs+VcBGrTC/Axm76YQTj9nbB6LP9vensCUTXsB9Jb4PS3WFKP/Q0ySEz6OCyRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768080234; c=relaxed/simple;
	bh=HmMgZpAF3a/w2BrZ4qdeGmomMYP9bEemqi8RoTn/sBU=;
	h=To:Subject:From:Message-Id:Date; b=AejbAvESRiEl9mWUtjVNFGYX1DZ7gfCbb3gGlZ2QJiJtzZUbTkSZ37xXoT7XVhgnJDEjWAldSUkJG3o+dotePseG9c6jspWuI0w72wphUEvLBD+jM5lIAxqZ/aSzVY7/gZuG9zxljMjHilko7dHEFj1fdHcFOMljdvExvlpcEEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uI95/6ev; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uI95/6ev"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD00C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768080233;
	bh=HmMgZpAF3a/w2BrZ4qdeGmomMYP9bEemqi8RoTn/sBU=;
	h=To:Subject:From:Date:From;
	b=uI95/6evz/tKTD2e+9pHAIKCu+zQB49D5T9D/pJgvoufEGoKpJAadsXImJQnQw7JX
	 qGk8MPMe6YCiI4qyizSAGfZLhojNapDchMKYYmavrumrpVgUst1S5FYaQkg19SVabj
	 NqYQuPjhXNnX2pXH37RmoQ6JQpNZohd0SV9Std9m1xUrE2M8fUIiYYO3Mv/laFf3CH
	 Z8LRY5a0iC310EuvShAkgyiyOZnHD8M4o6/87PCQgrLToOXtx416vVLogrkaRuD5ss
	 xlroIRZ1HIEmezql4iXt574nVAo+CcpXZwJeH1cRZeGLtYiO3XuYmiyxyguYRPHYxx
	 vYa8P3jL1ozkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F84BD25022
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176808023357.8922.8236859500880969711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 312be8a6ffa1dbd83e270fb85cc18ba5dff24b3c4e6d3ff7b1568d0d20ff211b
Date: Sat, 10 Jan 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768080233
