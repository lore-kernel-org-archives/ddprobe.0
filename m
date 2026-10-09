Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF5F2C08CF
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791537634; cv=none; b=qlQtxJ/L3o7jOySVjDbxJMiXjseCvs/soVQVrY6+WwSnAgGWs4wpaXTnOE3L5MxOB/fL0wZ2hJxBtAva3MX9a+dflNYnecLuxmkotTy8J0cL6zo1k1RLiX0BnJiRyKReUdRS1Xlgjc2MA3TN9I+WxS2ygpjr5gmEWVUfsPMcmMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791537634; c=relaxed/simple;
	bh=LHYNosakB54ewfP1IMnVQTVnw9gdksTjTf3roXY1UbA=;
	h=To:Subject:From:Message-Id:Date; b=rqsk9ETqHTnfDbJUnhjLVA/c5OWIJhEi/Dx2J++D0GWrOeE89w00GIaMKvqWbJgNtBaut0CgfS5ANoch6ghjTuJywRlFoX7LIZFE8voTDwAsUysCdx6Di4QMCoxHBUuk4ouAlRRV5ctqg93FP4o25sVvnox4YmvRBpHN9AWJqaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jX+r6+7O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jX+r6+7O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE18C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791537633;
	bh=LHYNosakB54ewfP1IMnVQTVnw9gdksTjTf3roXY1UbA=;
	h=To:Subject:From:Date:From;
	b=jX+r6+7OpOQAIhRVrCZCKdtcifePFaymyzzGW2DgsJlRZ2uF6JUw4W4/Htc+rnAzg
	 sjO++w6Ld36wKaa+LrRGPvXxoqw7Dp7U1B7PX+t7JaksuywvpK/PG5UTzvNOM9uAkA
	 jfRJqc847+QIKfgGEaFitW5kEZdwpvV5PIRKEh7s79+FXzhCXBYPbFxNolFznJJGsP
	 98qe1bkWzA1t+ekGn3Up+BFRin0lT33GxGntRbmAH3XTQgqeQzunbZ+b0+Nq4VuVaa
	 9zjVgi1OiqmIB3EsJvT48PAxC4qLsfFyANug7Ao7LY0rqhhs7wLJZi+Qot6UMGToqw
	 tF5kJi1ESEgvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC392CA5FED
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179153763369.2424.3649117439086421274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea6fa72934d9de8aa0166293ee74520957643c97afc027e3b9d3878fa658588b
Date: Fri, 09 Oct 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791537633
