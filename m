Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277DE329363
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771536294; cv=none; b=aPWQ3CreRyPXrqpntgvm1ZOW39BMyIkoB9jm+Tet/NIe+hKfTd76KSWmcXV6AMWwrC/9ihRD1Iiqkt5vfIZCB2gQ4WFBSFeW+CzunxcRmu/v8cIAKYiG9AM2KEqxlMI1JZCQI830b/0+rQq+nCKtB+yu1d8lAXPhflCeL7iozc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771536294; c=relaxed/simple;
	bh=fs9gvZ2v6Uf+ovRwl4hJP3d6M+PBQRSERFbwG+xdYgY=;
	h=To:Subject:From:Message-Id:Date; b=fN7z5nEG3b4BAdrtWb7Db/565xiZMG2HyD+0IB32aoWWnJyryvy+O/idu1aKObpKTtavncJlwSoxIRuyEMZMqzB8d4RoXOx8938ZsixGh5jXfZeg9YY7s+UqeJeLrv5oZyN3ozO8hnv3sHQZqbTlkSTahsWEMMDbFhbDVFqeWJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eCAiRkST; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eCAiRkST"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B26A0C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771536293;
	bh=fs9gvZ2v6Uf+ovRwl4hJP3d6M+PBQRSERFbwG+xdYgY=;
	h=To:Subject:From:Date:From;
	b=eCAiRkSTkaPoByoA3V+KvW0JfYYqzVV0ETSifhg/xVROqoyLzm94OkNRPcjaqF79B
	 aXym/3rJ1Wq/uVW9L+lAkMFkrEzH9UVs/wr4S8jyq4mim3XMFuz4fmto+y35UEnyi7
	 RzdAjCb4FaevjVwpw6iGDsjUUfFZng8DEMbfeF6iVijbvS6WKqloRAgt2mUdoxwKUI
	 UGtw4tfBUuVJeXTRsH506aRXSoqtUphWvxhd9dEf5+7J4pX+oJ5NomBpG4V4hC3txz
	 KgMBWYY+EcLU2moxBk2gXK67qjsWfwqKlpq7r/qCkTm6psciw/0S5JQkvJe9NKN8am
	 AyYuyFcirq3sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A48FC531D0
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177153629361.7550.14164048880508084211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 462aa5e85a30ed595e4ad8de2cb5a8cac8fb9efce7ff3ceedcd955c2ad35f2dc
Date: Thu, 19 Feb 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771536293
