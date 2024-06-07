Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3681527BC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 20:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717792043; cv=none; b=DbfVgDBjfmqte0qupwOZN5P8qw7+INmOv5Cj4uu0eIAu9Lfd1z4DJt2ZL5KWoHBvooZXYxXE+hZPWsd7RT7mbaKuFaGBQEa9t1pAVYpGrdy3kvGKGb4mRAUHJnEtHFoYdQGD8FyavgfpGCsaaPSTTkfqPDFTYy5sqTdjOENikA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717792043; c=relaxed/simple;
	bh=m+fpr+BMxvzusDQGxgWMcCGd2SRQwN76QPYli2BnYB4=;
	h=To:Subject:From:Message-Id:Date; b=mi0XJ80WIokN04Die2iW92ax2FUKU3Fza94TwLWCWYye7AVABGtoC+flz8pGjM81qQ4l0mYoKqhpJjg+84zP4yl/wE2djnqga2JBj52bJYB18q9sSVRy311M3e3tP9yS6H6bDDFWbimC+AEeOllevQIPrqVJ0aVE/fuOuMTFeK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pLZQnUOr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pLZQnUOr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1840C32781
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 20:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717792042;
	bh=m+fpr+BMxvzusDQGxgWMcCGd2SRQwN76QPYli2BnYB4=;
	h=To:Subject:From:Date:From;
	b=pLZQnUOrkc2RqzB3Ep91IUN+3ImiGq1iNQCrwP8EfA1e3np6DtC2c6qIRZUrjPARg
	 Owg0cG+Uh2+xNVvWDBQim/pqDarYHQ6vf20KgWap4LXB4a7VN8RBhK+5C9ScBY7QEz
	 KQ7pSrBDxc/nQBO+W+Hpn0sOemZ5Rxo+cJCLi6SmGfqkPCbN2gsdhOsvmJJiorsOVN
	 KqImUPUsA3F6IwiBk99F3nQ4zs5kljRHGxUHhSbz+zbds5ywwg5WsTJtmK18gkih1L
	 PTR5HAhmdQg8vI0O7pPHA384Z+xF0k2mRW4+nL1Sl1udQjSAwMyhisaeI1f0HfbcDs
	 cm6hpYU12kZnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE1BBC27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 20:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171779204277.17771.17933407038758335620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a366784481cc4869e82dabc0a096540f019d9e7af639cb280ab6fd79b45b2c99
Date: Fri, 07 Jun 2024 20:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717792042
