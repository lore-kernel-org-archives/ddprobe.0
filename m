Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE452F616A
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771861494; cv=none; b=bghtzG8Gfogak0qKINnxgjFCwj0DZIAmb3wQFbLzO1gw2R6FyoYnNOO7pni/7q5B3er7Yr0jW7fF2YClD9cHg+SwC1/ExYaoPqn8mc9hcyAcR/kTLO5rJP51f7Nv73KlOs84h8NPXwCpKlwFKXEkFKe9YVbGbK0Lu41SPJg1EKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771861494; c=relaxed/simple;
	bh=UbHyhqPk+OmkNTLXm5Cedp70eYdayCItW5xx3TZOgMk=;
	h=To:Subject:From:Message-Id:Date; b=iCz4HlQt2wKBuVDoky3jgYJCPDTTOpQrpa+3ZqbQQYJI1L4BAcG1XBBJQvW6jaML6TCUhRLtacebi6dnVjqt8UytABtn5txo2x3/pzjlaOj7eFW0MwybvLaQSIgVnQtEpLMXILI/Qg60g11xsJqd30d7hteo6ZMOoy6pre7FaWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rsfAfO4N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rsfAfO4N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FBAC19423
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771861493;
	bh=UbHyhqPk+OmkNTLXm5Cedp70eYdayCItW5xx3TZOgMk=;
	h=To:Subject:From:Date:From;
	b=rsfAfO4N9SgdsomDpZp2oAI96Lz4pccMksJUJKsnM/GVO7aSZ1e71bVMfUNIIM42p
	 olEkM2c/kozZqyhdaGfctuDF/ZsUGoiJ9LwfVpizNfucLKSqg7qAXAXbH9yaPqjKfN
	 3tbVSmRHTY/f3KpQsN1vGi6NUB4Cgc8ukl8ga0dmyXuwFktZFs0Z3stHfCOjAPXAg2
	 OE0Z22h0lwnLvnTTvgmSEYchK66ZH/VXzDRhknpWUsIlOMNblFGelTaDdJq0vJICED
	 KHmPQ/i0+saSqEA4w3I1clCyxbuJ1XWQ0/95CTE852Kq1KlDebr4H8cFxn6AlFxCFP
	 ldmxmWEf9qrKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CC0E98DE6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177186149358.13261.3262331775992489180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2ff3130dfd111399f985105c20f149aa47b4fcad38c75fc040b22b3b5938045
Date: Mon, 23 Feb 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771861493
