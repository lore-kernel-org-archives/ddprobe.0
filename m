Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBBD15C14F
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771477494; cv=none; b=dAJZXAHOmHF6huZ2kz7QPelaV4wyKcIPArVuA/kz+oGYffEpV4K5L38kv+P1oXfPHRN9Q1hUdh8DzRsBYoVfyAL5TRyrk2Y42B6kTRugb8mZBicrRmkPgyjZjCeUOLxyYXcH2Us8FNt/FnabebSy8Qwd0tn/0qmMHlv8Z8+4Et4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771477494; c=relaxed/simple;
	bh=rGyxOu8iL4VfpSWKLwweZLTIx/+u3LUyXoRVg+a0rgE=;
	h=To:Subject:From:Message-Id:Date; b=Vl/jHkyoNAEKK96KBHMuFMYlX8Lf6rP2dc33Lftg4GVoySenWga4156URfbQuCumEuTfQsYYZ+3kqyYO6xCNhgJD4v2gM4okqD2nE/5sUhWGg6QpbJZ1L6eF5bxuhFDtLMaa3yP9MNKUOwR2IJjDO/+UccY2CopchWLX7D3c4Qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZfAeWIE5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZfAeWIE5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF9DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771477493;
	bh=rGyxOu8iL4VfpSWKLwweZLTIx/+u3LUyXoRVg+a0rgE=;
	h=To:Subject:From:Date:From;
	b=ZfAeWIE5GxYO1iCx5j51dbEMOz4SLzkHQfZEBq8gn7+ZaEmmlq1mjzpX6cMtMM7Qm
	 y3/w0TBSO3V9DbQDFverV8mCjW3fW2r3221AnIGTNxkknaGz5nVBh3m8rhUoHae+Is
	 egm7BdxudyG2SQekkJ6NqfZ+xcAzQcVAVmV0K2ZX7r5o5Pz2f9Xf8iFO7QTpMIwvlv
	 hEh73EZxM6ebuX5+c/yLkVlkC4H4Ko4HcLIYlbHiCosLHPZltu4VEd969dFt0FURrd
	 lzitXxxkuh+LTbPh+3lkXwFPs9n5Gs2B/w0XnNs2X61jTWFDU7CBS13WJZIRYmsAiJ
	 3Eubdu91wVnNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977E3E9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177147749361.6165.978007393568183171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63c363e49d3ed5db4fbcea31063ecc498784b45505f25ba6acbb9dd0a9ab6f21
Date: Thu, 19 Feb 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771477493
