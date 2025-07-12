Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E41155C97
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752307194; cv=none; b=Xh6n6hef8UKWcJ8d+H7RPO3233SNr4igiXw115XoUYVvvOSImXL3CBH5vLjy8B/hlgQkI7Git6aCc5YGVcRKYk+By/KiCsfBlttqwVozRP482ytLi8+S1KJw8WcBP0pvCqowgSbqb6a+7fhfXdBqS8sMTLUVru4R3njr/05aPck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752307194; c=relaxed/simple;
	bh=Q+pmy9KLlftErGgesKxrBn7DjvYrmPcJRVh9LUSXKZg=;
	h=To:Subject:From:Message-Id:Date; b=ia5Mj69111Dvox0GcdpeVL1V1WHG/QIuJuo42/tfBL9VRinr+Lfar4s0BSLTClguMGHxqQ049+QqV2W4ekHO++wrkqsEQsWF8ffPEhMO0mFQnreAsFSX7htNE4SSjuS4ENlReyi8m+J8P/Qp7nIHPNVH4meNeDt7mNKmxPDDvYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EAUsYM0J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EAUsYM0J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4C4C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752307193;
	bh=Q+pmy9KLlftErGgesKxrBn7DjvYrmPcJRVh9LUSXKZg=;
	h=To:Subject:From:Date:From;
	b=EAUsYM0JVMPDjA0xHcVxIsWfTwzkIHJmka3c7LOZrrbvROo1ZvpqyTN1eDDdJwGJB
	 hvLxdBWfWzRrqaKgg2UsmQG2QoX4gW88IMHDz69kdVC7fWxqty/R3CjXSHBPiPk5Ug
	 WE+fO0dJYvuQYjOhwtBNKB0ntsauEOzkPKJ93vl/X+GFFt4Ha1xJKj9CoSWzMCciVs
	 8AnqjP6G/4OSCMYbMwkDSr4QIXUHcXw9PhxYs4GLdOtbpWyARXtJz9jWspbO/+/2Bw
	 TzYl16Z5acvzeaZFWV2FeloJaKIuI4vE7ba32uRJwIz2UEEUbBMiZLd3kS/elHRh1C
	 pLnddkbGHSeQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AFBC83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175230719358.23230.3855021250831021239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a087c2359eb3128bbc691fc5c8f59d33dc1e6088413ced2b2f3b93454b32e553
Date: Sat, 12 Jul 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752307193
