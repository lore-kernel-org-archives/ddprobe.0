Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5947814E2ED
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 09:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715074343; cv=none; b=IbxETZE8ndTOdZRwofDKgGzTMNFjKqkdObF4EHnozdudGeld699oJxo/3eTAFXxdPn1UGvuJ6GLU3A4kiuXle+ggkq4NIQbj9VaC5133zy+ieId0UeDAPjwJEGULvS8MG5LPRY+/DHfysZMtGTFtS0Swk1dW/q9J24wgfDhxS28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715074343; c=relaxed/simple;
	bh=4skD7n4LQpgjPTn3sIwewkRcl3Eysezn+zUJFDKURFc=;
	h=To:Subject:From:Message-Id:Date; b=SXIY9BUeK6KNzOXp6Fl0BDOnxwRfPNr5NoEwUBmL+8M9QVked0lRSIVrHzfiHUzxpEJnh5/RVpVafts0xfbeXduc9LX7aCkysBowVUP9Fq+4I0aIkWSVYT9oVJVl8UAsS814bMgfDgaeYXcUGBgv6s356t24rJm2foAH7q1xvYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPSIf/Zr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPSIf/Zr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D80CEC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 09:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715074342;
	bh=4skD7n4LQpgjPTn3sIwewkRcl3Eysezn+zUJFDKURFc=;
	h=To:Subject:From:Date:From;
	b=NPSIf/ZrQQ5kraShGZARDfgFjIxyre8WpOlK6ZNHSgsoYN7HyxZSN/ZgVdaHM+V79
	 8MTCB3jXMC7vGvoYG4w9osqnN4uG1avS60mcwUFuP/m159XTXFurus1c//lVJwbGdb
	 BFL0kI5R6qM+Hwy1yFGhq1WV4+HdDlWp6UI/PW+UFuqW62kL4tqrrbPyX2e/CoMzK8
	 62J8MvckfhBaOOin6IpORMeY9b5elWmqU/Rs8aUU5YQOktkOubDJRPsQdnmweDtqsn
	 vQiRJyFdwEAXd0wnaALJXi2A6v51NVNgE7CzJDE27yAyxBZEPP7S0Ms8Vme2YCOj5C
	 lJrzsqEXOSC1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3232C10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 09:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171507434279.20520.6630709789958707732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65316e11212702dfb55689b7da7aef3d3f00bd4f201a372c3b1da6c3b00562c9
Date: Tue, 07 May 2024 09:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715074342
