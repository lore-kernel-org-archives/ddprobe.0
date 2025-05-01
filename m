Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475BE367
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746077994; cv=none; b=SYkDFkhElfJlth6WJXkYOJtWAdKmjld8LZPZTTJ9CPzxB/n5j0/h6ek2PDXs6jKJQen440/pHsxSrmaXcNmCwFDdogpRxsOURtQeVnQD1ycJO2qZTnT/6JHQpM3ZxeNf7gum2h2vrGH8GDd+Q7S7mw2XE9q3t2FilCmrXkvQNeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746077994; c=relaxed/simple;
	bh=IdtSGbeXOhPqGIY5VeuYP/HbyO7anc1xJEIc79G2J74=;
	h=To:Subject:From:Message-Id:Date; b=baPQQ/GlBCut3JNAfbC4oIsfcPZGMuw4HhDee1pGppyJg30oC6pocBFpfnrNe9WASLwX0JS9Aoy+tHb9XjFG6Yy8fcY0dx+EKEDfFF1KQbMkZUUcsGFBjf6LJrw3Cl25iVTSW0kv/WkihoQ3gMQJLxGAObKgLHWSYtnKl7DdUY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZLtwjwiP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZLtwjwiP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0354C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746077993;
	bh=IdtSGbeXOhPqGIY5VeuYP/HbyO7anc1xJEIc79G2J74=;
	h=To:Subject:From:Date:From;
	b=ZLtwjwiPaSZ+quKYDUVGSLJt8WLgNWSkQW1e7FzMQUfuLxGrfk99Aa8SnHyf6eFhQ
	 P2YMDE2xLIFT/9/QEd7ZNs0LK9O3P34QIQsuYx+oT77pwNIGnOwqZTrKwJTb4hg449
	 reILhxFsIlARfWJv81lXzGN4vN9QDCjBibRbu/1s3EDXi1PlIt3rziBqU3gOJeECQg
	 VtNqiEnuY9uT4xyVOnqaA2EmdH+25E05m3tgdvZ5rEq/TA5xv/Zl0rl1IUCMTZfJeV
	 CCB8/5/3pN4pb5xV5x/qL/f96tF/yrRXVG9YlXnOEiwn7tumYGIUXRqLz7Qex2hwJd
	 Y69QIPKviCncQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2A7C3ABA3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174607799357.7163.13250306942014006479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b27e613a25c89b3e93c09ca348f91e65e4838853ef655ce4d9ab00c3ac21ec5
Date: Thu, 01 May 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746077993
