Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B74A428463
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786380034; cv=none; b=hFFnNQOI4nryhqMoLMOI+7V3FfL5KymmyAJSKTmPnIuOIehiib0bhRnWJTxk9U7VmLA9ExTBNj3iDOn6vZHl2lYVu3Ycf9I8rN0v5NgKlF2YNNYpKUhnEil4lRmwNajJ0MkSUqHJKkjlCe2jBroc07bcxJe7QS274ZnwXwcgIkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786380034; c=relaxed/simple;
	bh=8CwUiLisYRJMjBw43bi/INHyoZQAwSJA5c9OUXoBAtw=;
	h=To:Subject:From:Message-Id:Date; b=NcJxlflAMIopmmJim+QYKNtp3esFpAENdtn3yuYnwwOxhyjMYcVG8AfoVtI0Vbzd3QB6bMISLOQsQuxO2+dnSxo7fDovD6nLFXs5G6k7doN5RDx8Uuz1mn4b4nQ3vX3kpkTN/qO20jlrg1jolVaIafcdPObM+ENWHxGB3HVPKqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZJ5FbRb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZJ5FbRb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF739C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786380033;
	bh=8CwUiLisYRJMjBw43bi/INHyoZQAwSJA5c9OUXoBAtw=;
	h=To:Subject:From:Date:From;
	b=jZJ5FbRbu3qPs/d/v7qacNuzQiBsrdkEHPbEx0da7mQBXTOGqizTN1l8QiD8lotFA
	 KmTO/wFDdRuv+0igUU6Lyf37E4/XjzUzCpgtCzY0WNB09bpsEoUlrqeDQgI++3D5bK
	 BSI5/I7oMwR7+Z4KZwH13xUTO1oXYMRIouWc04cq4fLf8WZznnY+egkJawMcVIfEoC
	 cSsnXNiHvYvbI2+cTsxblXoNrt1zktgP+3vETF9NX8DjiS8NOsT8TBup1IHwaSqzEd
	 2bnkjdTtzCmPi9CVeIWY0lvw5sHPRofgTgWLF2NNgLbgK6NRc5bgJt1LlNHd99bDxY
	 bBj04dZWYRQ2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC09AC5B56A
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178638003369.1247.15483906646263234414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 405eec08f00d6e959e7c98c5c1ae92b92f4e27b6492f6b4465f4f8aafee944e4
Date: Mon, 10 Aug 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786380033
