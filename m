Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E67221F0A
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745489995; cv=none; b=LztZ1sf0ZdJP9tT02WAa658befkK7qbFxYsxqzKYevIFC2NOeSbMScWb9HWBA1S2bQSVDFBkn5jZge8jfqdQPi8QVHZCRTY1WbjwLuseEM8ePO0WyZ/hcbqkXL02gGQK/Jg6SU1clRoQcNyXx0dPseOWgvbbmieh0kxHDV5GtCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745489995; c=relaxed/simple;
	bh=IIzI6/JqfS+NJlZdQjVTXfPPItfKOwXsJt9NzTAoFfw=;
	h=To:Subject:From:Message-Id:Date; b=iGwrzC4GusZS/ndB5ol/RUhZpiIB5B5CfMtzHqx/kXlj//8ZQU7vRZCjKicTR61bofoPa5UEU133ZLaO03zRNOYAZlgg/AWP7K+1srTKAwNfXyGwPecv44OMFUrNykCJRNnNmXUAKZHLf6TFgqlVRh5DbuTQEBawVFFm7GG/3rQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hlO0NfpI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hlO0NfpI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE61C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745489993;
	bh=IIzI6/JqfS+NJlZdQjVTXfPPItfKOwXsJt9NzTAoFfw=;
	h=To:Subject:From:Date:From;
	b=hlO0NfpISXIbwsYoDm0coEWo1JQ7btRxvCbVTzH5wtbIsus7KXlk26xQUI3qgYLby
	 YnfGu228WKlxX6+EomscHG5CEy0YiEvDsIvAVyKHmQWLINj1495d45Zxy1SwjMC3LI
	 AeOCRLkjy//00J9w8s02e69sgr8fH7cxbtkA7i34S0BojgQGUZ9bO1fmVFsM8RkdcZ
	 gHMRxhxBkMLvlm81JWtuMdKfl1m1McrFHsyDLQl8ZU6Nr6Ko3XIwQ03m05DmYJ7f/U
	 q7+C+W2Dfvsu+wauvKJ5J6UtNUo2AeNNAFlcw6OR9JOPaK9B+a0Ij64Q/oZ4R0P6rW
	 JG0DeLRZwZxrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E46CC369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174548999357.10426.8303743543111810737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f8c0c4d70a8be0c01005894228334c531910c9e7172d310294c29c00bd391f8
Date: Thu, 24 Apr 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745489993
