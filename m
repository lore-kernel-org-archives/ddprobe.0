Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF3A9454
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738934154; cv=none; b=fRt+veXkFdrZa00iE0858atrHYKjJnMaqFoXogEfhA8kEWw3kcFBrJPA02GX+FO/D2tJOSNGATMxXJn2NVVNQ8CJhtIft5rfuutCkK1cq5dDkUwL2zo75hX4KT94BCBqYYIVbhuLbCsEFhklZ+d9R4O1N8t6oOEx7+aXhehoFpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738934154; c=relaxed/simple;
	bh=vN6/Uk0XNI/fk5jz55OdDnjPeJb/ryYtOW0oY/q4DZ4=;
	h=To:Subject:From:Message-Id:Date; b=htdGu5PZJrMPfLRD8jrYiP3uw5Bh8HDlsmBs8Iqx/bUwxmTjZHuZHFuxRgdtc5t+SPXHnXDMfcK4uVDZ2gKJ8cGawSWMwAHfiBfUzy3jAHDpYskDslOW+FtsNCxtdMzudBy0bgAToBYFr0Z7AqKZAatSPAFBN7jxxPlrYECT7qY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YteO5Gyy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YteO5Gyy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5912C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738934153;
	bh=vN6/Uk0XNI/fk5jz55OdDnjPeJb/ryYtOW0oY/q4DZ4=;
	h=To:Subject:From:Date:From;
	b=YteO5GyyuZc+CJTSvv+TqPA0kEx7OEBxrBZ4EFguRCV+JbmTX9OazQnP5b3iaAO17
	 NBvcCLvydESWcgBLprjs7jwDdSbDCgYgH8/8QLu26/mae1wi1aYId12mSXCGYQqZB4
	 NUZqeNAu0Rq6wmI9p4/J2gPU5rQccjqd0EgTZT7skEMX/wE6SicmQH/LfiwaBFs9UO
	 qEk3ZYYAm+JnFbwq4bnJjTbFqP9afdURQ8GdjSDK6L9nGqMK8hSWeyd4XphT+Cf9cH
	 II2EuzRfEbuevMWDZR6O/+6ytLsn2xaiZAlpJ3v15UamIDi/zOY8I/Pr6cldrm3ej3
	 89x0tVCGkiLtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CDAC02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173893415360.17330.12896564185167328608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b180c767c78622afa87024b91cc9e29743362e0af8133961ca3333130e52f0a
Date: Fri, 07 Feb 2025 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738934153
