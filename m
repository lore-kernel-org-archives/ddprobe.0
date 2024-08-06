Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 076BB165EE2
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 08:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722933955; cv=none; b=lJzT4kcX4aeNe9J1KtFf5s4w2gKdVjxjiK0CoK5ucKOGMmkZFFlB30+Ck62GRChfuKilPvsZ/kc7leZNhAqAK266xb3n6seWCxnYDid2Iv0HGU5LbUsBGacS95eSNmCMjTMFThdkvsZlQXgh7Q2B/k0lLVqhwXNd7wt8QKEVsUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722933955; c=relaxed/simple;
	bh=mbji77uTHJGBTpMGtupl+JbD91Zn/DWelcBBx2lcEao=;
	h=To:Subject:From:Message-Id:Date; b=kFvEIhKRTXv5ekf7dJrlulx/q3zbI8/hWNmqEcJ1GyvcdEnCUDzMtVw1YszxQSRwLrukD2zPQE/TZ9Lf816nHI4qGSSmxbzEPkFz6tS3Q9LfAjjr8wCTytch5TpFLqUSJPQCzb8mIW2tDu/MmYb36hW1STMWom4YfHQzcRXflj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uPne8ls7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uPne8ls7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D8FC32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722933954;
	bh=mbji77uTHJGBTpMGtupl+JbD91Zn/DWelcBBx2lcEao=;
	h=To:Subject:From:Date:From;
	b=uPne8ls7iYyIH0qBOcFOFz29fRkII47LZduWaGKZ2+f7r8L0E2PTrbA25zWTTOTKt
	 Yw/erdAyOODyYEZ7pHxhUXEXDb3N/921LgwiNfTtr0QIE5V7cDGdZpZK/5NoAP4dXh
	 16l/9mMBdOg17UlBYN9qXKOFGx0QDhfwwcXNOeGoJwvkszfuMh3jrj9k5oCj2Elu+a
	 Kq1a9Dhq0S3Gc2rYlUQbbJjIrX5yRybiAXbVfBIVXZaeVG1Qih8QCEsEbRdsGoIFwp
	 1CWFGsH2nQ329WuJeVg+JyJLfDVAeAKat43u2tbdaAUvw2njQZmO1RN67kvq6tcGC6
	 BN7qFl/Lhwuxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926C2C52D6D
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172293395358.18765.9697345270227790864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3882c12b1296851696c7024ed06f35d6671c7605a62be7c35c031649756b23f
Date: Tue, 06 Aug 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722933953
