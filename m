Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AE118FC86
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745501994; cv=none; b=ebaNPiOmrDOdRU9UupWa1NfVb38pQGpa0Tuf+YkHMT7Wcb4wLb6hBSfYiZmOLCGroHQselnb1nyQH5UY9e7W1ljc6vkZUdN5bGnI6aSrE8TVg/LfsZhlnN5AnRgZFiArXX1Ut0vwZKqLspqH4Vp2tAhTDk0mCyNu1dCE853r7TA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745501994; c=relaxed/simple;
	bh=Aq0jR06Z5pF0XP3zuzAQ/yaqZD7kuarsXXyxFOkX7+w=;
	h=To:Subject:From:Message-Id:Date; b=LO7atlvshgsgGaKvhOKHRafrawm+NCvYiu84CCfROpZXE8gwxodfeXmQIjFxRzOCFtE6d9I4imbRhkoYCbIT5NBd5daKfFpaa9Y8tCGzOrQ1yNP1zSEGWUxkkChK8uq1SVJbwLg+ILqgU8iXDSIPqeIs+/aQTs75gnT/LCqLRKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aoC2Hmkh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aoC2Hmkh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E139C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745501993;
	bh=Aq0jR06Z5pF0XP3zuzAQ/yaqZD7kuarsXXyxFOkX7+w=;
	h=To:Subject:From:Date:From;
	b=aoC2HmkhiDhsVft5yahDd+d/X4+5NDob0wRj7TZ0AfppfrY/wQ0R/TY6YkUrQu+Dn
	 3KhDuCnbLDZUAs5OGMrzd7RIhHX15Dnfy6vpJqqf7p3EsRHn1fd+vWGJZw6K5byMEz
	 fxAXLTud8z7Kuigc3YeZG5hx+ytfVc2PJ1JVcFpudjorDoocv8vEuQYewKU9Oh5+u/
	 C00nHZTE8aagNz0AYoKkGFYiNeVe0+0Ud0st4HCCioa1iA9ZqqKi7V1HaayBtIwrzC
	 K1fMvz3hNNhBsJOUERZIC4aSRr6mf7/T25HFoa+JJIzj5U4If810c1klG0us3dRKJ7
	 cvdOo58c/iJtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDD6C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174550199357.29055.11773622254466554340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f325d3f9b60ea71f07dbcc4c76867648eefcb9e954e06b7f0d818e49ea359adc
Date: Thu, 24 Apr 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745501993
