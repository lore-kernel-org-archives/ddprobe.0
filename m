Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6F2A3EBF10
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770982493; cv=none; b=Stl+e1BhasygqZyspIViABKnEbGwMVKye1xuCI9UjugE21gWLzrj49OmAQ3vQB0Y38W2+LP9FyYN/RaxY35PiWhkB6uQ0S/vU8GhS0WAN1ImKsWAdTUkUYjJ8/x/QbuZUnhNWIRMM0BK9e+dABZbu3YGoDg8o1zK3FJrq1+4RIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770982493; c=relaxed/simple;
	bh=ZD8onBKLopQnJ//eVYQJeMebzWWaByS4VnB9cAmqb70=;
	h=To:Subject:From:Message-Id:Date; b=tJpGxsKxQLSDkt9iAOG5Ou+hZNko7c4i9GQHYkGTPx/wav87owu4OwZlPlqcuTN29xlmfyCPimjHevjF0xdnObtECzQ4gDhIW+CSILopYQ097XVQIbOXCkyWYOoxH/pLmFHPmGi0wU+fkvQMy4NrLmB37MYQ2Vaod+deoeb4Ado=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HQ2JVzLq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HQ2JVzLq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E19C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770982493;
	bh=ZD8onBKLopQnJ//eVYQJeMebzWWaByS4VnB9cAmqb70=;
	h=To:Subject:From:Date:From;
	b=HQ2JVzLqunyLMfMffzkL6BsfE0poYEsecHdHwWDI3BpcHrusjMY5OlPM0gy39zK8Q
	 sbuibAobHBfoPbu4bEe7rJQb8QGyUxyX95Os5j/+yIRXWZX1eG2H7cLJMko5Iv5T3N
	 cFArMUEhNroF6KRgMA0A3f2Lds+oz7Hto7x3rr9vTbnBa4chr2irouA1BiRy/m/k7Z
	 uU4SIiWdzP+ju36RCb6zBTgo2UbCaks02biE2g/MBGCz7MVbJj975kx/75Je/Ibl0+
	 WgT9Qhd49q6YX7pAj2hznIGlibU3M2xJm6F75Glujmn5ecuGb3VqG9ztGAkw2dFBZV
	 3OP/8stFrivFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929CFEDF150
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177098249359.902.9261524972908533679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30048c9cf5d063b79e62af600e10ca1d2cd079dd74664fbd69a9d836abda9632
Date: Fri, 13 Feb 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770982493
