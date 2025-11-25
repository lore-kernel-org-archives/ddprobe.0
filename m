Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FAA1315D43
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 11:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764071574; cv=none; b=KiaDcyw9/Vm9Utq65mD3MXDGV7NOeIzXNwd5T/RifBNMfsiLyhPv6JblEH5r7qNsDjkssTfFdJxAv4mHEM80LjA1B4VhPAoN0OdovvEXVTZe9hyDhRmMnJOc6fLspzu2N/5FExN3VCswi/FqIyn+rQy4q6fqYQjS0Kv//MNYJ1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764071574; c=relaxed/simple;
	bh=/rYQdDP2Bhikh7s5kiUoy52BMeBL+dnIdN+gXo1kZr0=;
	h=To:Subject:From:Message-Id:Date; b=nrbFQidfZ+xR39/hFZ/yNIVqKwzqvwuklycIZnjqeqNcgfXTYNWX1aHFp+E5ARFpCQAvvFP20pRKdMvu/ZJb175aKjcGT1+e2AqiJwjxdj2bN1xionF+LWlC2t5lb1mqGzZRjLnXbJtCGQicYVP//KDNucYmyjC7auBjFb6+X3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQkVEmkf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQkVEmkf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA781C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 11:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764071573;
	bh=/rYQdDP2Bhikh7s5kiUoy52BMeBL+dnIdN+gXo1kZr0=;
	h=To:Subject:From:Date:From;
	b=nQkVEmkfKC6lMrj9gFw+a/KJ7l5H99IARlJqL4lrHmaaNAFyT3SDgYOkH4VetD4cQ
	 0rjWB1sUVIzPqWR23NWOcb/lbmjwzPjkZaWPdZ64/PNHe1pSiJQ3MRJF8F12Mk5qQS
	 FwJSHvzdLmpCGuamQYDk1a3lCe5FlKmHYNIptdAjHZFuXtjKT3DdQSS8hKFV19FKE8
	 tf0YWM4LKT98aEX5OF4fizvhXhWa7eavKPZDGLFYCv/zlZgIy1cphEVC0c8TyGCpDc
	 HiF2kYM4iH4H6gvZxiEjPuF31K+cA/o9UBIDXEe3RzGwlEOGBeyCwg2FVvfspXQF+F
	 EAAo7HB9J0VyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DE2D0E6C4
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 11:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176407157360.10354.8715653545131090433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54717aaf720a88f2b9d940e2a22dce97a276280c080a3a6af7aa7014c16b91ea
Date: Tue, 25 Nov 2025 11:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764071573
