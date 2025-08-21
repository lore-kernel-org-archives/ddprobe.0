Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F182D5A16
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755776994; cv=none; b=B2D/WjuYlpuNZEUD6iRlbZ21Jlab2VHLwFzu+bohE5ug1afkrAOC/xjNeb33LH2Nv4y1VhGKNEJBGItf+NfmnZIozf8zjz2AtEogFsiF2j9We4Z3w9bCLK7Pfe39c2OA2ZZkjnCwOKBENPcR3EHLN5QwrV/TLqE50NReE+8w9Go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755776994; c=relaxed/simple;
	bh=JdkKKOWhyOtpT4yMWPwXWG5sQ2/1TBbDPB8RBn4T6sQ=;
	h=To:Subject:From:Message-Id:Date; b=KvdY4jMkbxeB48rBj5UBMhwtzqgjL/U3cZXUpZB+jXzTcb8KQyQnWGCoHKUDSsH+50P8qoJdmiClzX/ranqsIhO/OUU0b8CAOW4L6gUdDNe2tTsClWBz7vnvq+mnUlaviqdsFTPIEsbXO3tOuElmsej83SAiuHm7pQZZdx3Xz4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vrkjmoom; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vrkjmoom"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C64CC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755776993;
	bh=JdkKKOWhyOtpT4yMWPwXWG5sQ2/1TBbDPB8RBn4T6sQ=;
	h=To:Subject:From:Date:From;
	b=Vrkjmoomjz9BV5xry/LkrgFzn7kbg6bYhCSYHPcpF3lQfElc6lrt35mKCxD//Vyxn
	 qvJPRYcm+vwiUJRvapxO9v+SR1CXAHeWuJ8L9w9TPAvH165OpbcgNnmsc5zcLkuN3s
	 4KRXvXc0OTxn1UowwfLcbI38HMIzfWe0lBKymANf29WYZAc1ro7Ljgdbb5/BqkdaKB
	 BEkIblRwTWSl4mU22SOw5JrABnP+bG0MQ+5BChE/RT5fS6Xq3K2CmoSOHBNLB3q9Ro
	 PUubUdcPOgjvdcj+4U8uxWzyufJH6p3BUBu7GvHCvwULstx85dmwtgbqwc0WghATTh
	 Zcn3gKVcu1XOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDFCCA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175577699357.9547.14655156594044480806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e02344e498813e71e5b931e986019bd0dfe3576b9cfa95d74c3c2f0e0620a979
Date: Thu, 21 Aug 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755776993
