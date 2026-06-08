Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170E7223DE9
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 05:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780896874; cv=none; b=UcnmN/O6UBrg80mpL90pm6QXeNKGD5W+TXUzA6Z9L4bfk2WMBuIOisHXdBftBPBGdNbKrp2rYrnp2HRJ/NBDz/8uyBj5hn23LGM2vzu3jASuNAPR8NlajVV9rex5k15yRY8KvoiZJswbCy9k6ZOPxpQd9uuPRO/nlNQlPufUC9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780896874; c=relaxed/simple;
	bh=ljJV/Q0BdyFk/pMLSzrC/T41X3Zj2rv8NNaBKWd5oT4=;
	h=To:Subject:From:Message-Id:Date; b=a4sN/1UOXdU9M1KP1wqFrpFPtyXLQABECWHpXF2wnOZnLT8hiIVh3wFU9dkZ7oEZsnMSuwia9RMSkjYVnGi5eiCS6BmI3fJ2QW7BKPJhXuzntofqHKCs2q7qfwEP+COExvYVKqHGQ7vv1HFw9osutCsdWFFrJNOib+ckADpXCyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJ/5BNaU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJ/5BNaU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9563C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 05:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780896873;
	bh=ljJV/Q0BdyFk/pMLSzrC/T41X3Zj2rv8NNaBKWd5oT4=;
	h=To:Subject:From:Date:From;
	b=eJ/5BNaUHUx57Bjbj8acogNf+01pURY0EAW0G37DoUy/lkDwcHTSQCpgjnaw2LlpZ
	 XQSMSvJKUJXpPxeeqduWXF1URxT2HHwhIHnvLfLDqi+QNz7gYC5/b5QnJWiiIB5abU
	 dzV6oKAFac2ntcgtlqncox2zxhdH3e75sD3pZvzJ1EIrHUex4tSaaclwzTT/xe+cd+
	 21A85QIHGdAl/go6ZrvLl3wq1TAheVNjCyU9n7G0nOrZ14yWvbiXK1HCKxIMwroW2D
	 alx8BBddfBui4wGzz67zxTdlR6qLf9genDv5fiU65wklGwG2Pqwjib0irG7xw73Ijr
	 xKHY4kRkggCUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1038CD8C8E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 05:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178089687371.20159.12577081878242152039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21f5dda53c35fceb32e88968286a14c66b865086fc050ec729a935a738ec87d2
Date: Mon, 08 Jun 2026 05:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780896873
