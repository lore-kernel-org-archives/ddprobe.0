Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6312C1E49F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 13:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719753863; cv=none; b=BeMub39Qng7K7vnDLfQ4HQ8iZy0ITXPosPbsVqYeL+0GUnkUkYK9CcOBBzdSbiJ96XT6TF1SlheF4KgzaMZx/dLxP9+PmRHch69gg3khu16rUyBghFS1DEqENSEnPL3U4Zxjm39PQXSG69ORoTRu4t1S2MoAh8FBTkdPDeN3CiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719753863; c=relaxed/simple;
	bh=2QVJynBAdf9TGVQ3he7p8XWeHHY7+oXYy5C+RRuYVTc=;
	h=To:Subject:From:Message-Id:Date; b=uy8dDX9YIzZLkm1bPliQA8l1WpoBiyjwl7FbtmP5ntNIY516npfkitswMEmrVdOZ6y8CzCoqvLoAElWkGMlUlkJwH+f5IZ71+pG8v2JQiOzfXXFfZZ5LQyKDHBvw9bjTo3Y9Zg1EteB+vHb+NNQoXbRTdQAwvMjy7Qt1KrTpoYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lHraNu1M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lHraNu1M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E60E2C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 13:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719753862;
	bh=2QVJynBAdf9TGVQ3he7p8XWeHHY7+oXYy5C+RRuYVTc=;
	h=To:Subject:From:Date:From;
	b=lHraNu1MVjud98Ju9nBe9ftpTM0jVSKHREaPBwqJHJLdY2ZnXpaopdDqqW9R8OEu+
	 GxDqh8BNBduBXAzYpVfsgs86JCWLG+Xd9s/YSJCD/cfUQknx+VI2OKdgWp06x2YOYO
	 f3HLEKH0sQq1EQcG8fRhdCppr03FwnfMZDPAsNqhLSa/5VkKDCHM4VIJejJmOUxxns
	 xCSZna/PwdglGKL/wNkebLYA8EyjA0TQAIYIQ/4Rmm60a1R3W68wM10dOD4DDtGhNU
	 kmv4EjVyQMCdqj8V+fOxJd9Q+nxDL7TF7+7FOBe6NJVSoKZWeAKbsa4/I0bdA3hDRi
	 UP7rix6r1e1Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD03BC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 13:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171975386279.24134.7843308093615893924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61ea08837c7d7cf2fb8b89369b7e2aa81f32f89ddeac49fd09203b6fcb874e99
Date: Sun, 30 Jun 2024 13:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719753862
